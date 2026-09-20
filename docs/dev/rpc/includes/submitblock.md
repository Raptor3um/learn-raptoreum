## submitblock
Attempts to submit new block to network.
See https://en.bitcoin.it/wiki/BIP_0022 for full specification.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | hexdata | string | True |  | the hex-encoded block data to submit |
| 2 | dummy | string | False | ignored | dummy value, for compatibility with BIP22. This value is ignored. |

### Result
```json
null    (json null) Returns JSON Null when valid, a string according to BIP22 otherwise
```

### Examples
```bash
 raptoreum-cli submitblock "mydata"
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "submitblock", "params": ["mydata"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

