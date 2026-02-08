## getmemoryinfo

1. "mode"    (string, optional, default="stats") determines what kind of information is returned.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | `mode` | string | Optional | "stats" | See CLI help for details |


### Examples
```bash
 raptoreum-cli getmemoryinfo
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getmemoryinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
