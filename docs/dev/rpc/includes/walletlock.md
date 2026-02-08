## walletlock

Removes the wallet encryption key from memory, locking the wallet.

### Arguments

No arguments.

### Result
```json
null    (json null)
```

### Examples
```bash
Set the passphrase for 2 minutes to perform a transaction
```
```bash
 raptoreum-cli walletpassphrase "my pass phrase" 120
```
```bash
Perform a send (requires passphrase set)
```
```bash
 raptoreum-cli sendtoaddress "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" 1.0
```
```bash
Clear the passphrase since we are done before 2 minutes is up
```
```bash
 raptoreum-cli walletlock
```
```bash
As a JSON-RPC call
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "walletlock", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
