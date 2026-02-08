## listwalletdir

{                        (json object)

### Arguments

No arguments.

### Result
```json
{                        (json object)
  "wallets" : [          (json array)
    {                    (json object)
      "name" : "str"     (string) The wallet name
    },
    ...
  ]
}
```

### Examples
```bash
 raptoreum-cli listwalletdir
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listwalletdir", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
