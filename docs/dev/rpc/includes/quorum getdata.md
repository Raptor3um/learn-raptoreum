## quorum getdata
Send a QGETDATA message to the specified peer.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | nodeId | numeric | True |  | The internal nodeId of the peer to request quorum data from. |
| 2 | llmqType | numeric | True |  | The quorum type related to the quorum data being requested. |
| 3 | quorumHash | string | True |  | The quorum hash related to the quorum data being requested. |
| 4 | dataMask | numeric | True |  | Specify what data to request. Possible values: `1` - Request quorum verification vector. `2` - Request encrypted contributions for member defined by "proTxHash". "proTxHash" must be specified if this option is used. `3` - Request both, 1 and 2. |
| 5 | proTxHash | string | False |  | The proTxHash the contributions will be requested for. Must be member of the specified LLMQ. |

### Examples
```bash
raptoreum-cli quorum getdata 1 1 "quorumHash" 3 "proTxHash"
```
