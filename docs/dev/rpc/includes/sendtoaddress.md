## sendtoaddress
Send an amount to a given address.
Requires wallet passphrase to be set with walletpassphrase call if wallet is encrypted.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | address | string | True |  | The Raptoreum address to send to. |
| 2 | amount | numeric or string | True |  | The amount in RTM to send. eg 0.1 |
| 3 | future | json object | False |  | Future transaction is mature when it has enough confirmations or locktime in seconds has past from its first confirm. |
| **Future** |  |  |  |  |  |
| 3.1 | future_maturity | numeric | False |  | Number of confirmations required for this future to mature. |
| 3.2 | future_locktime | numeric | False |  | Total time in seconds from its first confirmation for this future to mature. |
| 4 | comment | string | False |  | A comment used to store what the transaction is for. |
| 5 | comment_to | string | False |  | A comment to store the name of the person or organization |
| 6 | subtractfeefromamount | boolean | False | false | The fee will be deducted from the amount being sent. |
| 7 | use_is | boolean | False | false | Deprecated and ignored |
| 8 | use_cj | boolean | False | false | Use CoinJoin funds only |
| 9 | conf_target | numeric | False | fallback to wallet's default | Confirmation target (in blocks) |
| 10 | estimate_mode | string | False | UNSET | The fee estimate mode, must be one of: |

### Result
```json
"hex"    (string) The transaction id.
```

### Examples
```bash
 raptoreum-cli sendtoaddress "RwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" 0.1
```
```bash
 raptoreum-cli sendtoaddress "RwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" 0.1 '{"future_maturity":100, "future_locktime":10000}'
```
```bash
 raptoreum-cli sendtoaddress "RwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" 0.1 [] "donation" "seans outpost"
```
```bash
 raptoreum-cli sendtoaddress "RwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" 0.1 [] "" "" true
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "sendtoaddress", "params": ["RwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG", 0.1, [], "donation", "seans outpost"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

