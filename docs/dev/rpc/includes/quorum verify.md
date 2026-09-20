## quorum verify
Test if a quorum signature is valid for a request id and a message hash.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | llmqType | numeric | True |  | LLMQ type. |
| 2 | id | string | True |  | Request id. |
| 3 | msgHash | string | True |  | Message hash. |
| 4 | signature | string | True |  | Quorum signature to verify. |
| 5 | quorumHash | string | False |  | The quorum identifier. Set to "" if you want to specify signHeight instead. |
| 6 | signHeight | numeric | False |  | The height at which the message was signed. Only works when quorumHash is "". |

### Examples
```bash
raptoreum-cli quorum verify 1 "id" "msgHash" "signature"
```
