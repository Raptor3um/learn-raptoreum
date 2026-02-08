## gettransaction

Get detailed information about in-wallet transaction <txid>

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 2 | `include_watchonly` | boolean | Optional | false | See CLI help for details |


### Result
```json
{                                          (json object)
  "amount" : n,                            (numeric) The amount in RTM
  "fee" : n,                               (numeric) The amount of the fee in RTM. This is negative and only available for the
                                           'send' category of transactions.
  "confirmations" : n,                     (numeric) The number of blockchain confirmations for the transaction. Available for 'send' and
                                           'receive' category of transactions. Negative confirmations indicate the
                                           transaction conflicts with the block chain
  "instantlock" : true|false,              (boolean) Current transaction lock state. Available for 'send' and 'receive' category of transactions
  "instantlock-internal" : true|false,     (boolean) Current internal transaction lock state. Available for 'send' and 'receive' category of transactions
  "chainlock" : true|false,                (boolean) The state of the corresponding block chainlock
  "trusted" : true|false,                  (boolean) Whether we consider the outputs of this unconfirmed transaction safe to spend.
  "blockhash" : "hex",                     (string) The block hash containing the transaction. Available for 'send' and 'receive'
                                           category of transactions.
  "blockindex" : n,                        (numeric) The index of the transaction in the block that includes it. Available for 'send' and 'receive'
                                           category of transactions.
  "blocktime" : xxx,                       (numeric) The block time expressed in UNIX epoch time.
  "txid" : "hex",                          (string) The transaction id. Available for 'send' and 'receive' category of transactions.
  "time" : xxx,                            (numeric) The transaction time expressed in UNIX epoch time.
  "timereceived" : xxx,                    (numeric) The time received expressed in UNIX epoch time. Available 
                                           for 'send' and 'receive' category of transactions.
  "comment" : "str",                       (string) If a comment is associated with the transaction.
  "details" : [                            (json array)
    {                                      (json object)
      "involvesWatchonly" : true|false,    (boolean) Only returns true if imported addresses were involved in transaction
      "address" : "str",                   (string) The raptoreum address involved in the transaction.
      "category" : "str",                  (string) The category, either 'send' or 'receive'.
                                           
      "amount" : n,                        (numeric) The amount in RTM
      "label" : "str",                     (string) A comment for the address/transaction, if any
      "vout" : n,                          (numeric) the vout value
      "fee" : n,                           (numeric) The amount of the fee in RTM. This is negative and only available for the 
                                           'send' category of transactions.
      "abandoned" : true|false             (boolean) 'true' if the transaction has been abandoned (inputs are respendable). Only available for the 
                                           'send' category of transactions.
    },
    ...
  ],
  "hex" : "hex"                            (string) Raw data for transaction
}
```

### Examples
```bash
 raptoreum-cli gettransaction "1075db55d416d3ca199f55b6084e2115b9345e16c5cf302fc80e9d5fbf5d48d"
```
```bash
 raptoreum-cli gettransaction "1075db55d416d3ca199f55b6084e2115b9345e16c5cf302fc80e9d5fbf5d48d" true
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "gettransaction", "params": ["1075db55d416d3ca199f55b6084e2115b9345e16c5cf302fc80e9d5fbf5d48d"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
