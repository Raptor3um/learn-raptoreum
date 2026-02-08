## getchaintips

1. count        (numeric, optional, default=) only show this much of latest tips

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | `count` | numeric | Optional | [] | See CLI help for details |
| 2 | `branchlen` | numeric | Optional | [] | See CLI help for details |


### Result
```json
[                           (json array)
  {                         (json object)
    "height" : n,           (numeric) height of the chain tip
    "hash" : "hex",         (string) block hash of the tip
    "difficulty" : n,       (numeric) The difficulty
    "chainwork" : "hex",    (string) Expected number of hashes required to produce the current chain (in hex)
    "branchlen" : n,        (numeric) zero for main chain, otherwise length of branch connecting the tip to the main chain
    "forkpoint" : "hex",    (string) same as "hash" for the main chain
    "status" : "str"        (string) status of the chain, "active" for the main chain
                            Possible values for status:
                            1.  "invalid"               This branch contains at least one invalid block
                            2.  "headers-only"          Not all blocks for this branch are available, but the headers are valid
                            3.  "valid-headers"         All blocks are available for this branch, but they were never fully validated
                            4.  "valid-fork"            This branch is not part of the active chain, but is fully validated
                            5.  "active"                This is the tip of the active main chain, which is certainly valid
  },
  ...
]
```

### Examples
```bash
 raptoreum-cli getchaintips
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getchaintips", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
