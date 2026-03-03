## addnode

Attempts to add or remove a node from the addnode list.
Or try a connection to a node once.
Nodes added using addnode (or -connect) are protected from DoS disconnection and are not required to be
full nodes as other outbound peers are (though such peers will not be synced from).

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | node | string | True |  | The node (see getpeerinfo for nodes). |
| 2 | command | string | True |  | 'add' to add a node to the list, 'remove' to remove a node from the list, 'onetry' to try a connection to the node once. |


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
