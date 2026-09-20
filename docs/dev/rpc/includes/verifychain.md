## verifychain
Verifies blockchain database.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | checklevel | numeric | False | 4, range=0-4 | How thorough the block verification is. |
| 2 | nblocks | numeric | False | 50, 0=all | The number of blocks to check. |

### Result
```text
true|false    (boolean) Verified or not
```

### Examples
```bash
 raptoreum-cli verifychain
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "verifychain", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

