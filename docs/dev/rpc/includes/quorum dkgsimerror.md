## quorum dkgsimerror
This enables simulation of errors and malicious behaviour in the DKG. Do NOT use this on mainnet as you will get yourself very likely PoSe banned for this.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | type | string | True |  | Error type. |
| 2 | rate | numeric | True |  | Rate at which to simulate this error type. |

### Examples
```bash
raptoreum-cli quorum dkgsimerror "type" 1
```
