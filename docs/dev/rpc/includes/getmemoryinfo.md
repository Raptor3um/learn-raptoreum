## getmemoryinfo
Returns an object containing information about memory usage.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | mode | string | False | "stats" | determines what kind of information is returned. |

### Examples
```bash
 raptoreum-cli getmemoryinfo
```

```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getmemoryinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

