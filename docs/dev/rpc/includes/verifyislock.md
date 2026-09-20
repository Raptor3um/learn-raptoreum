## verifyislock
Test if a quorum signature is valid for an InstantSend Lock.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | id | string | True |  | Request id. |
| 2 | txid | string | True |  | The transaction id. |
| 3 | signature | string | True |  | The InstantSend Lock signature to verify. |
| 4 | maxHeight | numeric | False |  | The maximum height to search quorums from. |

