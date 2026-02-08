## getbestchainlock

Returns information about the best chainlock. Throws an error if there is no known chainlock yet.

### Arguments

No arguments.

### Result
```json
{                                (json object)
  "hash" : "hex",                (string) The block hash hex encoded
  "height" : n,                  (numeric) The block height or index
  "signature" : "hex",           (string) The chainlock's BLS signature.
  "known_block" : true|false     (boolean) True if the block is known by our node
}
```

### Examples
```bash
 raptoreum-cli getbestchainlock
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getbestchainlock", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
