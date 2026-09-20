## walletpassphrase
Stores the wallet decryption key in memory for 'timeout' seconds.
This is needed prior to performing transactions related to private keys such as sending raptoreum
Note:
Issuing the walletpassphrase command while the wallet is already unlocked will set a new unlock
time that overrides the old one.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | passphrase | string | True |  | The wallet passphrase |
| 2 | timeout | numeric | True |  | The time to keep the decryption key in seconds; capped at 100000000 (~3 years). |
| 3 | mixingonly | boolean | False | false | If is true sending functions are disabled. |

### Result
```json
null    (json null)
```

### Examples

Unlock the wallet for 60 seconds:

```bash
 raptoreum-cli walletpassphrase "my pass phrase" 60
```

Unlock the wallet for 60 seconds but allow CoinJoin only:

```bash
 raptoreum-cli walletpassphrase "my pass phrase" 60 true
```
 Lock the wallet again (before 60 seconds):

```bash
 raptoreum-cli walletlock
```

As a JSON-RPC call:

```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "walletpassphrase", "params": ["my pass phrase", 60] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

