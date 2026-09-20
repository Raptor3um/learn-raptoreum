## quorum info
Return information about a quorum.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | llmqType | numeric | True |  | LLMQ type. |
| 2 | quorumHash | string | True |  | Block hash of quorum. |
| 3 | includeSkShare | boolean | False |  | Include secret key share in output. |

### Examples
```bash
raptoreum-cli quorum info 1 "quorumHash" true
```
