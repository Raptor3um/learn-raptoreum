## getblockheaders

Returns an array of items with information about <count> blockheaders starting from <hash>.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 2 | `count` | numeric | Optional | 2000 | See CLI help for details |
| 3 | `verbose` | boolean | Optional | true | See CLI help for details |


### Examples
```bash
 raptoreum-cli getblockheaders "00000000c937983704a73af28acdec37b049d214adbda81d7e2a3dd146f6ed09" 2000
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblockheaders", "params": ["00000000c937983704a73af28acdec37b049d214adbda81d7e2a3dd146f6ed09" 2000] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
