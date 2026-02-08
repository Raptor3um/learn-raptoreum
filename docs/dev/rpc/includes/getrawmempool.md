## getrawmempool

Returns all transaction ids in memory pool as a json array of string transaction ids.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | `verbose` | boolean | Optional | false | See CLI help for details |


### Examples
```bash
 raptoreum-cli getrawmempool true
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getrawmempool", "params": [true] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
