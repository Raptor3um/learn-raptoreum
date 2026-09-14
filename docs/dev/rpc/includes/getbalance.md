## getbalance
Returns the total available balance.
The available balance is what the wallet considers currently spendable, and is
thus affected by options which limit spendability such as -spendzeroconfchange.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | dummy | string | False |  | Remains for backward compatibility. Must be excluded or set to "*". |
| 2 | minconf | numeric | False | 0 | Only include transactions confirmed at least this many times. |
| 3 | addlocked | boolean | False | false | Whether to include transactions locked via InstantSend in the wallet's balance. |
| 4 | include_watchonly | boolean | False | false | Also include balance in watch-only addresses (see 'importaddress') |

### Result
```text
n    (numeric) The total amount in RTM received at this wallet.
```

### Examples

The total amount in the wallet with 0 or more confirmations:
```bash
 raptoreum-cli getbalance
```

 The total amount in the wallet at least 6 blocks confirmed:
```bash
 raptoreum-cli getbalance "*" 6
```

As a json rpc call:

```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getbalance", "params": ["*", 6] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```
