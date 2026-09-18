## keypoolrefill
Fills the keypool.
Requires wallet passphrase to be set with walletpassphrase call if wallet is encrypted.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | newsize | numeric | False | 1000 | The new keypool size |

### Result
```json
null    (json null)
```

### Examples
```bash
 raptoreum-cli keypoolrefill
```

```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "keypoolrefill", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

