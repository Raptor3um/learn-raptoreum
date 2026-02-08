## verifychain

Verifies blockchain database.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | `checklevel` | numeric | Optional | 4, range=0-4 | See CLI help for details |
| 2 | `nblocks` | numeric | Optional | 50, 0=all | See CLI help for details |


### Result
```json
true|false    (boolean) Verified or not
```

### Examples
```bash
 raptoreum-cli verifychain
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "verifychain", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
