## signmessagewithprivkey

Sign a message with the private key of an address

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |


### Result
```json
"str"    (string) The signature of the message encoded in base 64
```

### Examples
```bash
Create the signature
```
```bash
 raptoreum-cli signmessagewithprivkey "privkey" "my message"
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
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "signmessagewithprivkey", "params": ["privkey", "my message"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
