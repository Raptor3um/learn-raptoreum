## getblock

If verbosity is 0, returns a string that is serialized, hex-encoded data for block 'hash'.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 2 | `verbosity` | numeric | Optional | 1 | See CLI help for details |


### Examples
```bash
 raptoreum-cli getblock "00000000000fd08c2fb661d2fcb0d49abb3a91e5f27082ce64feed3b4dede2e2"
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblock", "params": ["00000000000fd08c2fb661d2fcb0d49abb3a91e5f27082ce64feed3b4dede2e2"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
