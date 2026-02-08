## upgradetohd

Upgrades non-HD wallets to HD.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | `mnemonic` | string | Optional | [] | See CLI help for details |
| 2 | `mnemonicpassphrase` | string | Optional | [] | See CLI help for details |
| 3 | `walletpassphrase` | string | Optional | [] | See CLI help for details |


### Result
```json
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

---
