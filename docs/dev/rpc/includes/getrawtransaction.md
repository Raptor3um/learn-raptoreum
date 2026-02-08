## getrawtransaction

Return the raw transaction data.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 2 | `verbose` | boolean | Optional | false | See CLI help for details |


### Examples
```bash
 raptoreum-cli getrawtransaction "mytxid"
```
```bash
 raptoreum-cli getrawtransaction "mytxid" true
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getrawtransaction", "params": ["mytxid", true] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```
```bash
 raptoreum-cli getrawtransaction "mytxid" false "myblockhash"
```
```bash
 raptoreum-cli getrawtransaction "mytxid" true "myblockhash"
```

---
