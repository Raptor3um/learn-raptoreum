## getnodeaddresses
Return known addresses which can potentially be used to find new nodes in the network.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | count | numeric | False | 1 | How many addresses to return. Limited to the smaller of 2500 or 23% of all known addresses. |

### Result
```json
[                         (json array)
  {                       (json object)
    "time" : xxx,         (numeric) The UNIX epoch time of when the node was last seen
    "services" : n,       (numeric) The services offered
    "address" : "str",    (string) The address of the node
    "port" : n            (numeric) The port of the node
  },
  ...
]
```

### Examples
```bash
 raptoreum-cli getnodeaddresses 8
```

```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getnodeaddresses", "params": [8] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

