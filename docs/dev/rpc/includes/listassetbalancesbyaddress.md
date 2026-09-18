## listassetbalancesbyaddress
Returns a list of all asset balances for an address.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | address | string | True |  | a raptoreum address |
| 2 | onlytotal | boolean | False | false | when false result is just a list of assets balances -- when true the result is just a single number representing the number of assets |
| 3 | count | integer | False | 50000, MAX=50000 | truncates results to include only the first _count_ assets found |
| 4 | start | integer | False | 0 | results skip over the first _start_ assets found (if negative it skips back from the end) |

### Result
```json
{
  (asset_name) : (quantity),
  ...
}
```

### Examples
```bash
 raptoreum-cli listassetbalancesbyaddress "myaddress" false 2 0
```

```bash
 raptoreum-cli listassetbalancesbyaddress "myaddress" true
```

```bash
 raptoreum-cli listassetbalancesbyaddress "myaddress"
```

