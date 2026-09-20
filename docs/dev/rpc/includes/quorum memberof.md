## quorum memberof
Checks which quorums the given smartnode is a member of.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | proTxHash | string | True |  | ProTxHash of the smartnode. |
| 2 | scanQuorumsCount | numeric | False |  | Number of quorums to scan for. If not specified, the active quorum count for each specific quorum type is used. |

### Examples
```bash
raptoreum-cli quorum memberof "proTxHash" 5
```
