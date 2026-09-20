## verifychainlock
Test if a quorum signature is valid for a ChainLock.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | blockHash | string | True |  | The block hash of the ChainLock. |
| 2 | signature | string | True |  | The signature of the ChainLock. |
| 3 | blockHeight | numeric | False |  | The height of the ChainLock. There will be an internal lookup of "blockHash" if this is not provided. |

### Result
```text

```

### Examples
```bash
 raptoreum-cli verifychainlock "blockHash" "signature"
```
