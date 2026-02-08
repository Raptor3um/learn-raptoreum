## scantxoutset

EXPERIMENTAL warning: this call may be removed or changed in future releases.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |


### Result
```json
{                                (json object)
  "success" : true|false,        (boolean) Whether the scan was completed
  "txouts" : n,                  (numeric) The number of unspent transaction outputs scanned
  "height" : n,                  (numeric) The current block height (index)
  "bestblock" : "hex",           (string) The hash of the block at the tip of the chain
  "unspents" : [                 (json array)
    {                            (json object)
      "txid" : "hex",            (string) The transaction id
      "vout" : n,                (numeric) The vout value
      "scriptPubKey" : "hex",    (string) The script key
      "desc" : "str",            (string) A specialized descriptor for the matched scriptPubKey
      "amount" : n,              (numeric) The total amount in RTM of the unspent output
      "height" : n               (numeric) Height of the unspent transaction output
    },
    ...
  ],
  "total_amount" : n             (numeric) The total amount of all found unspent outputs in RTM
}
```


---
