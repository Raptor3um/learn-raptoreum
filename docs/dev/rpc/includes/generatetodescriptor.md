## generatetodescriptor

Mine blocks immediately to a specified descriptor (before the RPC call returns)

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
Generate 11 blocks to mydesc
```
```bash
 raptoreum-cli generatetodescriptor 11 "mydesc"
```

---
