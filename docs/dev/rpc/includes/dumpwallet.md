## dumpwallet

Dumps all wallet keys in a human-readable format to a server-side file. This does not allow overwriting existing files.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |


### Result
```json
{                        (json object)
  "keys" : n,            (numeric) The number of keys contained in the wallet dump
  "filename" : "str",    (string) The filename with full absolute path
  "warning" : "str"      (string) A warning about not sharing the wallet dump with anyone
}
```

### Examples
```bash
 raptoreum-cli dumpwallet "test"
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "dumpwallet", "params": ["test"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
