## getbestblockhash

Returns the hash of the best (tip) block in the longest blockchain.

### Arguments

No arguments.

### Result
```json
"hex"    (string) the block hash, hex-encoded
```

### Examples
```bash
 raptoreum-cli getbestblockhash
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getbestblockhash", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
