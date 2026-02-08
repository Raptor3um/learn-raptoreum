## generatetoaddress

Mine blocks immediately to a specified address (before the RPC call returns)

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 3 | `maxtries` | numeric | Optional | 1000000 | See CLI help for details |


### Result
```json
[           (json array) hashes of blocks generated
  "hex",    (string) blockhash
  ...
]
```

### Examples
```bash
Generate 11 blocks to myaddress
```
```bash
 raptoreum-cli generatetoaddress 11 "myaddress"
```
```bash
If you are running the Raptoreum Core wallet, you can get a new address to send the newly generated coins to with:
```
```bash
 raptoreum-cli getnewaddress
```

---
