## getconnectioncount

Returns the number of connections to other nodes.

### Arguments

No arguments.

### Result
```json
n    (numeric) The connection count
```

### Examples
```bash
 raptoreum-cli getconnectioncount
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getconnectioncount", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
