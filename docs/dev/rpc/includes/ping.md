## ping

Requests that a ping be sent to all other nodes, to measure ping time.

### Arguments

No arguments.

### Result
```json
null    (json null)
```

### Examples
```bash
 raptoreum-cli ping
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "ping", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
