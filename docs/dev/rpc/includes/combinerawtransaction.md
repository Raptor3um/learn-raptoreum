## combinerawtransaction

Combine multiple partially signed transactions into one transaction.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |


### Result
```json
"str"    (string) The hex-encoded raw transaction with signature(s)
```

### Examples
```bash
 raptoreum-cli combinerawtransaction '["myhex1", "myhex2", "myhex3"]'
```

---
