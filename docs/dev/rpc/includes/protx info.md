## protx info
Returns detailed information about a deterministic smartnode.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | proTxHash | string | True |  | The hash of the initial ProRegTx. |

### Result
```json
{         (json object) Details about a specific deterministic smartnode
  ...
}
```

### Examples
```bash
raptoreum-cli protx info "0123456701234567012345670123456701234567012345670123456701234567"
```
