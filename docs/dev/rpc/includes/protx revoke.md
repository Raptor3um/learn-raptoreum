## protx revoke
Creates and sends a ProUpRevTx to the network. This will revoke the operator key of the smartnode and put it into the PoSe-banned state. It will also set the service field of the smartnode to zero. Use this in case your operator key got compromised or you want to stop providing your service to the smartnode owner.

Requires wallet passphrase to be set with `walletpassphrase` call if wallet is encrypted.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | proTxHash | string | True |  | The hash of the initial ProRegTx. |
| 2 | operatorKey | string | True |  | The operator BLS private key associated with the registered operator public key. |
| 3 | reason | numeric | False |  | The reason for smartnode service revocation. |
| 4 | feeSourceAddress | string | False |  | If specified, wallet will only use coins from this address to fund ProTx. If not specified, payoutAddress is the one that is going to be used. |

### Result
```json
"hex"    (string) The transaction id
```

### Examples
```bash
raptoreum-cli protx revoke "0123456701234567012345670123456701234567012345670123456701234567" "072f36a77261cdd5d64c32d97bac417540eddca1d5612f416feb07ff75a8e240"
```
