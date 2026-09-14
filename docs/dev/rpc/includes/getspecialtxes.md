## getspecialtxes
Returns an array of special transactions found in the specified block
If verbosity is 0, returns tx hash for each transaction.
If verbosity is 1, returns hex-encoded data for each transaction.
If verbosity is 2, returns an Object with information for each transaction.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | blockhash | string | True |  | The block hash |
| 2 | type | numeric | False | -1 | Filter special txes by type, -1 means all types |
| 3 | count | numeric | False | 10 | The number of transactions to return |
| 4 | skip | numeric | False | 0 | The number of transactions to skip |
| 5 | verbosity | numeric | False | 0 | 0 for hashes, 1 for hex-encoded data, and 2 for json object |

### Result
```json
Result (for verbosity = 0):
[           (json array)
  "hex",    (string) The transaction id
  ...
]

Result (for verbosity = 1):
[           (json array)
  "hex",    (string) A string that is serialized, hex-encoded data for the transaction
  ...
]

Result (for verbosity = 2):
[         (json array)
  ...     The transactions in the format of the getrawtransaction RPC
]
```

### Examples
```bash
 raptoreum-cli getspecialtxes "00000000000fd08c2fb661d2fcb0d49abb3a91e5f27082ce64feed3b4dede2e2"
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getspecialtxes", "params": ["00000000000fd08c2fb661d2fcb0d49abb3a91e5f27082ce64feed3b4dede2e2"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

