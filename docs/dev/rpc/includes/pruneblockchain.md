## pruneblockchain

1. height    (numeric, required) The block height to prune up to. May be set to a discrete height, or to a UNIX epoch time

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |


### Result
```json
n    (numeric) Height of the last block pruned
```

### Examples
```bash
 raptoreum-cli pruneblockchain 1000
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "pruneblockchain", "params": [1000] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
