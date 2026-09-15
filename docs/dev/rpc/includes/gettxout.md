## gettxout
Returns details about an unspent transaction output.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | txid | string | True |  | The transaction id |
| 2 | n | numeric | True |  | vout number |
| 3 | include_mempool | boolean | False | true | Whether to include the mempool. Note that an unspent output that is spent in the mempool won't appear. |

### Result
```json
{                             (json object)
  "bestblock" : "hex",        (string) The hash of the block at the tip of the chain
  "confirmations" : n,        (numeric) The number of confirmations
  "value" : n,                (numeric) The transaction value in RTM
  "scriptPubKey" : {          (json object)
    "asm" : "hex",            (string)
    "hex" : "hex",            (string)
    "reqSigs" : n,            (numeric) Number of required signatures
    "type" : "hex",           (string) The type, eg pubkeyhash
    "addresses" : [           (json array) array of Raptoreum addresses
      "str",                  (string) Raptoreum address
      ...
    ]
  },
  "coinbase" : true|false     (boolean) Coinbase or not
}
```
### Examples

 Get unspent transactions:
```bash
 raptoreum-cli listunspent
```

 View the details:
```bash
 raptoreum-cli gettxout "txid" 1
```

 As a json rpc call:
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "gettxout", "params": ["txid", 1] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

