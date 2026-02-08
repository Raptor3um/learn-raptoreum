## listwallets

For full information on the wallet, use "getwalletinfo"

### Arguments

No arguments.

### Result
```json
[           (json array)
  "str",    (string) the wallet name
  ...
]
```

### Examples
```bash
 raptoreum-cli listwallets
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listwallets", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
