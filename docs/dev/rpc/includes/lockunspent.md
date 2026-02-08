## lockunspent

Updates list of temporarily unspendable outputs.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 2 | `transactions` | json array | Optional | empty array) A json array of objects. Each object the txid (string) vout (numeric | See CLI help for details |


### Result
```json
true|false    (boolean) Whether the command was successful or not
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
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "lockunspent", "params": [false, "[{\"txid\":\"a08e6907dbbd3d809776dbfc5d82e371b764ed838b5655e72f463568df1aadf0\",\"vout\":1}]"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
