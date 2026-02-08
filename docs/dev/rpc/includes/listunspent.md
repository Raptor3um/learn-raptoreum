## listunspent

Returns array of unspent transaction outputs

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | `minconf` | numeric | Optional | 1 | See CLI help for details |
| 2 | `maxconf` | numeric | Optional | 9999999 | See CLI help for details |
| 3 | `addresses` | json array | Optional | empty array | See CLI help for details |
| 4 | `include_unsafe` | boolean | Optional | true | See CLI help for details |


### Result
```json
[                                (json array)
  {                              (json object)
    "txid" : "hex",              (string) the transaction id
    "vout" : n,                  (numeric) the vout value
    "address" : "str",           (string) the raptoreum address
    "label" : "str",             (string) The associated label, or "" for the default label
    "scriptPubKey" : "str",      (string) the script key
    "amount" : n,                (numeric) the transaction output amount in RTM
    "confirmations" : n,         (numeric) The number of confirmations
    "redeemScript" : "hex",      (string) The redeemScript if scriptPubKey is P2SH
    "spendable" : true|false,    (boolean) Whether we have the private keys to spend this output
    "solvable" : true|false,     (boolean) Whether we know how to spend this output, ignoring the lack of keys
    "desc" : "str",              (string) (only when solvable) A descriptor for spending this output
    "safe" : true|false,         (boolean) Whether this output is considered safe to spend. Unconfirmed transactions                             from outside keys and unconfirmed replacement transactions are considered unsafe
                                 and are not eligible for spending by fundrawtransaction and sendtoaddress.
    "coinjoin_rounds" : n        (numeric) The number of CoinJoin rounds
  },
  ...
]
```

### Examples
```bash
 raptoreum-cli listunspent
```
```bash
 raptoreum-cli listunspent 6 9999999 "[\"XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg\",\"XuQQkwA4FYkq2XERzMY2CiAZhJTEDAbtcg\"]"
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listunspent", "params": [6, 9999999 "[\"XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg\",\"XuQQkwA4FYkq2XERzMY2CiAZhJTEDAbtcg\"]"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```
```bash
 raptoreum-cli listunspent 6 9999999 '[]' true '{ "minimumAmount": 0.005 }'
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listunspent", "params": [6, 9999999, [] , true, { "minimumAmount": 0.005 } ] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
