## listlabels
Returns the list of all labels, or labels that are assigned to addresses with a specific purpose.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | purpose | string | False |  | Address purpose to list labels for ('send','receive'). An empty string is the same as not providing this argument. |

### Result
```json
[           (json array)
  "str",    (string) Label name
  ...
]
```

### Examples

List all labels:

```bash
 raptoreum-cli listlabels
```

List labels that have receiving addresses:

```bash
 raptoreum-cli listlabels receive
```

List labels that have sending addresses:

```bash
 raptoreum-cli listlabels send
```


As a JSON-RPC call:

```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listlabels", "params": [receive] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

