## getmempoolinfo

Returns details on the active state of the TX memory pool.

### Arguments

No arguments.

### Result
```json
{                            (json object)
  "status" : true|false,     (boolean) True if mempool is fully loaded
  "size" : n,                (numeric) Current tx count
  "bytes" : n,               (numeric) Sum of all transaction sizes
  "usage" : n,               (numeric) Total memory usage for the mempool
  "maxmempool" : n,          (numeric) Maximum memory usage for the mempool
  "mempoolminfee" : n,       (numeric) Minimum fee rate in RTM/kB for tx to be accepted. Is the maximum of minrelaytxfee and minimum mempool fee
  "minrelaytxfee" : n,       (numeric) Current minimum relay fee for transactions
  "instantsendlocks" : n     (numeric) Number of unconfirmed InstantSend locks
}
```

### Examples
```bash
 raptoreum-cli getmempoolinfo
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getmempoolinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
