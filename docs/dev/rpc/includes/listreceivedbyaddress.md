## listreceivedbyaddress
List balances by receiving address.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | minconf | numeric | False | 1 | The minimum number of confirmations before payments are included. |
| 2 | addlocked | boolean | False | false | Whether to include transactions locked via InstantSend. |
| 3 | include_empty | boolean | False | false | Whether to include addresses that haven't received any payments. |
| 4 | include_watchonly | boolean | False | false | Whether to include watch-only addresses (see 'importaddress'). |
| 5 | address_filter | string | False |  | If present, only return information on this address. |

### Result
```json
[                                        (json array)
  {                                      (json object)
    "involvesWatchonly" : true|false,    (boolean) Only returns true if imported addresses were involved in transaction
    "address" : "str",                   (string) The receiving address
    "amount" : n,                        (numeric) The total amount in RTM received by the address
    "confirmations" : n,                 (numeric) The number of confirmations of the most recent transaction included.
                                         If 'addlocked' is true, the number of confirmations can be less than
                                         configured for transactions locked via InstantSend
    "label" : "str",                     (string) The label of the receiving address. The default label is ""
    "txids" : [                          (json array)
      "hex",                             (string) The ids of transactions received with the address
      ...
    ]
  },
  ...
]
```

### Examples
```bash
 raptoreum-cli listreceivedbyaddress
```
```bash
 raptoreum-cli listreceivedbyaddress 6 false true
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listreceivedbyaddress", "params": [6, false, true, true] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listreceivedbyaddress", "params": [6, false, true, true, "XbtdLrTsrPDhGy1wXtwKYoBpuKovE3JeBK"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

