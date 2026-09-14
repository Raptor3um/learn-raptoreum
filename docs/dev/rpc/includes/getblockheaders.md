## getblockheaders
Returns an array of items with information about <count> blockheaders starting from <hash>.
If verbose is false, each item is a string that is serialized, hex-encoded data for a single blockheader.
If verbose is true, each item is an Object with information about a single blockheader.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | hash | string | True |  | The block hash |
| 2 | count | numeric | False | 2000 |  |
| 3 | verbose | boolean | False | true | true for a json object, false for the hex-encoded data |

### Examples
```bash
 raptoreum-cli getblockheaders "00000000c937983704a73af28acdec37b049d214adbda81d7e2a3dd146f6ed09" 2000
```

```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblockheaders", "params": ["00000000c937983704a73af28acdec37b049d214adbda81d7e2a3dd146f6ed09" 2000] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```
