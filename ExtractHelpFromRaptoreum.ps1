# ============================================================
# ExtractHelpFromRaptoreum.ps1
# Format cible : https://github.com/Raptor3um/learn-raptoreum
# ============================================================

$CLI       = "C:\Program Files\RaptoreumCore\daemon\raptoreum-cli.exe"
$OutputDir = "C:\temp\extract"

$NL        = [Environment]::NewLine
$TICK3     = [char]96 + [char]96 + [char]96
$EMPTY_ROW = "|  |  |  |  |  |  |"

# ── Attente daemon ──────────────────────────────────────────

function Wait-Daemon {
    Write-Host "[WAIT] Attente que le daemon soit pret..." -ForegroundColor Yellow
    $maxTries = 60
    $try = 0
    while ($try -lt $maxTries) {
        $out    = & $CLI help 2>&1
        $outStr = $out -join " "
        if ($outStr -match "error code: -28") {
            $try++
            Write-Host "  [WAIT] Demarrage en cours... ($try/$maxTries)" -ForegroundColor DarkGray
            Start-Sleep -Seconds 5
        } elseif ($outStr -match "^error") {
            Write-Host "  [ERREUR] : $outStr" -ForegroundColor Red
            return $false
        } else {
            Write-Host "  [OK] Daemon pret !" -ForegroundColor Green
            return $true
        }
    }
    Write-Host "  [ERREUR] Timeout." -ForegroundColor Red
    return $false
}

# ── Parsing sections ────────────────────────────────────────

function Parse-HelpText {
    param([string[]]$Lines)
    $result = @{
        Description = @()
        Arguments   = @()
        Result      = @()
        Examples    = @()
    }
    if ($Lines.Count -eq 0) { return $result }
    $section = "desc"
    foreach ($line in ($Lines | Select-Object -Skip 1)) {
        $t = $line.TrimEnd()
        if     ($t -match "^Arguments:\s*$")  { $section = "args";     continue }
        elseif ($t -match "^Results?:\s*$")   { $section = "result";   continue }
        elseif ($t -match "^Examples?:\s*$")  { $section = "examples"; continue }
        switch ($section) {
            "desc"     { $result.Description += $t }
            "args"     { $result.Arguments   += $t }
            "result"   { $result.Result      += $t }
            "examples" { $result.Examples    += $t }
        }
    }
    return $result
}

# ── Helpers detection ───────────────────────────────────────

function Is-OpenBrace  { param([string]$t) return $t -match "^\{" }
function Is-CloseBrace { param([string]$t) return $t -match "^\}[\s,]*$" }
function Is-OpenBrack  { param([string]$t) return $t -match "^\[" }
function Is-CloseBrack { param([string]$t) return $t -match "^\][\s,]*$" }

function Is-DescContinuation {
    param([string]$Line)
    if ($Line -match "^\s{10,}" -and $Line.Trim() -ne "") {
        $t = $Line.Trim()
        if ($t -match "^[\[{\]}\""0-9]") { return $false }
        if ($t -match "^\.\.\.$") { return $false }
        return $true
    }
    return $false
}

# ── Parse argument top-level ────────────────────────────────

function Parse-SimpleArg {
    param([string]$Line)
    if ($Line -match '^\s*(\d+)\.\s+"?([^"(\s]+)"?\s+\(([^)]+)\)\s*(.*)') {
        $pos  = $Matches[1]
        $name = $Matches[2].Trim()
        $meta = $Matches[3].Trim() -split ",\s*"
        $desc = $Matches[4].Trim()
        $type = if ($meta.Count -ge 1) { $meta[0].Trim() } else { "" }
        $req  = if ($meta.Count -ge 2) { $meta[1].Trim() } else { "" }
        $def  = if ($meta.Count -ge 3) { ($meta[2..($meta.Count-1)] -join ", ").Trim() } else { "" }

        $defVal = ""
        if ($def -match "default\s*=\s*(.+)") { $defVal = $Matches[1].Trim() }
        if ($req -match "required") { $req = "True"  }
        if ($req -match "optional") { $req = "False" }

        return [PSCustomObject]@{
            Position    = $pos
            Name        = $name
            Type        = $type
            Required    = $req
            Default     = $defVal
            Description = $desc
        }
    }
    return $null
}

