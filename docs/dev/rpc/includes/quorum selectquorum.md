## quorum selectquorum
Returns the quorum that would/should sign a request.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | llmqType | numeric | True |  | LLMQ type. |
| 2 | id | string | True |  | Request id. |

### Examples
```bash
raptoreum-cli quorum selectquorum 1 "id"
```
