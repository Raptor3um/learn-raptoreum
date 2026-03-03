## addmultisigaddress

Add a nrequired-to-sign multisignature address to the wallet. Requires a new wallet backup.
Each key is a Raptoreum address or hex-encoded public key.
This functionality is only intended for use with non-watchonly addresses.
See `importaddress` for watchonly p2sh address support.
If 'label' is specified, assign address to that label.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | nrequired | numeric | True |  | The number of required signatures out of the n keys or addresses. |
| 2 | key | json array | True |  | A json array of raptoreum addresses or hex-encoded public keys. |
| 3 | label | string | False |  |  A label to assign the addresses to. |


### Result
```json
{                            (json object)
  "address" : "str",         (string) The value of the new multisig address
  "redeemScript" : "hex"     (string) The string value of the hex-encoded redemption script
}
```

### Examples
```bash
Add a multisig address from 2 addresses with label name
```
```bash
 raptoreum-cli addmultisigaddress 2 "[\"Xt4qk9uKvQYAonVGSZNXqxeDmtjaEWgfrS\",\"XoSoWQkpgLpppPoyyzbUFh1fq2RBvW6UK2\"]" "label name"
```
```bash
As a JSON-RPC call
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "addmultisigaddress", "params": [2, "[\"Xt4qk9uKvQYAonVGSZNXqxeDmtjaEWgfrS\",\"XoSoWQkpgLpppPoyyzbUFh1fq2RBvW6UK2\"]" "label name"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
