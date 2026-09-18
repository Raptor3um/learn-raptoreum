## gobject vote-conf
Vote on a governance object by smartnode configured in raptoreum.conf.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | governance-hash | string | True |  | Hash of the governance object. |
| 2 | vote | string | True |  | Vote, possible values: `funding`, `valid`, `delete`, `endorsed`. |
| 3 | vote-outcome | string | True |  | Vote outcome, possible values: `yes`, `no`, `abstain`. |

### Examples
```bash
raptoreum-cli gobject vote-conf "governance-hash" "funding" "yes"
```
