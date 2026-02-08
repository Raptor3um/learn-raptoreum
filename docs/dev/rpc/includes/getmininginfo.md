## getmininginfo

Returns a json object containing mining-related information.

### Arguments

No arguments.

### Result
```json
{                            (json object)
  "blocks" : n,              (numeric) The current block
  "currentblocksize" : n,    (numeric, optional) The last block size
  "currentblocktx" : n,      (numeric, optional) The number of block transactions of the last block
  "difficulty" : n,          (numeric) The current difficulty
  "networkhashps" : n,       (numeric) The network hashes per second
  "hashespersec" : n,        (numeric) Your current hashes per second
  "algos" : "str",           (string) Current solving block algos orders
  "pooledtx" : n,            (numeric) The size of the mempool
  "chain" : "str",           (string) current network name (main, test, regtest)
  "warnings" : "str"         (string) any network and blockchain warnings
}
```

### Examples
```bash
 raptoreum-cli getmininginfo
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getmininginfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
