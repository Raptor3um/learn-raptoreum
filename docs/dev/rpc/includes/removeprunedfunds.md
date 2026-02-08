## removeprunedfunds

Deletes the specified transaction from the wallet. Meant for use with pruned wallets and as a companion to importprunedfunds. This will affect wallet balances.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |


### Result
```json
null    (json null)
```

### Examples
```bash
 raptoreum-cli removeprunedfunds "a8d0c0184dde994a09ec054286f1ce581bebf46446a512166eae7628734ea0a5"
```
```bash
As a JSON-RPC call
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "removeprunedfunds", "params": ["a8d0c0184dde994a09ec054286f1ce581bebf46446a512166eae7628734ea0a5"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
