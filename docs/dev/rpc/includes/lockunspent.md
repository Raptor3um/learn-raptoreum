## lockunspent
Updates list of temporarily unspendable outputs.
Temporarily lock (unlock=false) or unlock (unlock=true) specified transaction outputs.
If no transaction outputs are specified when unlocking then all current locked transaction outputs are unlocked.
A locked transaction output will not be chosen by automatic coin selection, when spending raptoreum.
Locks are stored in memory only. Nodes start with zero locked outputs, and the locked output list
is always cleared (by virtue of process exit) when a node stops or fails.
Also see the listunspent call.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | unlock | boolean | True |  | Whether to unlock (true) or lock (false) the specified transactions |
| 2 | transactions | json array | False | empty array | A json array of objects. Each object the txid (string) vout (numeric). |
| **Transactions** |  |  |  |  |  |
| 2.1 | txid | string | True |  | The transaction id. |
| 2.2 | vout | numeric | True |  | The output number. |

### Result
```text
true|false    (boolean) Whether the command was successful or not
```

### Examples

List the unspent transactions:

```bash
 raptoreum-cli listunspent
```


Lock an unspent transaction:

```bash
 raptoreum-cli lockunspent false "[{\"txid\":\"a08e6907dbbd3d809776dbfc5d82e371b764ed838b5655e72f463568df1aadf0\",\"vout\":1}]"
```

List the locked transactions:

```bash
 raptoreum-cli listlockunspent
```

Unlock the transaction again:

```bash
 raptoreum-cli lockunspent true "[{\"txid\":\"a08e6907dbbd3d809776dbfc5d82e371b764ed838b5655e72f463568df1aadf0\",\"vout\":1}]"
```

As a JSON-RPC call:

```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "lockunspent", "params": [false, "[{\"txid\":\"a08e6907dbbd3d809776dbfc5d82e371b764ed838b5655e72f463568df1aadf0\",\"vout\":1}]"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

