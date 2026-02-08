## getgovernanceinfo

{                               (json object)

### Arguments

No arguments.

### Result
```json
{                               (json object)
  "governanceminquorum" : n,    (numeric) the absolute minimum number of votes needed to trigger a governance action
  "proposalfee" : n,            (numeric) the collateral transaction fee which must be paid to create a proposal in RTM
  "superblockcycle" : n,        (numeric) the number of blocks between superblocks
  "lastsuperblock" : n,         (numeric) the block number of the last superblock
  "nextsuperblock" : n          (numeric) the block number of the next superblock
}
```

### Examples
```bash
 raptoreum-cli getgovernanceinfo
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getgovernanceinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
