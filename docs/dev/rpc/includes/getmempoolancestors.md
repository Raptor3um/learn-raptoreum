## getmempoolancestors
If txid is in the mempool, returns all in-mempool ancestors.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | txid | string | True |  | The transaction id (must be in mempool) |
| 2 | verbose | boolean | False | false | True for a json object, false for array of transaction ids |

### Examples
```bash
 raptoreum-cli getmempoolancestors "mytxid"
```

```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getmempoolancestors", "params": ["mytxid"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

