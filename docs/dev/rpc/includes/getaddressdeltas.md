## getaddressdeltas

Returns all changes for an address (requires addressindex to be enabled).

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | `addresses` | json array | Optional | [] | See CLI help for details |
| 2 | `asset` | string | Optional | RTM | See CLI help for details |


### Result
```json
[                         (json array)
  {                       (json object)
    "satoshis" : n,       (numeric) The difference of duffs
    "assetId" : "str",    (string) The asset id
    "txid" : "hex",       (string) The related txid
    "index" : n,          (numeric) The related input or output index
    "blockindex" : n,     (numeric) The related block index
    "height" : n,         (numeric) The block height
    "address" : "str"     (string) The base58check encoded address
  },
  ...
]
```

### Examples
```bash
 raptoreum-cli getaddressdeltas '{"addresses": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg"]}'
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaddressdeltas", "params": [{"addresses": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg"]}] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
