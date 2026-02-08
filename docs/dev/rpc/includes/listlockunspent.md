## listlockunspent

Returns list of temporarily unspendable outputs.

### Arguments

No arguments.

### Result
```json
[                      (json array)
  {                    (json object)
    "txid" : "hex",    (string) The transaction id locked
    "vout" : n         (numeric) The vout value
  },
  ...
]
```

### Examples
```bash
List the unspent transactions
```
```bash
 raptoreum-cli listunspent
```
```bash
Lock an unspent transaction
```
```bash
 raptoreum-cli lockunspent false "[{\"txid\":\"a08e6907dbbd3d809776dbfc5d82e371b764ed838b5655e72f463568df1aadf0\",\"vout\":1}]"
```
```bash
List the locked transactions
```
```bash
 raptoreum-cli listlockunspent
```
```bash
Unlock the transaction again
```
```bash
 raptoreum-cli lockunspent true "[{\"txid\":\"a08e6907dbbd3d809776dbfc5d82e371b764ed838b5655e72f463568df1aadf0\",\"vout\":1}]"
```
```bash
As a JSON-RPC call
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listlockunspent", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
