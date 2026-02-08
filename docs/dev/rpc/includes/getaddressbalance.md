## getaddressbalance

Returns the balance for an address(es) (requires addressindex to be enabled).

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | `addresses` | json array | Optional | [] | See CLI help for details |
| 2 | `asset` | string | Optional | RTM) Get balance for a particular asset instead of RTM. ("*" for all assets | See CLI help for details |


### Examples
```bash
 raptoreum-cli getaddressbalance '{"addresses": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg"]}'
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaddressbalance", "params": [{"addresses": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg"]}] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
