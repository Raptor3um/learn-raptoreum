## getaddressutxos
Returns all unspent outputs for an address (requires addressindex to be enabled).

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | addresses | json array | False |  |  |
| **Addresses** |  |  |  |  |  |
| 1.1 | address | string | False |  | The base58check encoded address. |
| 2 | asset | string | False | RTM | Get UTXOs for a particular asset instead of RTM ('*' for all assets). |

### Examples
```bash
 raptoreum-cli getaddressutxos '{"addresses": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg"]}'
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaddressutxos", "params": [{"addresses": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg"]}] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```
