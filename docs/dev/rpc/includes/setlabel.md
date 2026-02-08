## setlabel

Sets the label associated with the given address.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |


### Result
```json
null    (json null)
```

### Examples
```bash
 raptoreum-cli setlabel "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" "tabby"
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "setlabel", "params": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG", "tabby"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
