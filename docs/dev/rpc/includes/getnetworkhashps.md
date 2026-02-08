## getnetworkhashps

Returns the estimated network hashes per second based on the last n blocks.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | `nblocks` | numeric | Optional | 120 | See CLI help for details |
| 2 | `height` | numeric | Optional | -1 | See CLI help for details |


### Result
```json
n    (numeric) Hashes per second estimated
```

### Examples
```bash
 raptoreum-cli getnetworkhashps
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getnetworkhashps", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
