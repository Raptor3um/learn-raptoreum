## gobject list-prepared
Returns a list of governance objects prepared by this wallet with "gobject prepare" sorted by their creation time.

Requires wallet passphrase to be set with `walletpassphrase` call if wallet is encrypted.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | count | numeric | False | 10 | Maximum number of objects to return. |

### Examples
```bash
raptoreum-cli gobject list-prepared 10
```
