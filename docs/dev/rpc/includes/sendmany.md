## sendmany
Send multiple times. Amounts are double-precision floating point numbers.
Requires wallet passphrase to be set with walletpassphrase call if wallet is encrypted.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | dummy | string | True |  | Must be set to "" for backwards compatibility. |
| 2 | amounts | json object | True |  | A json object with addresses and amounts |
| **Amounts** |  |  |  |  |  |
| 2.1 | address | numeric or string | True |  | The Raptoreum address is the key, the numeric amount (can be string) in RTM is the value. |
| 3 | minconf | numeric | False | 1 | Only use the balance confirmed at least this many times. |
| 4 | addlocked | boolean | False | false | Whether to include transactions locked via InstantSend. |
| 5 | comment | string | False |  | A comment |
| 6 | subtractfeefrom | json array | False |  | A json array with addresses. |
| **Subtractfeefrom** |  |  |  |  |  |
| 6.1 | address | string |  |  | Subtract fee from this address. |
| 7 | use_is | boolean | False | false | Deprecated and ignored |
| 8 | use_cj | boolean | False | false | Use CoinJoin funds only |
| 9 | conf_target | numeric | False | fallback to wallet's default | Confirmation target (in blocks) |
| 10 | estimate_mode | string | False | UNSET | The fee estimate mode, must be one of: |

### Result
```json
"hex"    (string) The transaction id for the send. Only 1 transaction is created regardless of
         the number of addresses.
```
### Examples

Send two amounts to two different addresses:

```bash
 raptoreum-cli sendmany "" "{\"XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG\":0.01,\"XuQQkwA4FYkq2XERzMY2CiAZhJTEDAbtcG\":0.02}"
```

Send two amounts to two different addresses setting the confirmation and comment:

```bash
 raptoreum-cli sendmany "" "{\"XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG\":0.01,\"XuQQkwA4FYkq2XERzMY2CiAZhJTEDAbtcG\":0.02}" 6 false "testing"
```

As a json rpc call:

```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "sendmany", "params": ["", "{\"XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG\":0.01,\"XuQQkwA4FYkq2XERzMY2CiAZhJTEDAbtcG\":0.02}", 6, false, "testing"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

