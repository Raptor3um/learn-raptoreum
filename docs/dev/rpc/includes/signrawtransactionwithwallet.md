## signrawtransactionwithwallet
Sign inputs for raw transaction (serialized, hex-encoded).
The second optional argument (may be null) is an array of previous transaction outputs that
this transaction depends on but may not yet be in the block chain.
Requires wallet passphrase to be set with walletpassphrase call if wallet is encrypted.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | hexstring | string | True |  | The transaction hex string |
| 2 | prevtxs | json array | False |  | A json array of previous dependent transaction outputs |
| **Prevtxs** |  |  |  |  |  |
| 2.1 | txid | string | True |  | The transaction id. |
| 2.2 | vout | numeric | True |  | The output number. |
| 2.3 | scriptPubKey | string | True |  | Script key. |
| 2.4 | redeemScript | string |  |  | (required for P2SH or P2WSH). |
| 2.5 | amount | numeric or string | True |  | The amount spent. |
| 3 | sighashtype | string | False | ALL | The signature hash type. Must be one of |

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

