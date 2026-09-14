## getreceivedbylabel
Returns the total amount received by addresses with <label> in transactions with specified minimum number of confirmations.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | label | string | True |  | The selected label, may be the default label using "". |
| 2 | minconf | numeric | False | 1 | Only include transactions confirmed at least this many times. |
| 3 | addlocked | boolean | False | false | Whether to include transactions locked via InstantSend. |

### Result
```text
n    (numeric) The total amount in RTM received at this label.
```

### Examples

Amount received by the default label with at least 1 confirmation:

```bash
 raptoreum-cli getreceivedbylabel ""
```

Amount received at the tabby label including unconfirmed amounts with zero confirmations:

```bash
 raptoreum-cli getreceivedbylabel "tabby" 0
```

The amount with at least 6 confirmations:

```bash
 raptoreum-cli getreceivedbylabel "tabby" 6
```


As a json rpc call:

```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getreceivedbylabel", "params": ["tabby", 6] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