# ── Parse champ JSON - trois formats ───────────────────────
#
#   Format A (json object) : "name:"    (type, opt) description
#   Format B (json array)  : "name": value,    (type, req) description
#   Format C (array simple): "value",   (type) description

function Parse-JsonField {
    param([string]$Line)

    $name = ""; $type = ""; $req = ""; $defVal = ""; $desc = ""

    # Format B : "name": valeur,   (meta) desc
    if ($Line -match '^\s*"([^"]+)":\s*\S+[\s,]+\(([^)]+)\)\s*(.*)') {
        $name = $Matches[1].Trim()
        $meta = $Matches[2].Trim() -split ",\s*"
        $desc = $Matches[3].Trim()
        $type = if ($meta.Count -ge 1) { $meta[0].Trim() } else { "" }
        $req  = if ($meta.Count -ge 2) { $meta[1].Trim() } else { "" }
        $def  = if ($meta.Count -ge 3) { ($meta[2..($meta.Count-1)] -join ", ").Trim() } else { "" }
        if ($def -match "default\s*=\s*(.+)") { $defVal = $Matches[1].Trim() }

    # Format C : "value",   (type) description  (valeur directe dans un array)
    } elseif ($Line -match '^\s*"([^"]+)",?\s+\(([^)]+)\)\s*(.*)') {
        $name = $Matches[1].Trim()
        $meta = $Matches[2].Trim() -split ",\s*"
        $desc = $Matches[3].Trim()
        $type = if ($meta.Count -ge 1) { $meta[0].Trim() } else { "" }
        $req  = if ($meta.Count -ge 2) { $meta[1].Trim() } else { "" }
        $def  = if ($meta.Count -ge 3) { ($meta[2..($meta.Count-1)] -join ", ").Trim() } else { "" }
        if ($def -match "default\s*=\s*(.+)") { $defVal = $Matches[1].Trim() }

    # Format A : "name:" ou "name"   (meta) desc
    } elseif ($Line -match '^\s*"([^"]+:?)"\s+\(([^)]+)\)\s*(.*)') {
        $name = $Matches[1].Trim().TrimEnd(":")
        $meta = $Matches[2].Trim() -split ",\s*"
        $desc = $Matches[3].Trim()
        $type = if ($meta.Count -ge 1) { $meta[0].Trim() } else { "" }
        $req  = if ($meta.Count -ge 2) { $meta[1].Trim() } else { "" }
        $def  = if ($meta.Count -ge 3) { ($meta[2..($meta.Count-1)] -join ", ").Trim() } else { "" }
        if ($def -match "default\s*=\s*(.+)") { $defVal = $Matches[1].Trim() }

    } else { return $null }

    if ($defVal -match "^true$")  { $defVal = "True"  }
    if ($defVal -match "^false$") { $defVal = "False" }
    if ($req -match "required")   { $req = "True"  }
    if ($req -match "optional")   { $req = "False" }

    if ($desc -and $desc.Length -gt 0) {
        $desc = $desc.Substring(0,1).ToUpper() + $desc.Substring(1)
        if ($desc -notmatch "\.$") { $desc += "." }
    }

    return [PSCustomObject]@{
        Name = $name; Type = $type; Required = $req; Default = $defVal; Description = $desc
    }
}

function Capitalize {
    param([string]$s)
    if (-not $s -or $s.Length -eq 0) { return $s }
    return $s.Substring(0,1).ToUpper() + $s.Substring(1)
}

# ── Parser un bloc { ... } ──────────────────────────────────

function Parse-ObjectBlock {
    param([string[]]$Lines, [int]$StartIndex)
    $fields = @()
    $i = $StartIndex + 1
    while ($i -lt $Lines.Count) {
        $t = $Lines[$i].Trim()
        if (Is-CloseBrace $t) { $i++; break }
        $field = Parse-JsonField -Line $Lines[$i]
        if ($field) { $fields += $field }
        $i++
    }
    return @{ Fields = $fields; NextIndex = $i }
}

# ── Chercher le prochain [ ou { en sautant les descriptions ─

function Find-NextStructure {
    param([string[]]$Lines, [int]$StartIndex)
    $j = $StartIndex
    while ($j -lt $Lines.Count) {
        $t = $Lines[$j].Trim()
        if ($t -eq "") { $j++; continue }
        if ($Lines[$j] -match '^\s*\d+\.\s+') { return -1 }
        if ((Is-OpenBrack $t) -or (Is-OpenBrace $t)) { return $j }
        if (Is-DescContinuation $Lines[$j]) { $j++; continue }
        return -1
    }
    return -1
}

