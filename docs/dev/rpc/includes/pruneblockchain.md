## pruneblockchain
This allows you to delete block data prior to a given height, reducing the disk space used by your node.
Pruning is irreversible: once blocks are deleted, they must be re-downloaded if you need them later. You typically need to enable prune mode at node startup (-prune=<MB>) before this RPC becomes available.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | height | numeric | True |  | The block height to prune up to. May be set to a discrete height, or to a UNIX epoch time |

### Result
```text
n    (numeric) Height of the last block pruned
```

### Examples
Deletes block data from 0 to 1000 :

```bash
 raptoreum-cli pruneblockchain 1000
```

```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "pruneblockchain", "params": [1000] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

