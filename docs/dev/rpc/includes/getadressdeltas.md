## getaddressdeltas

Returns all changes for an address or multiple addresses.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | `addresses` | json array | No | [] | A list of base58check encoded addresses. |
| 2 | `asset` | string | No | "RTM" | Get deltas for a particular asset instead of RTM. |

### Result
```json
[
  {
    "satoshis" : n,       /* The difference of duffs */
    "assetId" : "str",    /* The asset id */
    "txid" : "hex",       /* The related txid */
    "index" : n,          /* The related input or output index */
    "blockindex" : n,     /* The related block index */
    "height" : n,         /* The block height */
    "address" : "str"     /* The base58check encoded address */
  }
]
```
### Examples
```bash
> raptoreum-cli getaddressdeltas '{"addresses": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg"]}'
```
```bash
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaddressdeltas", "params": [{"addresses": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg"]}] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```