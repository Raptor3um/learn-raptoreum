## importmulti
Import addresses/scripts (with private or public keys, redeem script (P2SH)), rescanning all addresses in one-shot-only (rescan can be disabled via options). Requires a new wallet backup.
Note: This call can take over an hour to complete if rescan is true, during that time, other rpc calls
may report that the imported keys, addresses or scripts exists but related transactions are still missing.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | requests | json array | True |  | Data to be imported |
| **Requests** |  |  |  |  |  |
| 1.1 | desc | string | False |  | Descriptor to import. If using descriptor, do not also provide address/scriptPubKey, scripts, or pubkeys. |
| 1.2 | redeemscript | string |  |  | Allowed only if the scriptPubKey is a P2SH address or  a P2SH scriptPubKey. |
| 1.3 | pubkeys | json array | False | empty array | Array of strings giving pubkeys to import. They must occur in P2PKH scripts. They are not required when the private key is also provided (see the "keys" argument). |
| 1.4 | pubKey | string |  |  |  |
| 1.5 | keys | json array | False | empty array | Array of strings giving private keys whose  corresponding public keys must occur in the output or redeemscript. |
| 1.6 | key | string |  |  |  |
| 1.7 | internal | boolean | False | False | Stating whether matching outputs should be treated as not incoming payments (also known as change). |
| 1.8 | watchonly | boolean | False | False | Stating whether matching outputs should be considered watched even when not all private keys are provided. |
| 1.9 | label | string | False | '' | Label to assign to the address, only allowed with internal=false. |
| 1.10 | keypool | boolean | False | False | Stating whether imported public keys should be added to the keypool for when users request new addresses. Only allowed when wallet private keys are disabled. |
| 2 | options | json object | False |  |  |
| **Options** |  |  |  |  |  |
| 2.1 | rescan | boolean | False | True | Stating if should rescan the blockchain after all imports. |

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

