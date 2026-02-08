## importaddress

Adds an address or script (in hex) that can be watched as if it were in your wallet but cannot be used to spend. Requires a new wallet backup.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 2 | `label` | string | Optional | "" | See CLI help for details |
| 3 | `rescan` | boolean | Optional | true | See CLI help for details |
| 4 | `p2sh` | boolean | Optional | false | See CLI help for details |


### Result
```json
null    (json null)
```

### Examples
```bash
Import an address with rescan
```
```bash
 raptoreum-cli importaddress "myaddress"
```
```bash
Import using a label without rescan
```
```bash
 raptoreum-cli importaddress "myaddress" "testing" false
```
```bash
As a JSON-RPC call
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "importaddress", "params": ["myaddress", "testing", false] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
