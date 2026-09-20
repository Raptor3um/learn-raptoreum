## quorum getrecsig
Get a recovered signature.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | llmqType | numeric | True |  | LLMQ type. |
| 2 | id | string | True |  | Request id. |
| 3 | msgHash | string | True |  | Message hash. |

### Examples
```bash
raptoreum-cli quorum getrecsig 1 "id" "msgHash"
```
