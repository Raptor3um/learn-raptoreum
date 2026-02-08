## getsuperblockbudget

Returns the absolute maximum sum of superblock payments allowed.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |


### Result
```json
n    (numeric) The absolute maximum sum of superblock payments allowed, in RTM
```

### Examples
```bash
 raptoreum-cli getsuperblockbudget 1000
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getsuperblockbudget", "params": [1000] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
