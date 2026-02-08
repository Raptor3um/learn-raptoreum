## listunspentassets

Returns array of unspent transaction outputs

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | `minconf` | numeric | Optional | 1 | See CLI help for details |
| 2 | `maxconf` | numeric | Optional | 9999999 | See CLI help for details |
| 4 | `include_unsafe` | bool | Optional | true | See CLI help for details |


### Examples
```bash
 raptoreum-cli listunspentassets
```
```bash
 raptoreum-cli listunspentassets 6 9999999 "[\"XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg\",\"XuQQkwA4FYkq2XERzMY2CiAZhJTEDAbtcg\"]"
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listunspentassets", "params": [6, 9999999 "[\"XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg\",\"XuQQkwA4FYkq2XERzMY2CiAZhJTEDAbtcg\"]"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```
```bash
 raptoreum-cli listunspentassets 6 9999999 '[]' true '{ "minimumAmount": 0.005 }'
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listunspentassets", "params": [6, 9999999, [] , true, { "minimumAmount": 0.005 } ] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
