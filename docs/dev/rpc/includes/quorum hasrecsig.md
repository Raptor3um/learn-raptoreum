## quorum hasrecsig
Test if a valid recovered signature is present.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | llmqType | numeric | True |  | LLMQ type. |
| 2 | id | string | True |  | Request id. |
| 3 | msgHash | string | True |  | Message hash. |

### Examples
```bash
raptoreum-cli quorum hasrecsig 1 "id" "msgHash"
```
