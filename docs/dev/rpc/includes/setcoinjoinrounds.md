## setcoinjoinrounds
Set the number of rounds for CoinJoin.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | rounds | numeric | True |  | The default number of rounds is 4 Cannot be more than 16 nor less than 2 |

### Examples
```bash
 raptoreum-cli setcoinjoinrounds 4
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "setcoinjoinrounds", "params": [16] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

