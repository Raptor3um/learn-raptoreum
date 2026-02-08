## logging

When called without an argument, returns the list of categories with status that are currently being debug logged or not.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |


### Result
```json
{                             (json object) where keys are the logging categories, and values indicates its status
  "category" : true|false,    (boolean) if being debug logged or not. false:inactive, true:active
  ...
}
```

### Examples
```bash
 raptoreum-cli logging "[\"all\"]" "[\"http\"]"
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "logging", "params": [["all"], "[libevent]"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
