## signrawtransactionwithwallet

Sign inputs for raw transaction (serialized, hex-encoded).

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 3 | `sighashtype` | string | Optional | ALL | See CLI help for details |


### Result
```json
{                             (json object)
  "hex" : "hex",              (string) The hex-encoded raw transaction with signature(s)
  "complete" : true|false,    (boolean) If the transaction has a complete set of signatures
  "errors" : [                (json array) Script verification errors (if there are any)
    {                         (json object)
      "txid" : "hex",         (string) The hash of the referenced, previous transaction
      "vout" : n,             (numeric) The index of the output to spent and used as input
      "scriptSig" : "hex",    (string) The hex-encoded signature script
      "sequence" : n,         (numeric) Script sequence number
      "error" : "str"         (string) Verification or signing error related to the input
    },
    ...
  ]
}
```

### Examples
```bash
 raptoreum-cli signrawtransactionwithwallet "myhex"
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "signrawtransactionwithwallet", "params": ["myhex"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
