## getblockstats

Compute per block statistics for a given window. All amounts are in duffs.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 2 | `stats` | json array | Optional | all values) Values to plot (see result below | See CLI help for details |


### Result
```json
{                         (json object)
  "avgfee" : n,           (numeric) Average fee in the block
  "avgfeerate" : n,       (numeric) Average feerate (in satoshis per virtual byte)
  "avgtxsize" : n,        (numeric) Average transaction size
  "blockhash" : "hex",    (string) The block hash (to check for potential reorgs)
  "height" : n,           (numeric) The height of the block
  "ins" : n,              (numeric) The number of inputs (excluding coinbase)
  "maxfee" : n,           (numeric) Maximum fee in the block
  "maxfeerate" : n,       (numeric) Maximum feerate (in satoshis per virtual byte)
  "maxtxsize" : n,        (numeric) Maximum transaction size
  "medianfee" : n,        (numeric) Truncated median fee in the block
  "mediantime" : n,       (numeric) The block median time past
  "mediantxsize" : n,     (numeric) Truncated median transaction size
  "minfee" : n,           (numeric) Minimum fee in the block
  "minfeerate" : n,       (numeric) Minimum feerate (in satoshis per virtual byte)
  "mintxsize" : n,        (numeric) Minimum transaction size
  "outs" : n,             (numeric) The number of outputs
  "subsidy" : n,          (numeric) The block subsidy
  "time" : n,             (numeric) The block time
  "total_out" : n,        (numeric) Total amount in all outputs (excluding coinbase and thus reward [ie subsidy + totalfee])
  "total_size" : n,       (numeric) Total size of all non-coinbase transactions
  "totalfee" : n,         (numeric) The fee total
  "txs" : n,              (numeric) The number of transactions (excluding coinbase)
  "utxo_increase" : n,    (numeric) The increase/decrease in the number of unspent outputs
  "utxo_size_inc" : n     (numeric) The increase/decrease in size for the utxo index (not discounting op_return and similar)
}
```

### Examples
```bash
 raptoreum-cli getblockstats '"00000000c937983704a73af28acdec37b049d214adbda81d7e2a3dd146f6ed09"' '["minfeerate","avgfeerate"]'
```
```bash
 raptoreum-cli getblockstats 1000 '["minfeerate","avgfeerate"]'
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblockstats", "params": ["00000000c937983704a73af28acdec37b049d214adbda81d7e2a3dd146f6ed09", ["minfeerate","avgfeerate"]] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblockstats", "params": [1000, ["minfeerate","avgfeerate"]] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
