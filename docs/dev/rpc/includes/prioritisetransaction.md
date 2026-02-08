## prioritisetransaction

1. "txid"       (string, required) The transaction id.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |


### Result
```json
true|false    (boolean) Returns true
```

### Examples
```bash
 raptoreum-cli prioritisetransaction "txid" 10000
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "prioritisetransaction", "params": ["txid", 10000] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
