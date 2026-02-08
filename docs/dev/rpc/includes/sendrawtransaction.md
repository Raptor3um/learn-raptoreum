## sendrawtransaction

Submits raw transaction (serialized, hex-encoded) to local node and network.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 2 | `maxfeerate` | numeric or string | Optional | 0.10 | See CLI help for details |
| 4 | `bypasslimits` | boolean | Optional | false | See CLI help for details |


### Result
```json
"hex"    (string) The transaction hash in hex
```

### Examples
```bash
Create a transaction
```
```bash
 raptoreum-cli createrawtransaction "[{\"txid\" : \"mytxid\",\"vout\":0}]" "{\"myaddress\":0.01}"
```
```bash
Sign the transaction, and get back the hex
```
```bash
 raptoreum-cli signrawtransactionwithwallet "myhex"
```
```bash
Send the transaction (signed hex)
```
```bash
 raptoreum-cli sendrawtransaction "signedhex"
```
```bash
As a json rpc call
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "sendrawtransaction", "params": ["signedhex"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
