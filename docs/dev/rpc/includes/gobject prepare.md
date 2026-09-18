## gobject prepare
Prepare governance object by signing and creating tx.

Requires wallet passphrase to be set with `walletpassphrase` call if wallet is encrypted.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | parent-hash | string | True |  | Hash of the parent object, "0" is root. |
| 2 | revision | numeric | True |  | Object revision in the system. |
| 3 | time | numeric | True |  | Time this object was created. |
| 4 | data-hex | string | True |  | Data in hex string form. |
| 5 | use-IS | boolean | False | false | Deprecated and ignored. |
| 6 | outputHash | string | False |  | The single output to submit the proposal fee from. |
| 7 | outputIndex | numeric | False |  | The output index. |

### Examples
```bash
raptoreum-cli gobject prepare "parent-hash" 1 1234567890 "data-hex"
```
