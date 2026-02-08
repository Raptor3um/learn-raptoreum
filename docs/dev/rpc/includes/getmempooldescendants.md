## getmempooldescendants

If txid is in the mempool, returns all in-mempool descendants.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 2 | `verbose` | boolean | Optional | false | See CLI help for details |


### Examples
```bash
 raptoreum-cli getmempooldescendants "mytxid"
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getmempooldescendants", "params": ["mytxid"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
