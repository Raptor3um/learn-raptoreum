## listaddressesbyasset

Returns a list of all address that own the given asset (with balances)

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 2 | `onlytotal` | boolean | Optional | false | See CLI help for details |
| 3 | `count` | integer | Optional | 50000, MAX=50000 | See CLI help for details |
| 4 | `start` | integer | Optional | 0) results skip over the first _start_ assets found (if negative it skips back from the end | See CLI help for details |


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

---
