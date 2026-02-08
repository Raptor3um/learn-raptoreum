## importwallet

Imports keys from a wallet dump file (see dumpwallet). Requires a new wallet backup to include imported keys.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |


### Result
```json
null    (json null)
```

### Examples
```bash
Dump the wallet
```
```bash
 raptoreum-cli dumpwallet "test"
```
```bash
Import the wallet
```
```bash
 raptoreum-cli importwallet "test"
```
```bash
Import using the json rpc call
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "importwallet", "params": ["test"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
