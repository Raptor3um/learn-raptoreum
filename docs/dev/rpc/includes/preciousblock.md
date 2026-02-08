## preciousblock

Treats a block as if it were received before others with the same work.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |


### Result
```json
null    (json null)
```

### Examples
```bash
 raptoreum-cli preciousblock "blockhash"
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "preciousblock", "params": ["blockhash"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
