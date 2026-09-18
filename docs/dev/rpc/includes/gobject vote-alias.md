## gobject vote-alias
Vote on a governance object by smartnode's voting key (if present in local wallet).

Requires wallet passphrase to be set with `walletpassphrase` call if wallet is encrypted.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | governance-hash | string | True |  | Hash of the governance object. |
| 2 | vote | string | True |  | Vote, possible values: `funding`, `valid`, `delete`, `endorsed`. |
| 3 | vote-outcome | string | True |  | Vote outcome, possible values: `yes`, `no`, `abstain`. |
| 4 | protx-hash | string | True |  | Smartnode's proTxHash. |

### Examples
```bash
raptoreum-cli gobject vote-alias "governance-hash" "funding" "yes" "protx-hash"
```
