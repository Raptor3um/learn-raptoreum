## listsinceblock

Get all transactions in blocks since block [blockhash], or all transactions if omitted.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 2 | `target_confirmations` | numeric | Optional | 1 | See CLI help for details |
| 3 | `include_watchonly` | boolean | Optional | false) Include transactions to watch-only addresses (see 'importaddress' | See CLI help for details |
| 4 | `include_removed` | boolean | Optional | true | See CLI help for details |


### Result
```json
{                                             (json object)
  "transactions" : [                          (json array)
    {                                         (json object)
      "involvesWatchonly" : true|false,       (boolean) Only returns true if imported addresses were involved in transaction
      "address" : "str",                      (string) The raptoreum address of the transaction. Not present for move transactions (category = move).
      "category" : "str",                     (string) The transaction category. 'send' has negative amounts, 'receive' has positive amounts.
      "amount" : n,                           (numeric) The amount in RTM. This is negative for the 'send' category, and for the 'move' category for moves 
                                              outbound. It is positive for the 'receive' category, and for the 'move' category for inbound funds.
      "vout" : n,                             (numeric) the vout value
      "fee" : n,                              (numeric) The amount of the fee in RTM. This is negative and only available for the 'send' category of transactions.
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
      "abandoned" : true|false,               (boolean) 'true' if the transaction has been abandoned (inputs are respendable). Only available for the 'send' category of transactions.
      "comment" : "str",                      (string) If a comment is associated with the transaction.
      "label" : "str",                        (string) A comment for the address/transaction, if any.
      "to" : "str"                            (string) If a comment to is associated with the transaction.
    },
    ...
  ],
  "removed" : [                               (json array) <structure is the same as "transactions" above, only present if include_removed=true>
                                              Note: transactions that were re-added in the active chain will appear as-is in this array, and may thus have a positive confirmation count.
    ...
  ],
  "lastblockhash" : "hex"                     (string) The hash of the block (target_confirmations-1) from the best block on the main chain. This is typically used to feed back into listsinceblock the next time you call it. So you would generally use a target_confirmations of say 6, so you will be continually re-notified of transactions until they've reached 6 confirmations plus any new ones.
}
```

### Examples
```bash
 raptoreum-cli listsinceblock
```
```bash
 raptoreum-cli listsinceblock "000000000000000bacf66f7497b7dc45ef753ee9a7d38571037cdb1a57f663ad" 6
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listsinceblock", "params": ["000000000000000bacf66f7497b7dc45ef753ee9a7d38571037cdb1a57f663ad", 6] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
