## getmempoolentry

Returns mempool data for given transaction

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |


### Result
```json
{                           (json object)
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
```

### Examples
```bash
 raptoreum-cli getmempoolentry "mytxid"
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getmempoolentry", "params": ["mytxid"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
