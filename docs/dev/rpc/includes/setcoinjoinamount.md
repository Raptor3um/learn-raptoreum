## setcoinjoinamount
Set the goal amount in RTM for CoinJoin.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | amount | numeric | True |  | The default amount is 1000 Cannot be more than 21000000 nor less than 2 |

### Examples
```bash
 raptoreum-cli setcoinjoinamount 500
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "setcoinjoinamount", "params": [208] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

