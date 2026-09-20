## sendrawtransaction
Submits raw transaction (serialized, hex-encoded) to local node and network.
Note that the transaction will be sent unconditionally to all peers, so using this
for manual rebroadcast may degrade privacy by leaking the transaction's origin, as
nodes will normally not rebroadcast non-wallet transactions already in their mempool.
Also see createrawtransaction and signrawtransactionwithkey calls.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | hexstring | string | True |  | The hex string of the raw transaction |
| 2 | maxfeerate | numeric or string | False | 0.10 | Reject transactions whose fee rate is higher than the specified value, expressed in RTM/kB |
| 3 | instantsend | boolean |  |  | Deprecated and ignored |
| 4 | bypasslimits | boolean | False | false | Bypass transaction policy limits |

### Result
```json
"hex"    (string) The transaction hash in hex
```

### Examples
Create a transaction:

```bash
 raptoreum-cli createrawtransaction "[{\"txid\" : \"mytxid\",\"vout\":0}]" "{\"myaddress\":0.01}"
```

Sign the transaction, and get back the hex:

```bash
 raptoreum-cli signrawtransactionwithwallet "myhex"
```

Send the transaction (signed hex):

```bash
 raptoreum-cli sendrawtransaction "signedhex"
```

As a json rpc call:

```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "sendrawtransaction", "params": ["signedhex"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

