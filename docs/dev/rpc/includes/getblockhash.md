## getblockhash

Returns hash of block in best-block-chain at height provided.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |


### Result
```json
"hex"    (string) The block hash
```

### Examples
```bash
 raptoreum-cli getblockhash 1000
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblockhash", "params": [1000] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
