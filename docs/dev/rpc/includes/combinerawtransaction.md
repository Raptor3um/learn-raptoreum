## combinerawtransaction
Combine multiple partially signed transactions into one transaction.
The combined transaction may be another partially signed transaction or a
fully signed transaction.
### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | txs | json array | True |  | A json array of hex strings of partially signed transactions |
| **Txs** |  |  |  |  |  |
| 1.1 | hexstring | string |  |  | A hex-encoded raw transaction. |
### Result
```json
"str"    (string) The hex-encoded raw transaction with signature(s)
```
### Examples
```bash
 raptoreum-cli combinerawtransaction '["myhex1", "myhex2", "myhex3"]'
```

