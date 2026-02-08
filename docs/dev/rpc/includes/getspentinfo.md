## getspentinfo

Returns the txid and index where an output is spent.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | `request` | json object | Optional | [] | See CLI help for details |


### Result
```json
{                    (json object)
  "txid" : "hex",    (string) The transaction id
  "index" : n        (numeric) The spending input index
}
```

### Examples
```bash
 raptoreum-cli getspentinfo '{"txid": "0437cd7f8525ceed2324359c2d0ba26006d92d856a9c20fa0241106ee5a597c9", "index": 0}'
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getspentinfo", "params": [{"txid": "0437cd7f8525ceed2324359c2d0ba26006d92d856a9c20fa0241106ee5a597c9", "index": 0}] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
