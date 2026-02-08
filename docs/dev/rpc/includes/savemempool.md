## savemempool

Dumps the mempool to disk. It will fail until the previous dump is fully loaded.

### Arguments

No arguments.

### Result
```json
null    (json null)
```

### Examples
```bash
 raptoreum-cli savemempool
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "savemempool", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
