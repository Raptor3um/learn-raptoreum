## unloadwallet
Unloads the wallet referenced by the request endpoint otherwise unloads the wallet specified in the argument.
Specifying the wallet name on a wallet endpoint is invalid.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | wallet_name | string | False | the wallet name from the RPC request | The name of the wallet to unload. |

### Result
```json
null    (json null)
```

### Examples
```bash
 raptoreum-cli unloadwallet wallet_name
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "unloadwallet", "params": [wallet_name] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

