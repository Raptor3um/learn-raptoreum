## getrawchangeaddress

Returns a new Raptoreum address, for receiving change.
This is for use with raw transactions, NOT normal use.

### Arguments

No arguments.

### Result
```json
"str"    (string) The address
```

### Examples
```bash
 raptoreum-cli getrawchangeaddress
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getrawchangeaddress", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
