## getaddressmempool

Returns all mempool deltas for an address (requires addressindex to be enabled).

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | `addresses` | json array | Optional | [] | See CLI help for details |


### Result
```json
[                          (json array)
  {                        (json object)
    "address" : "str",     (string) The base58check encoded address
    "asset" : "str",       (string) The asset name of the associated asset
    "assetId" : "str",     (string) (only on assets) The asset Id of the associated asset
    "txid" : "hex",        (string) The related txid
    "index" : n,           (numeric) The related input or output index
    "satoshis" : n,        (numeric) The difference of duffs
    "timestamp" : xxx,     (numeric) The time the transaction entered the mempool (seconds)
    "prevtxid" : "hex",    (string) The previous txid (if spending)
    "prevout" : n          (numeric) The previous transaction output index (if spending)
  },
  ...
]
```

### Examples
```bash
 raptoreum-cli getaddressmempool '{"addresses": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg"]}'
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaddressmempool", "params": [{"addresses": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg"]}] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
