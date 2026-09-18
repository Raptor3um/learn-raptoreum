## listaddressbalances
Lists addresses of this wallet and their balances.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | minamount | numeric | False | 0 | Minimum balance in RTM an address should have to be shown in the list |

### Result
```json
[        (json array)
  n,     (numeric) The raptoreum address and the amount in RTM
  ...
]
```

### Examples
```bash
 raptoreum-cli listaddressbalances
```

```bash
 raptoreum-cli listaddressbalances 10
```

```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listaddressbalances", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listaddressbalances", "params": [10] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

