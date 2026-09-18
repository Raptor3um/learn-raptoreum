## importprivkey
Adds a private key (as returned by dumpprivkey) to your wallet. Requires a new wallet backup.
Hint: use importmulti to import more than one private key.
Note: This call can take over an hour to complete if rescan is true, during that time, other rpc calls
may report that the imported key exists but related transactions are still missing, leading to temporarily incorrect/bogus balances and unspent outputs until rescan completes.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | privkey | string | True |  | The private key (see dumpprivkey) |
| 2 | label | string | False | current label if address exists, otherwise "" | An optional label |
| 3 | rescan | boolean | False | true | Rescan the wallet for transactions |

### Result
```json
null    (json null)
```

### Examples

Dump a private key:

```bash
 raptoreum-cli dumpprivkey "myaddress"
```


Import the private key with rescan:

```bash
 raptoreum-cli importprivkey "mykey"
```


Import using a label and without rescan:

```bash
 raptoreum-cli importprivkey "mykey" "testing" false
```

Import using default blank label and without rescan:

```bash
 raptoreum-cli importprivkey "mykey" "" false
```


As a JSON-RPC call:

```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "importprivkey", "params": ["mykey", "testing", false] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

