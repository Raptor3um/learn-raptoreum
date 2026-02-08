## addmultisigaddress

Add a nrequired-to-sign multisignature address to the wallet. Requires a new wallet backup.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |


### Result
```json
{                            (json object)
  "address" : "str",         (string) The value of the new multisig address
  "redeemScript" : "hex"     (string) The string value of the hex-encoded redemption script
}
```

### Examples
```bash
Add a multisig address from 2 addresses
```
```bash
 raptoreum-cli addmultisigaddress 2 "[\"Xt4qk9uKvQYAonVGSZNXqxeDmtjaEWgfrS\",\"XoSoWQkpgLpppPoyyzbUFh1fq2RBvW6UK2\"]"
```
```bash
As a JSON-RPC call
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "addmultisigaddress", "params": [2, "[\"Xt4qk9uKvQYAonVGSZNXqxeDmtjaEWgfrS\",\"XoSoWQkpgLpppPoyyzbUFh1fq2RBvW6UK2\"]"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
