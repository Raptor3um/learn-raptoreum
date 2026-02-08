## getreceivedbylabel

Returns the total amount received by addresses with <label> in transactions with specified minimum number of confirmations.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 2 | `minconf` | numeric | Optional | 1 | See CLI help for details |
| 3 | `addlocked` | boolean | Optional | false | See CLI help for details |


### Result
```json
n    (numeric) The total amount in RTM received at this label.
```

### Examples
```bash
Amount received by the default label with at least 1 confirmation
```
```bash
 raptoreum-cli getreceivedbylabel ""
```
```bash
Amount received at the tabby label including unconfirmed amounts with zero confirmations
```
```bash
 raptoreum-cli getreceivedbylabel "tabby" 0
```
```bash
The amount with at least 6 confirmations
```
```bash
 raptoreum-cli getreceivedbylabel "tabby" 6
```
```bash
As a json rpc call
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getreceivedbylabel", "params": ["tabby", 6] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
