## importprunedfunds
Imports funds without rescan. Corresponding address or script must previously be included in wallet. Aimed towards pruned wallets. The end-user is responsible to import additional transactions that subsequently spend the imported outputs or rescan after the point in the blockchain the transaction is included.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | rawtransaction | string | True |  | A raw transaction in hex funding an already-existing address in wallet |
| 2 | txoutproof | string | True |  | The hex output from gettxoutproof that contains the transaction |

### Result
```json
null    (json null)
```

