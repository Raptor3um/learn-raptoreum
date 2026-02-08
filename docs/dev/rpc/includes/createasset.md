## createasset

1. "asset"               (string, required) A json object with asset metadata

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |


### Result
```json
"txid"                   (string) The transaction id for the new asset
```

### Examples
```bash
 raptoreum-cli createasset '{"name":"test asset", "updatable":true, "isunique":false, "maxMintCount":10,
```
```bash
"decimalpoint":2, "referenceHash":"", "type":0, "targetAddress":"yQPzaDmnF3FtRsoWijUN7aZDcEdyNAcmVk",
```
```bash
"issueFrequency":0, "amount":10000,"ownerAddress":"yRyiTCKfqMG2dQ9oUvs932TjN1R1MNUTWM"}'
```

---
