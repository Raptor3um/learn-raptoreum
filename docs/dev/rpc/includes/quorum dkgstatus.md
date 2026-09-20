## quorum dkgstatus
Return the status of the current DKG process. Works only when SPORK_17_QUORUM_DKG_ENABLED spork is ON.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | detail_level | numeric | False | 0 | Detail level of output. `0`=Only show counts. `1`=Show member indexes. `2`=Show member's ProTxHashes. |

### Examples
```bash
raptoreum-cli quorum dkgstatus 1
```
