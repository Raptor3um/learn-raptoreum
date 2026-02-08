## getaddednodeinfo

Returns information about the given added node, or all added nodes

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | `node` | string | Optional | all nodes | See CLI help for details |


### Result
```json
[                                (json array)
  {                              (json object)
    "addednode" : "str",         (string) The node IP address or name (as provided to addnode)
    "connected" : true|false,    (boolean) If connected
    "addresses" : [              (json array) Only when connected = true
      {                          (json object)
        "address" : "str",       (string) The Raptoreum server IP and port we're connected to
        "connected" : "str"      (string) connection, inbound or outbound
      },
      ...
    ]
  },
  ...
]
```

### Examples
```bash
 raptoreum-cli getaddednodeinfo "192.168.0.201"
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaddednodeinfo", "params": ["192.168.0.201"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
