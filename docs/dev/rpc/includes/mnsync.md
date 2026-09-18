## mnsync
Returns the sync status, updates to the next step or resets it entirely.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | mode | string | True |  | [status|next|reset] |

### Result
```json
{
  "AssetID": 999,
  "AssetName": "SMARTNODE_SYNC_FINISHED",
  "AssetStartTime": 1789738032,
  "Attempt": 0,
  "IsBlockchainSynced": true,
  "IsSynced": true
}
```

### Examples
```bash
 raptoreum-cli mnsync status
```
