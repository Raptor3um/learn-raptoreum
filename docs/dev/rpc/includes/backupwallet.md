## backupwallet

Safely copies current wallet file to destination, which can be a directory or a path with filename.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |


### Result
```json
null    (json null)
```

### Examples
```bash
 raptoreum-cli backupwallet "backup.dat"
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "backupwallet", "params": ["backup.dat"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