# ── Construction Markdown ───────────────────────────────────

function Build-Markdown {
    param([string]$CmdName, [string[]]$HelpLines)

    $p  = Parse-HelpText -Lines $HelpLines
    $md = "## $CmdName" + $NL

    $descLines = $p.Description | Where-Object { $_.Trim() -ne "" }
    if ($descLines) { $md += ($descLines -join $NL) + $NL }

    $md += "### Arguments" + $NL

    $argLines  = $p.Arguments
    $tableRows = @()
    $hasRows   = $false

    $i = 0
    while ($i -lt $argLines.Count) {
        $al     = $argLines[$i]
        $parsed = Parse-SimpleArg -Line $al

        if ($parsed) {
            $hasRows = $true

            $j = Find-NextStructure -Lines $argLines -StartIndex ($i + 1)
            $nextToken = if ($j -ge 0) { $argLines[$j].Trim() } else { "" }

            # ── json object { ... } ────────────────────────
            if ($j -ge 0 -and (Is-OpenBrace $nextToken)) {
                $tableRows += "| $($parsed.Position) | $($parsed.Name) | json object | $($parsed.Required) | $($parsed.Default) | $($parsed.Description) |"
                $tableRows += "| **$(Capitalize $parsed.Name)** |  |  |  |  |  |"

                $block  = Parse-ObjectBlock -Lines $argLines -StartIndex $j
                $subIdx = 1
                foreach ($field in $block.Fields) {
                    $tableRows += "| $($parsed.Position).$subIdx | $($field.Name) | $($field.Type) | $($field.Required) | $($field.Default) | $($field.Description) |"
                    $subIdx++
                }
                $i = $block.NextIndex
                continue

            # ── json array [ ... ] ─────────────────────────
            } elseif ($j -ge 0 -and (Is-OpenBrack $nextToken)) {
                $tableRows += "| $($parsed.Position) | $($parsed.Name) | json array | $($parsed.Required) | $($parsed.Default) | $($parsed.Description) |"
                $tableRows += "| **$(Capitalize $parsed.Name)** |  |  |  |  |  |"

                $i = $j + 1
                $subIdx     = 1
                $firstBlock = $true

                while ($i -lt $argLines.Count) {
                    $t = $argLines[$i].Trim()

                    if (Is-CloseBrack $t) { $i++; break }

                    # Sous-bloc { ... }
                    if (Is-OpenBrace $t) {
                        if (-not $firstBlock) { $tableRows += $EMPTY_ROW }
                        $firstBlock = $false

                        $block = Parse-ObjectBlock -Lines $argLines -StartIndex $i
                        foreach ($field in $block.Fields) {
                            $tableRows += "| $($parsed.Position).$subIdx | $($field.Name) | $($field.Type) | $($field.Required) | $($field.Default) | $($field.Description) |"
                            $subIdx++
                        }
                        $i = $block.NextIndex
                        continue
                    }

                    # Valeur directe sans bloc : "hexstring",  (string) desc
                    if ($t -notmatch "^\.\.\." -and $t -ne "") {
                        $field = Parse-JsonField -Line $argLines[$i]
                        if ($field) {
                            $tableRows += "| $($parsed.Position).$subIdx | $($field.Name) | $($field.Type) | $($field.Required) | $($field.Default) | $($field.Description) |"
                            $subIdx++
                            $firstBlock = $false
                        }
                    }
                    $i++
                }
                continue

            # ── argument simple ────────────────────────────
            } else {
                $tableRows += "| $($parsed.Position) | $($parsed.Name) | $($parsed.Type) | $($parsed.Required) | $($parsed.Default) | $($parsed.Description) |"
            }
        }
        $i++
    }

    if ($hasRows) {
        $md += "| Position | Name | Type | Required | Default | Description |" + $NL
        $md += "| :--- | :--- | :--- | :--- | :--- | :--- |" + $NL
        foreach ($row in $tableRows) { $md += $row + $NL }
    } else {
        $argRaw = $argLines | Where-Object { $_.Trim() -ne "" }
        if ($argRaw) {
            $md += $TICK3 + "text" + $NL + ($argRaw -join $NL) + $NL + $TICK3 + $NL
        } else {
            $md += "None" + $NL
        }
    }

    # ── Result ───────────────────────────────────────────────
    $resLines = $p.Result | Where-Object { $_.Trim() -ne "" }
    if ($resLines) {
        $md += "### Result" + $NL
        $resText = $resLines -join $NL
        if ($resText -match 'json|^\s*[\[{]|"[^"]+"\s+\(') {
            $md += $TICK3 + "json" + $NL
        } else {
            $md += $TICK3 + "text" + $NL
        }
        $md += $resText + $NL + $TICK3 + $NL
    }

    # ── Examples ─────────────────────────────────────────────
    $exAll = $p.Examples | Where-Object { $_.Trim() -ne "" } | ForEach-Object { $_.Trim() -replace "^>\s*","" }

    if ($exAll) {
        $md += "### Examples" + $NL

        $currentBlock = @()
        $blocks       = @()

        foreach ($ex in $exAll) {
            if ($ex -match "^raptoreum-cli|^curl") {
                if ($currentBlock.Count -gt 0) { $blocks += ,@($currentBlock) }
                $currentBlock = @($ex)
            } else {
                $currentBlock += $ex
            }
        }
        if ($currentBlock.Count -gt 0) { $blocks += ,@($currentBlock) }

        foreach ($block in $blocks) {
            foreach ($line in $block) {
                $md += $TICK3 + "bash" + $NL + " " + $line + $NL + $TICK3 + $NL
            }
        }
    }

    return $md.TrimEnd() + $NL
}

