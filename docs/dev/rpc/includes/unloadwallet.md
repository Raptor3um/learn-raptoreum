## unloadwallet

Specifying the wallet name on a wallet endpoint is invalid.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | `wallet_name` | string | Optional | the wallet name from the RPC request | See CLI help for details |


### Result
```json
null    (json null)
```

### Examples
```bash
 raptoreum-cli unloadwallet wallet_name
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "unloadwallet", "params": [wallet_name] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
