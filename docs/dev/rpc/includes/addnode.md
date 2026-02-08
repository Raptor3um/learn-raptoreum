## addnode

Attempts to add or remove a node from the addnode list.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |


### Result
```json
null    (json null)
```

### Examples
```bash
 raptoreum-cli addnode "192.168.0.6:9999" "onetry"
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "addnode", "params": ["192.168.0.6:9999", "onetry"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
