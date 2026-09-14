## getreceivedbyaddress
Returns the total amount received by the given address in transactions with at least minconf confirmations.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | address | string | True |  | The Raptoreum address for transactions. |
| 2 | minconf | numeric | False | 1 | Only include transactions confirmed at least this many times. |
| 3 | addlocked | boolean | False | false | Whether to include transactions locked via InstantSend. |

### Result
```text
n    (numeric) The total amount in RTM received at this address.
```

### Examples

 The amount from transactions with at least 1 confirmation:
```bash
 raptoreum-cli getreceivedbyaddress "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG"
```

 The amount including unconfirmed transactions, zero confirmations:

```bash
 raptoreum-cli getreceivedbyaddress "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" 0
```

The amount with at least 6 confirmations:


```bash
 raptoreum-cli getreceivedbyaddress "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" 6
```

 As a json rpc call:

```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getreceivedbyaddress", "params": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG", 6] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

