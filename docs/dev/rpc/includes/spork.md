## spork
Shows information about current state of sporks.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | command | string | True |  | 'show' to show all current spork values, 'active' to show which sporks are active |

### Examples
```bash
 raptoreum-cli spork show
```

```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "spork", "params": ["show"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

