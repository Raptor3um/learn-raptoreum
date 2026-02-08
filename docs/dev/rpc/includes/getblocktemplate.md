## getblocktemplate

If the request parameters include a 'mode' key, that is used to explicitly select between the default 'template' request or a 'proposal'.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | `template_request` | json object | Optional | [] | See CLI help for details |


### Result
```json
{                                                (json object)
  "capabilities" : [                             (json array) specific client side supported features
    "str",                                       (string) capability
    ...
  ],
  "version" : n,                                 (numeric) The preferred block version
  "rules" : [                                    (json array) specific block rules that are to be enforced
    "str",                                       (string) rulename
    ...
  ],
  "vbavailable" : {                              (json object) set of pending, supported versionbit (BIP 9) softfork deployments
    "rulename" : n,                              (numeric) identifies the bit number as indicating acceptance and readiness for the named softfork rule
    ...
  },
  "vbrequired" : n,                              (numeric) bit mask of versionbits the server requires set in submissions
  "previousblockhash" : "str",                   (string) The hash of current highest block
  "?????" : [                                    (json array) contents of non-coinbase transactions that should be included in the next block
    {                                            (json object)
      "data" : "hex",                            (string) transaction data encoded in hexadecimal (byte-for-byte)
      "txid" : "hex",                            (string) transaction id encoded in little-endian hexadecimal
      "hash" : "hex",                            (string) hash encoded in little-endian hexadecimal (including witness data)
      "depends" : [                              (json array) array of numbers
        n,                                       (numeric) transactions before this one (by 1-based index in 'transactions' list) that must be present in the final block if this one is
        ...
      ],
      "fee" : n,                                 (numeric) difference in value between transaction inputs and outputs (in satoshis); for coinbase transactions, this is a negative Number of the total collected block fees (ie, not including the block subsidy); if key is not present, fee is unknown and clients MUST NOT assume there isn't one
      "sigops" : n                               (numeric) total number of SigOps, as counted for purposes of block limits; if key is not present, sigop count is unknown and clients MUST NOT assume there aren't any
    },
    ...
  ],
  "coinbaseaux" : {                              (json object) data that should be included in the coinbase's scriptSig content
    ...
  },
  "coinbasevalue" : n,                           (numeric) maximum allowable input to coinbase transaction, including the generation award and transaction fees (in satoshis)
  "coinbasetxn" : {                              (json object) information for coinbase transaction
    ...
  },
  "target" : "str",                              (string) The hash target
  "mintime" : xxx,                               (numeric) The minimum timestamp appropriate for the next block time, expressed in UNIX epoch time
  "mutable" : [                                  (json array) list of ways the block template may be changed
    "str",                                       (string) A way the block template may be changed, e.g. 'time', 'transactions', 'prevblock'
    ...
  ],
  "noncerange" : "hex",                          (string) A range of valid nonces
  "sigoplimit" : n,                              (numeric) limit of sigops in blocks
  "sizelimit" : n,                               (numeric) limit of block size
  "curtime" : xxx,                               (numeric) current timestamp in UNIX epoch time
  "bits" : "str",                                (string) compressed target of next block
  "previousbits" : "str",                        (string) compressed target of current highest block
  "height" : n,                                  (numeric) The height of the next block
  "smartnode" : [                                (json array) required smartnode payments that must be included in the next block
    {                                            (json object)
      "payee" : "hex",                           (string) payee address
      "script" : "hex",                          (string) payee scriptPubKey
      "amount" : n                               (numeric) required amount to pay
    },
    ...
  ],
  "smartnode_payments_started" : true|false,     (boolean) true, if smartnode payments started
  "smartnode_payments_enforced" : true|false,    (boolean) true, if smartnode payments are enforced
  "superblock" : [                               (json array) required superblock payees that must be included in the next block
    {                                            (json object)
      "payee" : "hex",                           (string) payee address
      "script" : "hex",                          (string) payee scriptPubKey
      "amount" : n                               (numeric) required amount to pay
    },
    ...
  ],
  "superblocks_started" : true|false,            (boolean) true, if superblock payments started
  "superblocks_enabled" : true|false,            (boolean) true, if superblock payments are enabled
  "coinbase_payload" : "hex"                     (string) coinbase transaction payload data encoded in hexadecimal
}
```

### Examples
```bash
 raptoreum-cli getblocktemplate
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblocktemplate", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
