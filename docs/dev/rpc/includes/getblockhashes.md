## getblockhashes
Returns array of hashes of blocks within the timestamp range provided.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | high | numeric | True |  | The newer block timestamp |
| 2 | low | numeric | True |  | The older block timestamp |

### Result
```json
[           (json array)
  "hex",    (string) The block hash
  ...
]
```

### Examples
```bash
 raptoreum-cli getblockhashes 1231614698 1231024505
```

```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblockhashes", "params": [1231614698, 1231024505] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

