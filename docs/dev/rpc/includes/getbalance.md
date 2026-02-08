## getbalance

Returns the total available balance.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 2 | `minconf` | numeric | Optional | 0 | See CLI help for details |
| 3 | `addlocked` | boolean | Optional | false | See CLI help for details |
| 4 | `include_watchonly` | boolean | Optional | false) Also include balance in watch-only addresses (see 'importaddress' | See CLI help for details |


### Result
```json
n    (numeric) The total amount in RTM received at this wallet.
```

### Examples
```bash
The total amount in the wallet with 0 or more confirmations
```
```bash
 raptoreum-cli getbalance
```
```bash
The total amount in the wallet at least 6 blocks confirmed
```
```bash
 raptoreum-cli getbalance "*" 6
```
```bash
As a json rpc call
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getbalance", "params": ["*", 6] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
