## fundrawtransaction

Add inputs to a transaction until it has enough in value to meet its out value.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |


### Result
```json
{                     (json object)
  "hex" : "hex",      (string) The resulting raw transaction (hex-encoded string)
  "fee" : n,          (numeric) Fee in RTM the resulting transaction pays
  "changepos" : n     (numeric) The position of the added change output, or -1
}
```

### Examples
```bash
Create a transaction with no inputs
```
```bash
 raptoreum-cli createrawtransaction "[]" "{\"myaddress\":0.01}"
```
```bash
Add sufficient unsigned inputs to meet the output value
```
```bash
 raptoreum-cli fundrawtransaction "rawtransactionhex"
```
```bash
Sign the transaction
```
```bash
 raptoreum-cli signrawtransaction "fundedtransactionhex"
```
```bash
Send the transaction
```
```bash
 raptoreum-cli sendrawtransaction "signedtransactionhex"
```

---
