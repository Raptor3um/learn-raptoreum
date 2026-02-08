## gettxoutsetinfo

Returns statistics about the unspent transaction output set.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | `hash_type` | string | Optional | hash_serialized_2) Which UTXO set hash should be calculated. Options: 'hash_serialized_2' (the legacy algorithm | See CLI help for details |


### Result
```json
{                                 (json object)
  "height" : n,                   (numeric) The current block height (index)
  "bestblock" : "hex",            (string) The hash of the block at the tip of the chain
  "transactions" : n,             (numeric) The number of transactions with unspent outputs
  "txouts" : n,                   (numeric) The number of unspent transaction outputs
  "bogosize" : n,                 (numeric) A meaningless metric for UTXO set size
  "hash_serialized_2" : "hex",    (string, optional) The serialized hash (only present if 'hash_serialized_2' hash_type is chosen)
  "disk_size" : n,                (numeric) The estimated size of the chainstate on disk
  "total_amount" : n              (numeric) The total amount
}
```

### Examples
```bash
 raptoreum-cli gettxoutsetinfo
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "gettxoutsetinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
