## getaddressesbylabel

Returns the list of addresses assigned the specified label.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |


### Result
```json
{                         (json object) json object with addresses as keys
  "address" : {           (json object) json object with information about address
    "purpose" : "str"     (string) Purpose of address ("send" for sending address, "receive" for receiving address)
  },
  ...
}
```

### Examples
```bash
 raptoreum-cli getaddressesbylabel "tabby"
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaddressesbylabel", "params": ["tabby"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
