## verifytxoutproof

Verifies that a proof points to a transaction in a block, returning the transaction it commits to

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |


### Result
```json
[           (json array)
  "hex",    (string) The txid(s) which the proof commits to, or empty array if the proof can not be validated.
  ...
]
```

### Examples
```bash
 raptoreum-cli verifytxoutproof "proof"
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "gettxoutproof", "params": ["proof"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
