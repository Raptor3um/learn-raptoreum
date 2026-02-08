## estimatesmartfee

Estimates the approximate fee per kilobyte needed for a transaction to begin

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 2 | `estimate_mode` | string | Optional | CONSERVATIVE | See CLI help for details |


### Result
```json
{                   (json object)
  "feerate" : n,    (numeric, optional) estimate fee rate in RTM/kB
  "errors" : [      (json array) Errors encountered during processing
    "str",          (string) error
    ...
  ],
  "blocks" : n      (numeric) block number where estimate was found
                    The request target will be clamped between 2 and the highest target
                    fee estimation is able to return based on how long it has been running.
                    An error is returned if not enough transactions and blocks
                    have been observed to make an estimate for any number of blocks.
}
```

### Examples
```bash
 raptoreum-cli estimatesmartfee 6
```

---
