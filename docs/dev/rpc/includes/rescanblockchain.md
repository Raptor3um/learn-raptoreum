## rescanblockchain
Rescan the local blockchain for wallet related transactions.
Note: Use "getwalletinfo" to query the scanning progress.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | start_height | numeric | False | 0 | block height where the rescan should start |
| 2 | stop_height | numeric | False |  | the last block height that should be scanned. If none is provided it will rescan up to the tip at return time of this call. |

### Result
```json
{                        (json object)
  "start_height" : n,    (numeric) The block height where the rescan started (the requested height or 0)
  "stop_height" : n      (numeric) The height of the last rescanned block. May be null in rare cases if there was a reorg and the call didn't scan any blocks because they were already scanned in the background.
}
```

### Examples
```bash
 raptoreum-cli rescanblockchain 100000 120000
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "rescanblockchain", "params": [100000, 120000] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

