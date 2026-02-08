## dumphdinfo

{                                  (json object)

### Arguments

No arguments.

### Result
```json
{                                  (json object)
  "hdseed" : "hex",                (string) The HD seed (bip32, in hex)
  "mnemonic" : "str",              (string) The mnemonic for this HD wallet (bip39, english words)
  "mnemonicpassphrase" : "str"     (string) The mnemonic passphrase for this HD wallet (bip39)
}
```

### Examples
```bash
 raptoreum-cli dumphdinfo
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "dumphdinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
