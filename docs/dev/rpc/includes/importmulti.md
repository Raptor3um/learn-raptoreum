## importmulti

Import addresses/scripts (with private or public keys, redeem script (P2SH)), rescanning all addresses in one-shot-only (rescan can be disabled via options). Requires a new wallet backup.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |


### Result
```json
[                              (json array) Response is an array with the same size as the input that has the execution result
  {                            (json object)
    "success" : true|false,    (boolean)
    "warnings" : [             (json array, optional)
      "str",                   (string)
      ...
    ],
    "error" : {                (json object, optional)
      ...                      JSONRPC error
    }
  },
  ...
]
```

### Examples
```bash
 raptoreum-cli importmulti '[{ "scriptPubKey": { "address": "<my address>" }, "timestamp":1455191478 }, { "scriptPubKey": { "address": "<my 2nd address>" }, "label": "example 2", "timestamp": 1455191480 }]'
```
```bash
 raptoreum-cli importmulti '[{ "scriptPubKey": { "address": "<my address>" }, "timestamp":1455191478 }]' '{ "rescan": false}'
```

---
