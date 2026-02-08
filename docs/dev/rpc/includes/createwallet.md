## createwallet

Creates and loads a new wallet.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 2 | `disable_private_keys` | boolean | Optional | false) Disable the possibility of private keys (only watchonlys are possible in this mode | See CLI help for details |
| 3 | `blank` | boolean | Optional | false | See CLI help for details |


### Result
```json
{                       (json object)
  "name" : "str",       (string) The wallet name if created successfully. If the wallet was created using a full path, the wallet_name will be the full path.
  "warning" : "str"     (string) Warning message if wallet was not loaded cleanly.
}
```

### Examples
```bash
 raptoreum-cli createwallet "testwallet"
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "createwallet", "params": ["testwallet"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
