## protx update_service
Creates and sends a ProUpServTx to the network. This will update the IP address of a smartnode. If this is done for a smartnode that got PoSe-banned, the ProUpServTx will also revive this smartnode.

Requires wallet passphrase to be set with `walletpassphrase` call if wallet is encrypted.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | proTxHash | string | True |  | The hash of the initial ProRegTx. |
| 2 | ipAndPort | string | True |  | IP and port in the form "IP:PORT". Must be unique on the network. Can be set to 0, which will require a ProUpServTx afterwards. |
| 3 | operatorKey | string | True |  | The operator BLS private key associated with the registered operator public key. |
| 4 | operatorPayoutAddress | string | False |  | The address used for operator reward payments. Only allowed when the ProRegTx had a non-zero operatorReward value. If set to an empty string, the currently active payout address is reused. |
| 5 | feeSourceAddress | string | False |  | If specified, wallet will only use coins from this address to fund ProTx. If not specified, payoutAddress is the one that is going to be used. |

### Result
```json
"hex"    (string) The transaction id
```

### Examples
```bash
raptoreum-cli protx update_service "0123456701234567012345670123456701234567012345670123456701234567" "1.2.3.4:1234" 5a2e15982e62f1e0b7cf9783c64cf7e3af3f90a52d6c40f6f95d624c0b1621cd
```
