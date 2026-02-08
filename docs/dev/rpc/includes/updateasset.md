## updateasset

1. "asset"               (string, required) A json object with asset metadata

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |


### Result
```json
"txid"                   (string) The transaction hash
```

### Examples
```bash
 raptoreum-cli updateasset '{"name":"test asset", "updatable":true, "maxMintCount":10, "referenceHash":""
```
```bash
,"type":0, "targetAddress":"yQPzaDmnF3FtRsoWijUN7aZDcEdyNAcmVk", "issueFrequency":0
```
```bash
,"amount":10000,"ownerAddress":"yRyiTCKfqMG2dQ9oUvs932TjN1R1MNUTWM"}'
```

---
