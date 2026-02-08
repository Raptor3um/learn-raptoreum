## walletpassphrase

Stores the wallet decryption key in memory for 'timeout' seconds.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 3 | `mixingonly` | boolean | Optional | false | See CLI help for details |


### Result
```json
null    (json null)
```

### Examples
```bash
Unlock the wallet for 60 seconds
```
```bash
 raptoreum-cli walletpassphrase "my pass phrase" 60
```
```bash
Unlock the wallet for 60 seconds but allow CoinJoin only
```
```bash
 raptoreum-cli walletpassphrase "my pass phrase" 60 true
```
```bash
Lock the wallet again (before 60 seconds)
```
```bash
 raptoreum-cli walletlock
```
```bash
As a JSON-RPC call
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "walletpassphrase", "params": ["my pass phrase", 60] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
