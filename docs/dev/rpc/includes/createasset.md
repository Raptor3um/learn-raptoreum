## createasset

1. "asset"               (string, required) A json object with asset metadata

### Arguments

| Position | Name            | Type    | Required | Default | Description                                                                                                         |
| :---     | :---            | :---    | :---     | :---    | :---                                                                                                                |
| 1        | name:           | string  | True     |         | Asset name.                                                                                                         |
| 2        | updatable:      | bool    | False    | True    | If true, this asset can be modify using reissue process.                                                            |
| 3        | is_root:        | bool    | True     |         | True if this asset is a Root Asset.                                                                                 |
| 4        | root_name:      | string  | False    |         | Required if asset is a sub asset. The root asset name for this sub asset.                                           |
| 5        | isunique:       | bool    | False    | False   | If true this is asset is unique, it has an identity per token (NFT flag).                                           |
| 6        | decimalpoint:   | numeric | True     |         | Has to be [0 to 8]. Has to be 0 if "isunique:" is set true.                                                         |
| 7        | referenceHash:  | string  | False    |         | Hash of the underlying physical or digital assets, IPFS hash can be used here or whaetever 128 characters long.     |
| 8        | maxMintCount:   | numeric | True     |         | Has to be [1 to 65535]Number of times this asset can be mint.                                                       |
| 9        | type:           | numeric | False    |         | Distribution type manual=0, coinbase=1, address=2, schedule=3.                                                      |
| 10       | targetAddress:  | string  | True     |         | Address to be issued to when asset issue transaction is created.                                                    |
| 11       | issueFrequency: | numeric | False    |         | Mint specific amount of token every x blocks.                                                                       |
| 12       | amount:         | numeric | True     |         | Has to be [1 to 21000000000]. Max 500 if "isunique:" is true. Amount to distribute each time if type is not manual. |
| 13       | ownerAddress:   | string  | True     |         | Address that this asset is owned by. Only key holder of this address will be able to mint new tokens.               |



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
