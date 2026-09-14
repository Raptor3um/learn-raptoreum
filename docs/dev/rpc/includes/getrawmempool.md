## getrawmempool
Returns all transaction ids in memory pool as a json array of string transaction ids.
Hint: use getmempoolentry to fetch a specific transaction from the mempool.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | verbose | boolean | False | false | True for a json object, false for array of transaction ids |

### Examples
```bash
 raptoreum-cli getrawmempool true
```

```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getrawmempool", "params": [true] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

