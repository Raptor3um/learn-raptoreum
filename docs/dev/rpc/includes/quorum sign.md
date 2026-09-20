## quorum sign
Threshold-sign a message.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | llmqType | numeric | True |  | LLMQ type. |
| 2 | id | string | True |  | Request id. |
| 3 | msgHash | string | True |  | Message hash. |
| 4 | quorumHash | string | False |  | The quorum identifier. |
| 5 | submit | boolean | False | true | Submits the signature share to the network if this is true. Returns an object containing the signature share if this is false. |

### Examples
```bash
raptoreum-cli quorum sign 1 "id" "msgHash"
```
