## decoderawtransaction

Return a JSON object representing the serialized, hex-encoded transaction.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |


### Result
```json
{                            (json object)
  "txid" : "hex",            (string) The transaction id
  "size" : n,                (numeric) The transaction size
  "version" : n,             (numeric) The version
  "version" : n,             (numeric) The type
  "locktime" : xxx,          (numeric) The lock time
  "vin" : [                  (json array)
    {                        (json object)
      "txid" : "hex",        (string) The transaction id
      "vout" : n,            (numeric) The output number
      "scriptSig" : {        (json object) The script
        "asm" : "str",       (string) asm
        "hex" : "hex"        (string) hex
      },
      "sequence" : n         (numeric) The script sequence number
    },
    ...
  ],
  "vout" : [                 (json array)
    {                        (json object)
      "value" : n,           (numeric) The value in RTM
      "n" : n,               (numeric) index
      "scriptPubKey" : {     (json object)
        "asm" : "str",       (string) the asm
        "hex" : "hex",       (string) the hex
        "reqSigs" : n,       (numeric) The required sigs
        "type" : "str",      (string) The type, eg 'pubkeyhash'
        "addresses" : [      (json array)
          "str",             (string) Raptoreum address
          ...
        ]
      }
    },
    ...
  ],
  "extraPayloadSize" : n,    (numeric, optional) Size of DIP2 extra payload. Only present if it's a special TX
  "extraPayload" : "hex"     (string, optional) Hex-encoded DIP2 extra payload data. Only present if it's a special TX
}
```

### Examples
```bash
 raptoreum-cli decoderawtransaction "hexstring"
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "decoderawtransaction", "params": ["hexstring"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
