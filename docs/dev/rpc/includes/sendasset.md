## sendasset
Transfers a quantity of an owned asset to a given address

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | asset_id | string | True |  | asset hash id or asset name |
| 2 | qty | numeric | True |  | number of assets you want to send to the address |
| 3 | to_address | string | True |  | address to send the asset to |
| 4 | change_address | string | False | "" | the transactions RTM change will be sent to this address |
| 5 | asset_change_address | string | False | "" | the transactions Asset change will be sent to this address |

### Result
```text
txid[
txid
]
```

### Examples
```bash
 raptoreum-cli transfer "ASSET_NAME" 20 "address"
```
```bash
 raptoreum-cli transfer "ASSET_NAME" 20 "address"
```

