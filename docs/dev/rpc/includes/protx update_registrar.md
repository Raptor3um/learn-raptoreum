## protx update_registrar
Creates and sends a ProUpRegTx to the network. This will update the operator key, voting key and payout address of the smartnode specified by "proTxHash". The owner key of the smartnode must be known to your wallet.

Requires wallet passphrase to be set with `walletpassphrase` call if wallet is encrypted.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | proTxHash | string | True |  | The hash of the initial ProRegTx. |
| 2 | operatorPubKey_update | string | True |  | The operator BLS public key. The BLS private key does not have to be known. It has to match the BLS private key which is later used when operating the smartnode. If set to an empty string, the currently active operator BLS public key is reused. |
| 3 | votingAddress_update | string | True |  | The voting key address. The private key does not have to be known by your wallet. It has to match the private key which is later used when voting on proposals. If set to an empty string, the currently active voting key address is reused. |
| 4 | payoutAddress_update | string | True |  | The raptoreum address to use for smartnode reward payments. If set to an empty string, the currently active payout address is reused. |
| 5 | feeSourceAddress | string | False |  | If specified, wallet will only use coins from this address to fund ProTx. If not specified, payoutAddress is the one that is going to be used. |

### Result
```json
"hex"    (string) The transaction id
```

### Examples
```bash
raptoreum-cli protx update_registrar "0123456701234567012345670123456701234567012345670123456701234567" "982eb34b7c7f614f29e5c665bc3605f1beeef85e3395ca12d3be49d2868ecfea5566f11cedfad30c51b2403f2ad95b67" "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG"
```
