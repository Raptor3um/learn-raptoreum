## signrawtransactionwithkey
Sign inputs for raw transaction (serialized, hex-encoded).
The second argument is an array of base58-encoded private
keys that will be the only keys used to sign the transaction.
The third optional argument (may be null) is an array of previous transaction outputs that
this transaction depends on but may not yet be in the block chain.
### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | hexstring | string | True |  | The transaction hex string |
| 2 | privkeys | json array | True |  | A json array of base58-encoded private keys for signing |
| **Privkeys** |  |  |  |  |  |
| 2.1 | privatekey | string |  |  | Private key in base58-encoding. |
| 3 | prevtxs | json array | False |  | A json array of previous dependent transaction outputs |
| **Prevtxs** |  |  |  |  |  |
| 3.1 | txid | string | True |  | The transaction id. |
| 3.2 | vout | numeric | True |  | The output number. |
| 3.3 | scriptPubKey | string | True |  | Script key. |
| 3.4 | redeemScript | string |  |  | (required for P2SH or P2WSH) redeem script. |
| 3.5 | amount | numeric or string | True |  | The amount spent. |
| 4 | sighashtype | string | False | ALL | The signature hash type. Must be one of: |

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
 raptoreum-cli signrawtransactionwithkey "myhex"
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "signrawtransactionwithkey", "params": ["myhex"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

