## importpubkey
Adds a public key (in hex) that can be watched as if it were in your wallet but cannot be used to spend. Requires a new wallet backup.
Note: This call can take over an hour to complete if rescan is true, during that time, other rpc calls
may report that the imported pubkey exists but related transactions are still missing, leading to temporarily incorrect/bogus balances and unspent outputs until rescan completes.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | pubkey | string | True |  | The hex-encoded public key |
| 2 | label | string | False | "" | An optional label |
| 3 | rescan | boolean | False | true | Rescan the wallet for transactions |

### Result
```json
null    (json null)
```

### Examples

Import a public key with rescan:

```bash
 raptoreum-cli importpubkey "mypubkey"
```


Import using a label without rescan:

```bash
 raptoreum-cli importpubkey "mypubkey" "testing" false
```


As a JSON-RPC call:

```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "importpubkey", "params": ["mypubkey", "testing", false] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

