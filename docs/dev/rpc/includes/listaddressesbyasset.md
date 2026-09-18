## listaddressesbyasset
Returns a list of all address that own the given asset (with balances)
Or returns the total size of how many address own the given asset.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | asset_name | string | True |  | name of asset |
| 2 | onlytotal | boolean | False | false | when false result is just a list of addresses with balances -- when true the result is just a single number representing the number of addresses |
| 3 | count | integer | False | 50000, MAX=50000 | truncates results to include only the first _count_ assets found |
| 4 | start | integer | False | 0 | results skip over the first _start_ assets found (if negative it skips back from the end) |

### Result
```json
[   (address): balance,
  ...
]
```

### Examples
```bash
 raptoreum-cli listaddressesbyasset "ASSET_NAME" false 2 0
```

```bash
 raptoreum-cli listaddressesbyasset "ASSET_NAME" true
```

```bash
 raptoreum-cli listaddressesbyasset "ASSET_NAME"
```

