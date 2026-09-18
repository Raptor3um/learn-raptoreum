## loadwallet
Loads a wallet from a wallet file or directory.
Note that all wallet command-line options used when starting raptoreumd will be
applied to the new wallet (eg -upgradewallet, rescan, etc).

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | filename | string | True |  | The wallet directory or .dat file. |

### Result
```json
{                       (json object)
  "name" : "str",       (string) The wallet name if loaded successfully.
  "warning" : "str"     (string) Warning message if wallet was not loaded cleanly.
}
```

### Examples
```bash
 raptoreum-cli loadwallet "test.dat"
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "loadwallet", "params": ["test.dat"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

