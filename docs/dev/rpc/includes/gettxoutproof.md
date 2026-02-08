## gettxoutproof

Returns a hex-encoded proof that "txid" was included in a block.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |


### Result
```json
"str"    (string) A string that is a serialized, hex-encoded data for the proof.
```

### Examples
```bash
 raptoreum-cli gettxoutproof '["mytxid",...]'
```
```bash
 raptoreum-cli gettxoutproof '["mytxid",...]' "blockhash"
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "gettxoutproof", "params": [["mytxid",...], "blockhash"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
