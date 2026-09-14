## getrawtransaction
Return the raw transaction data.
By default this function only works for mempool transactions. When called with a blockhash
argument, getrawtransaction will return the transaction if the specified block is available and
the transaction is found in that block. When called without a blockhash argument, getrawtransaction
will return the transaction if it is in the mempool, or if -txindex is enabled and the transaction
is in a block in the blockchain.
If verbose is 'true', returns an Object with information about 'txid'.
If verbose is 'false' or omitted, returns a string that is serialized, hex-encoded data for 'txid'.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | txid | string | True |  | The transaction id |
| 2 | verbose | boolean | False | false | If false, return a string, otherwise return a json object |
| 3 | blockhash | string | False |  | The block in which to look for the transaction |

### Examples
```bash
 raptoreum-cli getrawtransaction "mytxid"
```
```bash
 raptoreum-cli getrawtransaction "mytxid" true
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getrawtransaction", "params": ["mytxid", true] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```
```bash
 raptoreum-cli getrawtransaction "mytxid" false "myblockhash"
```
```bash
 raptoreum-cli getrawtransaction "mytxid" true "myblockhash"
```

