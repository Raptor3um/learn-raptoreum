## listunspentassets
Returns array of unspent transaction outputs
with between minconf and maxconf (inclusive) confirmations.
Optionally filter to only include txouts paid to specified addresses.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | minconf | numeric | False | 1 | The minimum confirmations to filter |
| 2 | maxconf | numeric | False | 9999999 | The maximum confirmations to filter |
| 3 | addresses | json array |  |  | A json array of raptoreum addresses to filter |
| **Addresses** |  |  |  |  |  |
| 3.1 | address | string |  |  | Raptoreum address. |
| 4 | include_unsafe | bool | False | true | Include outputs that are not safe to spend |
| 5 | query_options | json object | False |  | JSON with query options |
| **Query_options** |  |  |  |  |  |
| 5.1 | minimumAmount | numeric or string | default=0 |  | Minimum value of each UTXO in RTM. |
| 5.2 | maximumAmount | numeric or string | default=unlimited |  | Maximum value of each UTXO in RTM. |
| 5.3 | maximumCount | numeric or string | default=unlimited |  | Maximum number of UTXOs. |
| 5.4 | minimumSumAmount | numeric or string | default=unlimited |  | Minimum sum value of all UTXOs in RTM. |
| 5.5 | coinType | numeric | default=0 |  | Filter coinTypes as follows:. |

### Examples
```bash
 raptoreum-cli listunspentassets
```
```bash
 raptoreum-cli listunspentassets 6 9999999 "[\"XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg\",\"XuQQkwA4FYkq2XERzMY2CiAZhJTEDAbtcg\"]"
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listunspentassets", "params": [6, 9999999 "[\"XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg\",\"XuQQkwA4FYkq2XERzMY2CiAZhJTEDAbtcg\"]"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```
```bash
 raptoreum-cli listunspentassets 6 9999999 '[]' true '{ "minimumAmount": 0.005 }'
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listunspentassets", "params": [6, 9999999, [] , true, { "minimumAmount": 0.005 } ] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

