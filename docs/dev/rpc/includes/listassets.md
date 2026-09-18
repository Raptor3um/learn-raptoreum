## listassets
Returns a list of all assets.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | verbose | boolean | False | false | false: return list of asset names, true: return list of asset metadata |
| 2 | count | string | False | ALL | truncates results to include only the first _count_ assets found |
| 3 | start | numeric | False | 0 | results skip over the first _start_ assets found |
| 4 | mine | boolean| False | false | if true, only return assets owned by this wallet |

### Result
```json
Result (for verbose = false):
{                          (json object)
  "Asset_name" : {         (json object)
    "Asset_id" : "str"     (string) The asset id
  }
}

Result (for verbose = true):
{                                 (json object)
  "Asset_name" : {                (json object)
    "Asset_id" : "str",           (string) The asset id
    "Asset_name" : "str",         (string) The Asset name
    "Circulating_supply" : n,     (numeric) Current circulating supply of Asset
    "MintCount" : n,              (numeric) Number of times this Asset was minted
    "maxMintCount" : n,           (numeric) Maximum number of times this Asset can be minted
    "owner" : "str",              (string) Address that owns this Asset
    "Isunique" : true|false,      (boolean) Unique asset/NFT
    "Updatable" : true|false,     (boolean) If the Asset can be updated in the future
    "Decimalpoint" : n,           (numeric)
    "ReferenceHash" : "str",      (string) Hash of the underlying physical or digital Assets
    "Distribution" : {            (json object)
      "type" : "str",             (string) Distribution type
      "targetAddress" : "str",    (string) Target address where this Asset is deployed after minting
      "issueFrequency" : n,       (numeric) How often the Asset is minted
      "amount" : n                (numeric) Amount of the Asset that is minted
    }
  }
}
```

### Examples
```bash
raptoreum-cli listassets false 100 0 true
```
