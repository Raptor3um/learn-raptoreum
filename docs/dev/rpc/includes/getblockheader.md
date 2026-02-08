## getblockheader

If verbose is false, returns a string that is serialized, hex-encoded data for blockheader 'hash'.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 2 | `verbose` | boolean | Optional | true | See CLI help for details |


### Examples
```bash
 raptoreum-cli getblockheader "00000000c937983704a73af28acdec37b049d214adbda81d7e2a3dd146f6ed09"
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblockheader", "params": ["00000000c937983704a73af28acdec37b049d214adbda81d7e2a3dd146f6ed09"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
