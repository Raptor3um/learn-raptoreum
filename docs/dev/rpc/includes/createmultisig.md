## createmultisig
Creates a multi-signature address with n signature of m keys required.
It returns a json object with the address and redeemScript.
### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | nrequired | numeric | True |  | The number of required signatures out of the n keys. |
| 2 | keys | json array | True |  | A json array of hex-encoded public keys. |
| **Keys** |  |  |  |  |  |
| 2.1 | key | string |  |  | The hex-encoded public key. |
### Result
```json
{                            (json object)
  "address" : "str",         (string) The value of the new multisig address.
  "redeemScript" : "hex"     (string) The string value of the hex-encoded redemption script.
}
```
### Examples
```bash
 Create a multisig address from 2 public keys
```
```bash
 raptoreum-cli createmultisig 2 "[\"03789ed0bb717d88f7d321a368d905e7430207ebbd82bd342cf11ae157a7ace5fd\",\"03dbc6764b8884a92e871274b87583e6d5c2a58819473e17e107ef3f6aa5a61626\"]"
```
```bash
 As a json rpc call
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "createmultisig", "params": [2, "[\"03789ed0bb717d88f7d321a368d905e7430207ebbd82bd342cf11ae157a7ace5fd\",\"03dbc6764b8884a92e871274b87583e6d5c2a58819473e17e107ef3f6aa5a61626\"]"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

