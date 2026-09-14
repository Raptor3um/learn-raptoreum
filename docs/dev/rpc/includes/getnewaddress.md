## getnewaddress
Returns a new Raptoreum address for receiving payments.
If 'label' is specified, it is added to the address book
so payments received with the address will be associated with 'label'.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | label | string | False | "" | The label name for the address to be linked to. It can also be set to the empty string "" to represent the default label. The label does not need to exist, it will be created if there is no label by the given name. |

### Result
```json
"str"    (string) The new raptoreum address
```

### Examples
```bash
 raptoreum-cli getnewaddress
```

```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getnewaddress", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

