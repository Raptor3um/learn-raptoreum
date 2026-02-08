## keypoolrefill

Fills the keypool.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | `newsize` | numeric | Optional | 1000 | See CLI help for details |


### Result
```json
null    (json null)
```

### Examples
```bash
 raptoreum-cli keypoolrefill
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "keypoolrefill", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
