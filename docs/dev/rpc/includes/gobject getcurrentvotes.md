## gobject getcurrentvotes
Get only current (tallying) votes for a governance object hash (does not include old votes).

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | governance-hash | string | True |  | Object id. |
| 2 | txid | string | False |  | Smartnode collateral txid. |
| 3 | vout | string | False |  | Smartnode collateral output index, required if `txid` is present. |

### Examples
```bash
raptoreum-cli gobject getcurrentvotes "governance-hash"
```
