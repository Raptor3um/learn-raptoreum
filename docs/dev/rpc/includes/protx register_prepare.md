## protx register_prepare
Creates an unsigned ProTx and a message that must be signed externally with the private key that corresponds to collateralAddress to prove collateral ownership. The prepared transaction will also contain inputs and outputs to cover fees.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | collateralHash | string | True |  | The collateral transaction hash. |
| 2 | collateralIndex | numeric | True |  | The collateral transaction output index. |
| 3 | ipAndPort | string | True |  | IP and port in the form "IP:PORT". Must be unique on the network. Can be set to 0, which will require a ProUpServTx afterwards. |
| 4 | ownerAddress | string | True |  | The raptoreum address to use for payee updates and proposal voting. The corresponding private key does not have to be known by your wallet. The address must be unused and must differ from the collateralAddress. |
| 5 | operatorPubKey_register | string | True |  | The operator BLS public key. The BLS private key does not have to be known. It has to match the BLS private key which is later used when operating the smartnode. |
| 6 | votingAddress_register | string | True |  | The voting key address. The private key does not have to be known by your wallet. It has to match the private key which is later used when voting on proposals. If set to an empty string, ownerAddress will be used. |
| 7 | operatorReward | string | True |  | The fraction in %% to share with the operator. The value must be between 0.00 and 100.00. |
| 8 | payoutAddress_register | string | True |  | The raptoreum address to use for smartnode reward payments. |
| 9 | feeSourceAddress | string | False |  | If specified, wallet will only use coins from this address to fund ProTx. If not specified, payoutAddress is the one that is going to be used. |

### Result
```json
{                                 (json object)
  "tx" : "hex",                   (string) The serialized unsigned ProTx in hex format
  "collateralAddress" : "hex",    (string) The collateral address
  "signMessage" : "hex"           (string) The string message that needs to be signed with the collateral key
}
```

### Examples
```bash
raptoreum-cli protx register_prepare "0123456701234567012345670123456701234567012345670123456701234567" 0 "1.2.3.4:1234" "Xt9AMWaYSz7tR7Uo7gzXA3m4QmeWgrR3rr" "93746e8731c57f87f79b3620a7982924e2931717d49540a85864bd543de11c43fb868fd63e501a1db37e19ed59ae6db4" "Xt9AMWaYSz7tR7Uo7gzXA3m4QmeWgrR3rr" 0 "XrVhS9LogauRJGJu2sHuryjhpuex4RNPSb"
```
