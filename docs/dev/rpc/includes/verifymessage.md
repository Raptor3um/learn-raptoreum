## verifymessage

Verify a signed message

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |


### Result
```json
true|false    (boolean) If the signature is verified or not.
```

### Examples
```bash
Unlock the wallet for 30 seconds
```
```bash
 raptoreum-cli walletpassphrase "mypassphrase" 30
```
```bash
Create the signature
```
```bash
 raptoreum-cli signmessage "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" "my message"
```
```bash
Verify the signature
```
```bash
 raptoreum-cli verifymessage "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" "signature" "my message"
```
```bash
As json rpc
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "verifymessage", "params": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG", "signature", "my message"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
