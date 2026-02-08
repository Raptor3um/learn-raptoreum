## listreceivedbylabel

List received transactions by label.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | `minconf` | numeric | Optional | 1 | See CLI help for details |
| 2 | `addlocked` | boolean | Optional | false | See CLI help for details |
| 3 | `include_empty` | boolean | Optional | false | See CLI help for details |
| 4 | `include_watchonly` | boolean | Optional | false) Whether to include watch-only addresses (see 'importaddress' | See CLI help for details |


### Result
```json
[                                        (json array)
  {                                      (json object)
    "involvesWatchonly" : true|false,    (boolean) Only returns true if imported addresses were involved in transaction
    "amount" : n,                        (numeric) The total amount received by addresses with this label
    "confirmations" : n,                 (numeric) The number of confirmations of the most recent transaction included
    "label" : "str"                      (string) The label of the receiving address. The default label is ""
  },
  ...
]
```

### Examples
```bash
 raptoreum-cli listreceivedbylabel
```
```bash
 raptoreum-cli listreceivedbylabel 6 true
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listreceivedbylabel", "params": [6, true, true] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
