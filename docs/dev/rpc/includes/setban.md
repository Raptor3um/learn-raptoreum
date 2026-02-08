## setban

Attempts to add or remove an IP/Subnet from the banned list.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 3 | `bantime` | numeric | Optional | 0) time in seconds how long (or until when if [absolute] is set) the IP is banned (0 or empty means using the default time of 24h which can also be overwritten by the -bantime startup argument | See CLI help for details |
| 4 | `absolute` | boolean | Optional | false | See CLI help for details |


### Result
```json
null    (json null)
```

### Examples
```bash
 raptoreum-cli setban "192.168.0.6" "add" 86400
```
```bash
 raptoreum-cli setban "192.168.0.0/24" "add"
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "setban", "params": ["192.168.0.6", "add", 86400] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
