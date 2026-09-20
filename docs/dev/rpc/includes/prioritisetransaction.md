## prioritisetransaction
Accepts the transaction into mined blocks at a higher (or lower) priority.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | txid | string | True |  | The transaction id. |
| 2 | fee_delta | numeric | True |  | The fee value (in duffs) to add (or subtract, if negative). |

### Result
```text
true|false    (boolean) Returns true
```

### Examples
```bash
 raptoreum-cli prioritisetransaction "txid" 10000
```

```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "prioritisetransaction", "params": ["txid", 10000] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

