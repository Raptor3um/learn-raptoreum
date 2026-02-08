## createrawtransaction

Create a transaction spending the given inputs and creating new outputs.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 3 | `locktime` | numeric | Optional | 0 | See CLI help for details |


### Result
```json
"hex"    (string)  hex string of the transaction
```

### Examples
```bash
 raptoreum-cli createrawtransaction "[{\"txid\":\"myid\",\"vout\":0}]" "[{\"address\":0.01}]"
```
```bash
 raptoreum-cli createrawtransaction "[{\"txid\":\"myid\",\"vout\":0}]" "[{\"data\":\"00010203\"}]"
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "createrawtransaction", "params": ["[{\"txid\":\"myid\",\"vout\":0}]", "[{\"address\":0.01}]"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "createrawtransaction", "params": ["[{\"txid\":\"myid\",\"vout\":0}]", "[{\"data\":\"00010203\"}]"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
