## getzmqnotifications

Returns information about the active ZeroMQ notifications.

### Arguments

No arguments.

### Result
```json
[                         (json array)
  {                       (json object)
    "type" : "str",       (string) Type of notification
    "address" : "str",    (string) Address of the publisher
    "hwm" : n             (numeric) Outbound message high water mark
  },
  ...
]
```

### Examples
```bash
 raptoreum-cli getzmqnotifications
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getzmqnotifications", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
