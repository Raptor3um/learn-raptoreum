## gobject vote-many
Vote on a governance object by all smartnodes for which the voting key is present in the local wallet.

Requires wallet passphrase to be set with `walletpassphrase` call if wallet is encrypted.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | governance-hash | string | True |  | Hash of the governance object. |
| 2 | vote | string | True |  | Vote, possible values: `funding`, `valid`, `delete`, `endorsed`. |
| 3 | vote-outcome | string | True |  | Vote outcome, possible values: `yes`, `no`, `abstain`. |

### Examples
```bash
raptoreum-cli gobject vote-many "governance-hash" "funding" "yes"
```
