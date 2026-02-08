## getnewaddress

Returns a new Raptoreum address for receiving payments.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | `label` | string | Optional | "" | See CLI help for details |


### Result
```json
"str"    (string) The new raptoreum address
```

### Examples
```bash
 raptoreum-cli getnewaddress
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getnewaddress", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
