## disconnectnode

Immediately disconnects from the specified peer node.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | `address` | string | Optional | fallback to nodeid | See CLI help for details |
| 2 | `nodeid` | numeric | Optional | fallback to address) The node ID (see getpeerinfo for node IDs | See CLI help for details |


### Result
```json
null    (json null)
```

### Examples
```bash
 raptoreum-cli disconnectnode "192.168.0.6:9999"
```
```bash
 raptoreum-cli disconnectnode "" 1
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "disconnectnode", "params": ["192.168.0.6:9999"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "disconnectnode", "params": ["", 1] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
