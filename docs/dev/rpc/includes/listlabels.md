## listlabels

Returns the list of all labels, or labels that are assigned to addresses with a specific purpose.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |


### Result
```json
[           (json array)
  "str",    (string) Label name
  ...
]
```

### Examples
```bash
List all labels
```
```bash
 raptoreum-cli listlabels
```
```bash
List labels that have receiving addresses
```
```bash
 raptoreum-cli listlabels receive
```
```bash
List labels that have sending addresses
```
```bash
 raptoreum-cli listlabels send
```
```bash
As a JSON-RPC call
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listlabels", "params": [receive] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
