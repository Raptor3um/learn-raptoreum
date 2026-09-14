## getmerkleblocks
Returns an array of hex-encoded merkleblocks for <count> blocks starting from <hash> which match <filter>.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | filter | string | True |  | The hex-encoded bloom filter |
| 2 | hash | string | True |  | The block hash |
| 3 | count | numeric | False | 2000 |  |

### Result
```json
[           (json array)
  "hex",    (string) A string that is serialized, hex-encoded data for a merkleblock
  ...
]
```
### Examples
```bash
 raptoreum-cli getmerkleblocks "2303028005802040100040000008008400048141010000f8400420800080025004000004130000000000000001" "00000000007e1432d2af52e8463278bf556b55cf5049262f25634557e2e91202" 2000
```

```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getmerkleblocks", "params": ["2303028005802040100040000008008400048141010000f8400420800080025004000004130000000000000001" "00000000007e1432d2af52e8463278bf556b55cf5049262f25634557e2e91202" 2000] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

