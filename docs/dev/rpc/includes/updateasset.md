## updateasset
Update an asset.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | asset | json object | True |  | A json object with asset metadata |
| **Asset** |  |  |  |  |  |
| 1.1 | name: | string |  |  | Asset name. |
| 1.2 | updatable: | bool | False | True | If true this asset can be modify using reissue process. |
| 1.3 | referenceHash: | string | False |  | Hash of the underlying physical or digital assets, IPFS hash can be used here. |
| 1.4 | maxMintCount | numeric | False |  | Number of times this asset can be mint. |
| 1.5 | type: | numeric | False |  | Distribution type manual=0, coinbase=1, address=2, schedule=3. |
| 1.6 | targetAddress: | string | False |  | Address to be issued to when asset issue transaction is created. |
| 1.7 | issueFrequency: | numeric | False |  | Mint specific amount of token every x blocks. |
| 1.8 | amount: | numeric | False |  | Amount to distribute each time if type is not manual. |
| 1.9 | ownerAddress: | string | False |  | Address that this asset is owned by. Only key holder of this address will be able to mint new tokens. |

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

