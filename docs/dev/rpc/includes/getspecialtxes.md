## getspecialtxes

If verbosity is 0, returns tx hash for each transaction.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 2 | `type` | numeric | Optional | -1 | See CLI help for details |
| 3 | `count` | numeric | Optional | 10 | See CLI help for details |
| 4 | `skip` | numeric | Optional | 0 | See CLI help for details |
| 5 | `verbosity` | numeric | Optional | 0 | See CLI help for details |


### Examples
```bash
 raptoreum-cli getspecialtxes "00000000000fd08c2fb661d2fcb0d49abb3a91e5f27082ce64feed3b4dede2e2"
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getspecialtxes", "params": ["00000000000fd08c2fb661d2fcb0d49abb3a91e5f27082ce64feed3b4dede2e2"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
