## decodescript

Decode a hex-encoded script.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |


### Result
```json
{                    (json object)
  "asm" : "str",     (string) Script public key
  "type" : "str",    (string) The output type (e.g. nonstandard, pubkey, pubkeyhash, scripthash, multisig, nulldata)
  "reqSigs" : n,     (numeric) The required signatures
  "addresses" : [    (json array)
    "str",           (string) Raptoreum address
    ...
  ],
  "p2sh" : "str"     (string) address of P2SH script wrapping this redeem script (not returned if the script is already a P2SH)
}
```

### Examples
```bash
 raptoreum-cli decodescript "hexstring"
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "decodescript", "params": ["hexstring"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
