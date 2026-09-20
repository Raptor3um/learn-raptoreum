## protx register_submit
Combines the unsigned ProTx and a signature of the signMessage, signs all inputs which were added to cover fees, and submits the resulting transaction to the network.
Note: See "help protx register_prepare" for more info about creating a ProTx and a message to sign.

Requires wallet passphrase to be set with `walletpassphrase` call if wallet is encrypted.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | tx | string | True |  | The serialized unsigned ProTx in hex format. |
| 2 | sig | string | True |  | The signature signed with the collateral key. Must be in base64 format. |

### Result
```json
"hex"    (string) The transaction id
```

### Examples
```bash
raptoreum-cli protx register_submit "tx" "sig"
```
