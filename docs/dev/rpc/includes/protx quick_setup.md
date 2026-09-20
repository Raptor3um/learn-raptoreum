## protx quick_setup
Register protx transaction from collateral inputs. This command will generate voting address, owner address, operation pubkey with 0 operation reward and use them for register_prepare. bls generate is also called to generate public and secret keys for the operator. It then uses the register_prepare output to sign the collateral message. Finally, it sends the protx transaction with protx register_submit. feeAddress is added to "protx register_prepare" to cover transaction fees.
Requires wallet passphrase to be set with `walletpassphrase` call if wallet is encrypted.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | collateralHash | string | True |  | The collateral transaction hash. |
| 2 | collateralIndex | numeric | True |  | The collateral transaction output index. |
| 3 | ipAndPort | string | True |  | IP and port in the form "IP:PORT". Must be unique on the network. Can be set to 0, which will require a ProUpServTx afterwards. |
| 4 | feeSourceAddress | string | False |  | If specified, wallet will only use coins from this address to fund ProTx. If not specified, payoutAddress is the one that is going to be used. |

### Result
```json
{                                 (json object)
  "txid" : "hex",                 (string) The transaction id for submitted protx register_submit.
  "tx" : "hex",                   (string) The raw transaction hex of this protx without signature.
  "ownerAddress" : "str",         (string) The generated owner address.
  "votingAddress" : "str",        (string) The generated voting address.
  "payoutAddress" : "str",        (string) The generated payout address.
  "collateralAddress" : "str",    (string) The collateral address for this collateralHash.
  "collateralAmount" : "str",     (string) The collateral amount used for this protx.
  "operationPubkey" : "hex",      (string) The public key from bls generate.
  "operationSecret" : "hex",      (string) The secret key from bls generate.
  "raptoreum.conf" : "str"        (string) The content of raptoreum.conf to be used in the VPS node.
}
```

### Examples
```bash
raptoreum-cli protx quick_setup "collateralHash" "collateralIndex" "ipAndPort" "feeSourceAddress"
```
