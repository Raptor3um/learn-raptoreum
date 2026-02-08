## listtransactions

If a label name is provided, this will return only incoming transactions paying to addresses with the specified label.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 2 | `count` | numeric | Optional | 10 | See CLI help for details |
| 3 | `skip` | numeric | Optional | 0 | See CLI help for details |
| 4 | `include_watchonly` | boolean | Optional | false) Include transactions to watch-only addresses (see 'importaddress' | See CLI help for details |


### Result
```json
[                                           (json array)
  {                                         (json object)
    "involvesWatchonly" : true|false,       (boolean) Only returns true if imported addresses were involved in transaction
    "address" : "str",                      (string) The raptoreum address of the transaction. Not present for
                                            move transactions (category = move).
    "category" : "str",                     (string) The transaction category.
                                            "send"                  Transactions sent.
                                            "coinjoin"              Transactions sent using CoinJoin funds.
                                            "receive"               Non-coinbase transactions received.
                                            "generate"              Coinbase transactions received with more than 100 confirmations.
                                            "immature"              Coinbase transactions received with 100 or fewer confirmations.
                                            "orphan"                Orphaned coinbase transactions received.
                                            
    "amount" : n,                           (numeric) The amount in RTM. This is negative for the 'send' category, and is positive
                                            for all other categories
    "label" : "str",                        (string) A comment for the address/transaction, if any
    "vout" : n,                             (numeric) the vout value
    "fee" : n,                              (numeric) The amount of the fee in RTM. This is negative and only available for the
                                            'send' category of transactions.
    "confirmations" : n,                    (numeric) The number of blockchain confirmations for the transaction. Available for 'send' and
                                            'receive' category of transactions. Negative confirmations indicate the
                                            transaction conflicts with the block chain
    "instantlock" : true|false,             (boolean) Current transaction lock state. Available for 'send' and 'receive' category of transactions
    "instantlock-internal" : true|false,    (boolean) Current internal transaction lock state. Available for 'send' and 'receive' category of transactions
    "chainlock" : true|false,               (boolean) The state of the corresponding block chainlock
    "trusted" : true|false,                 (boolean) Whether we consider the outputs of this unconfirmed transaction safe to spend.
    "blockhash" : "hex",                    (string) The block hash containing the transaction. Available for 'send' and 'receive'
                                            category of transactions.
    "blockindex" : n,                       (numeric) The index of the transaction in the block that includes it. Available for 'send' and 'receive'
                                            category of transactions.
    "blocktime" : xxx,                      (numeric) The block time expressed in UNIX epoch time.
    "txid" : "hex",                         (string) The transaction id. Available for 'send' and 'receive' category of transactions.
    "time" : xxx,                           (numeric) The transaction time expressed in UNIX epoch time.
    "timereceived" : xxx,                   (numeric) The time received expressed in UNIX epoch time. Available 
                                            for 'send' and 'receive' category of transactions.
    "comment" : "str",                      (string) If a comment is associated with the transaction.
    "abandoned" : true|false                (boolean) 'true' if the transaction has been abandoned (inputs are respendable). Only available for the 
                                            'send' category of transactions.
  },
  ...
]
```

### Examples
```bash
List the most recent 10 transactions in the systems
```
```bash
 raptoreum-cli listtransactions
```
```bash
List transactions 100 to 120
```
```bash
 raptoreum-cli listtransactions "" 20 100
```
```bash
As a json rpc call
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listtransactions", "params": ["", 20, 100] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
