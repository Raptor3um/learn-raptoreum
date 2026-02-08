## abortrescan

Stops current wallet rescan triggered by an RPC call, e.g. by an importprivkey call.

### Arguments

No arguments.

### Result
```json
true|false    (boolean) Whether the abort was successful
```

### Examples
```bash
Import a private key
```
```bash
 raptoreum-cli importprivkey "mykey"
```
```bash
Abort the running wallet rescan
```
```bash
 raptoreum-cli abortrescan
```
```bash
As a JSON-RPC call
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "abortrescan", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