# ── Main ────────────────────────────────────────────────────

if (!(Test-Path $OutputDir)) { New-Item -ItemType Directory -Path $OutputDir | Out-Null }

Write-Host ""
Write-Host "=== Extract-RaptoreumRPC ===" -ForegroundColor Cyan
Write-Host "CLI       : $CLI"
Write-Host "OutputDir : $OutputDir"
Write-Host ""

$ready = Wait-Daemon
if (-not $ready) {
    Write-Host "[ERREUR] Lancez d'abord : & 'C:\Program Files\RaptoreumCore\daemon\raptoreumd.exe'" -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "[1/3] Recuperation des commandes..." -ForegroundColor Yellow
$helpOutput = & $CLI help 2>&1

$commands = @()
foreach ($line in $helpOutput) {
    if ($line -and $line -notmatch "^==" -and $line -notmatch "^\s" -and $line -match "^[a-z]") {
        $commands += $line.Split(" ")[0]
    }
}
Write-Host "  -> $($commands.Count) commandes trouvees." -ForegroundColor Green

Write-Host ""
Write-Host "[2/3] Generation des fichiers Markdown..." -ForegroundColor Yellow

$success = 0
$failed  = @()

foreach ($cmd in $commands) {
    Write-Host "  -> $cmd" -NoNewline
    $cmdHelp = & $CLI help $cmd 2>&1
    if (-not $cmdHelp -or ($cmdHelp -join "") -match "^error") {
        Write-Host " [SKIP]" -ForegroundColor DarkYellow
        $failed += $cmd
        continue
    }
    $mdContent = Build-Markdown -CmdName $cmd -HelpLines $cmdHelp
    Set-Content -Path (Join-Path $OutputDir "$cmd.md") -Value $mdContent -Encoding UTF8
    Write-Host " [OK]" -ForegroundColor Green
    $success++
}

Write-Host ""
Write-Host "[3/3] Generation du README..." -ForegroundColor Yellow
$date   = Get-Date -Format "yyyy-MM-dd"
$readme = "# Raptoreum RPC Documentation" + $NL + $NL
$readme += "Auto-generated - $date" + $NL + $NL
$readme += "## Commands" + $NL + $NL
foreach ($cmd in $commands) { $readme += "- [$cmd](./$cmd.md)" + $NL }
Set-Content -Path (Join-Path $OutputDir "README.md") -Value $readme -Encoding UTF8
Write-Host "  -> README.md genere." -ForegroundColor Green

Write-Host ""
Write-Host "=== Resume ===" -ForegroundColor Cyan
Write-Host "  Succes : $success / $($commands.Count)"
if ($failed.Count -gt 0) { Write-Host "  Ignores : $($failed -join ', ')" -ForegroundColor DarkYellow }
Write-Host "  Dossier : $OutputDir" -ForegroundColor Green
Write-Host ""
