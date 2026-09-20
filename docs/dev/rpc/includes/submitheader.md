## submitheader
Decode the given hexdata as a header and submit it as a candidate chain tip if valid.
Throws when the header is invalid.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | hexdata | string | True |  | the hex-encoded block header data |

### Result
```json
null    (json null) None
```

### Examples
```bash
 raptoreum-cli submitheader "aabbcc"
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "submitheader", "params": ["aabbcc"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

