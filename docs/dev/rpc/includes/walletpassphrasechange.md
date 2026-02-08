## walletpassphrasechange

Changes the wallet passphrase from 'oldpassphrase' to 'newpassphrase'.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |


### Result
```json
null    (json null)
```

### Examples
```bash
 raptoreum-cli walletpassphrasechange "old one" "new one"
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "walletpassphrasechange", "params": ["old one", "new one"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
