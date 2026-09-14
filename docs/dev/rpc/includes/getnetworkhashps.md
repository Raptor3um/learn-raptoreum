## getnetworkhashps
Returns the estimated network hashes per second based on the last n blocks.
Pass in [blocks] to override # of blocks, -1 specifies since last difficulty change.
Pass in [height] to estimate the network speed at the time when a certain block was found.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | nblocks | numeric | False | 120 | The number of blocks, or -1 for blocks since last difficulty change. |
| 2 | height | numeric | False | -1 | To estimate at the time of the given height. |

### Result
```text
n    (numeric) Hashes per second estimated
```

### Examples
```bash
 raptoreum-cli getnetworkhashps
```

```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getnetworkhashps", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

