## submitblock

Attempts to submit new block to network.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 2 | `dummy` | string | Optional | ignored | See CLI help for details |


### Result
```json
null    (json null) Returns JSON Null when valid, a string according to BIP22 otherwise
```

### Examples
```bash
 raptoreum-cli submitblock "mydata"
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "submitblock", "params": ["mydata"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
