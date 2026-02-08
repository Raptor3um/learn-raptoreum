## sendmany

Send multiple times. Amounts are double-precision floating point numbers.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 3 | `minconf` | numeric | Optional | 1 | See CLI help for details |
| 4 | `addlocked` | boolean | Optional | false | See CLI help for details |
| 7 | `use_is` | boolean | Optional | false | See CLI help for details |
| 8 | `use_cj` | boolean | Optional | false | See CLI help for details |
| 9 | `conf_target` | numeric | Optional | fallback to wallet's default) Confirmation target (in blocks | See CLI help for details |
| 10 | `estimate_mode` | string | Optional | UNSET | See CLI help for details |


### Result
```json
"hex"    (string) The transaction id for the send. Only 1 transaction is created regardless of
         the number of addresses.
```

### Examples
```bash
Send two amounts to two different addresses:
```
```bash
 raptoreum-cli sendmany "" "{\"XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG\":0.01,\"XuQQkwA4FYkq2XERzMY2CiAZhJTEDAbtcG\":0.02}"
```
```bash
Send two amounts to two different addresses setting the confirmation and comment:
```
```bash
 raptoreum-cli sendmany "" "{\"XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG\":0.01,\"XuQQkwA4FYkq2XERzMY2CiAZhJTEDAbtcG\":0.02}" 6 false "testing"
```
```bash
As a json rpc call
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "sendmany", "params": ["", "{\"XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG\":0.01,\"XuQQkwA4FYkq2XERzMY2CiAZhJTEDAbtcG\":0.02}", 6, false, "testing"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
