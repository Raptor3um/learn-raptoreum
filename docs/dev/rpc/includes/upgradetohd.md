## upgradetohd
Upgrades non-HD wallets to HD.
Warning: You will need to make a new backup of your wallet after setting the HD wallet mnemonic.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | mnemonic | string | False |  | Mnemonic as defined in BIP39 to use for the new HD wallet. Use an empty string "" to generate a new random mnemonic. |
| 2 | mnemonicpassphrase | string | False |  | Optional mnemonic passphrase as defined in BIP39 |
| 3 | walletpassphrase | string | False |  | If your wallet is encrypted you must have your wallet passphrase here. If your wallet is not encrypted specifying wallet passphrase will trigger wallet encryption. |

### Result
```text
true|false    (boolean) true if successful
```

### Examples
```bash
 raptoreum-cli upgradetohd
```
```bash
 raptoreum-cli upgradetohd "mnemonicword1 ... mnemonicwordN"
```
```bash
 raptoreum-cli upgradetohd "mnemonicword1 ... mnemonicwordN" "mnemonicpassphrase"
```
```bash
 raptoreum-cli upgradetohd "mnemonicword1 ... mnemonicwordN" "mnemonicpassphrase" "walletpassphrase"
```

