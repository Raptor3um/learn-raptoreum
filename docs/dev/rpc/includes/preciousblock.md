## preciousblock
Treats a block as if it were received before others with the same work.
A later preciousblock call can override the effect of an earlier one.
The effects of preciousblock are not retained across restarts.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | blockhash | string | True |  | the hash of the block to mark as precious |

### Result
```json
null    (json null)
```

### Examples
```bash
 raptoreum-cli preciousblock "blockhash"
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "preciousblock", "params": ["blockhash"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

