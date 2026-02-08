## uptime

Returns the total uptime of the server.

### Arguments

No arguments.

### Result
```json
n    (numeric) The number of seconds that the server has been running
```

### Examples
```bash
 raptoreum-cli uptime
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "uptime", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
