## getdifficulty

Returns the proof-of-work difficulty as a multiple of the minimum difficulty.

### Arguments

No arguments.

### Result
```json
n    (numeric) the proof-of-work difficulty as a multiple of the minimum difficulty.
```

### Examples
```bash
 raptoreum-cli getdifficulty
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getdifficulty", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
