## dumpprivkey

Reveals the private key corresponding to 'address'.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |


### Result
```json
"str"    (string) The private key
```

### Examples
```bash
 raptoreum-cli dumpprivkey "myaddress"
```
```bash
 raptoreum-cli importprivkey "mykey"
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "dumpprivkey", "params": ["myaddress"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
