## getreceivedbyaddress

Returns the total amount received by the given address in transactions with at least minconf confirmations.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 2 | `minconf` | numeric | Optional | 1 | See CLI help for details |
| 3 | `addlocked` | boolean | Optional | false | See CLI help for details |


### Result
```json
n    (numeric) The total amount in RTM received at this address.
```

### Examples
```bash
The amount from transactions with at least 1 confirmation
```
```bash
 raptoreum-cli getreceivedbyaddress "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG"
```
```bash
The amount including unconfirmed transactions, zero confirmations
```
```bash
 raptoreum-cli getreceivedbyaddress "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" 0
```
```bash
The amount with at least 6 confirmations
```
```bash
 raptoreum-cli getreceivedbyaddress "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" 6
```
```bash
As a json rpc call
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getreceivedbyaddress", "params": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG", 6] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
