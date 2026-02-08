## importprivkey

Adds a private key (as returned by dumpprivkey) to your wallet. Requires a new wallet backup.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 2 | `label` | string | Optional | current label if address exists, otherwise "" | See CLI help for details |
| 3 | `rescan` | boolean | Optional | true | See CLI help for details |


### Result
```json
null    (json null)
```

### Examples
```bash
Dump a private key
```
```bash
 raptoreum-cli dumpprivkey "myaddress"
```
```bash
Import the private key with rescan
```
```bash
 raptoreum-cli importprivkey "mykey"
```
```bash
Import using a label and without rescan
```
```bash
 raptoreum-cli importprivkey "mykey" "testing" false
```
```bash
Import using default blank label and without rescan
```
```bash
 raptoreum-cli importprivkey "mykey" "" false
```
```bash
As a JSON-RPC call
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "importprivkey", "params": ["mykey", "testing", false] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
