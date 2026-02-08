## getblockcount

Returns the number of blocks in the longest blockchain.

### Arguments

No arguments.

### Result
```json
n    (numeric) The current block count
```

### Examples
```bash
 raptoreum-cli getblockcount
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblockcount", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
