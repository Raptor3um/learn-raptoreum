## encryptwallet

Encrypts the wallet with 'passphrase'. This is for first time encryption.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |


### Result
```json
"str"    (string) A string with further instructions
```

### Examples
```bash
Encrypt your wallet
```
```bash
 raptoreum-cli encryptwallet "my pass phrase"
```
```bash
Now set the passphrase to use the wallet, such as for signing or sending raptoreum
```
```bash
 raptoreum-cli walletpassphrase "my pass phrase"
```
```bash
Now we can do something like sign
```
```bash
 raptoreum-cli signmessage "address" "test message"
```
```bash
Now lock the wallet again by removing the passphrase
```
```bash
 raptoreum-cli walletlock
```
```bash
As a JSON-RPC call
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "encryptwallet", "params": ["my pass phrase"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
