## getaddresstxids

Returns the txids for an address(es) (requires addressindex to be enabled).

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | `addresses` | json array | Optional | [] | See CLI help for details |


### Result
```json
[           (json array)
  "hex",    (string) The transaction id
  ...
]
```

### Examples
```bash
 raptoreum-cli getaddresstxids '{"addresses": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg"]}'
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaddresstxids", "params": [{"addresses": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg"]}] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
