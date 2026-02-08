## sendtoaddress

Send an amount to a given address.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 6 | `subtractfeefromamount` | boolean | Optional | false | See CLI help for details |
| 7 | `use_is` | boolean | Optional | false | See CLI help for details |
| 8 | `use_cj` | boolean | Optional | false | See CLI help for details |
| 9 | `conf_target` | numeric | Optional | fallback to wallet's default) Confirmation target (in blocks | See CLI help for details |
| 10 | `estimate_mode` | string | Optional | UNSET | See CLI help for details |


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

---
