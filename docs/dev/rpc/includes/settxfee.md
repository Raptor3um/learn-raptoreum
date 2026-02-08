## settxfee

Set the transaction fee per kB for this wallet. Overrides the global -paytxfee command line parameter.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |


### Result
```json
true|false    (boolean) Returns true if successful
```

### Examples
```bash
 raptoreum-cli settxfee 0.00001
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "settxfee", "params": [0.00001] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
