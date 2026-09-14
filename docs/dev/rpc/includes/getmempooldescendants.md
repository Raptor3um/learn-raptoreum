## getmempooldescendants
If txid is in the mempool, returns all in-mempool descendants.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | txid | string | True |  | The transaction id (must be in mempool) |
| 2 | verbose | boolean | False | false | True for a json object, false for array of transaction ids |

### Result
```json
Result (for verbose = false):
[           (json array)
  "hex",    (string) The transaction id of an in-mempool descendant transaction
  ...
]

Result (for verbose = true):
{                             (json object)
  "transactionid" : {         (json object)
    "size" : n,               (numeric) virtual transaction size. This can be different from actual serialized size for high-sigop transactions.
    "fee" : n,                (numeric) transaction fee in RTM
    "modifiedfee" : n,        (numeric) transaction fee with fee deltas used for mining priority
    "time" : xxx,             (numeric) local time transaction entered pool in UNIX epoch time
    "height" : n,             (numeric) block height when transaction entered pool
    "descendantcount" : n,    (numeric) number of in-mempool descendant transactions (including this one)
    "descendantsize" : n,     (numeric) size of in-mempool descendants (including this one)
    "descendantfees" : n,     (numeric) modified fees (see above) of in-mempool descendants (including this one) (DEPRECATED)
    "ancestorcount" : n,      (numeric) number of in-mempool ancestor transactions (including this one)
    "ancestorsize" : n,       (numeric) size of in-mempool ancestors (including this one)
    "ancestorfees" : n,       (numeric) modified fees (see above) of in-mempool ancestors (including this one) (DEPRECATED)
    "fees" : {                (json object)
      "base" : n,             (numeric) transaction fee in RTM
      "modified" : n,         (numeric) transaction fee with fee deltas used for mining priority in RTM
      "ancestor" : n,         (numeric) transaction fees of in-mempool ancestors (including this one) in RTM
      "descendant" : n        (numeric) transaction fees of in-mempool descendants (including this one) in RTM
    },
    "depends" : [             (json array) unconfirmed transactions used as inputs for this transaction
      "hex",                  (string) parent transaction id
      ...
    ],
    "spentby" : [             (json array) unconfirmed transactions spending outputs from this transaction
      "hex",                  (string) child transaction id
      ...
    ],
    "time" : true|false,      (boolean) True if this transaction was locked via InstantSend
    ...
  }
}
```

### Examples
```bash
 raptoreum-cli getmempooldescendants "mytxid"
```

```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getmempooldescendants", "params": ["mytxid"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

