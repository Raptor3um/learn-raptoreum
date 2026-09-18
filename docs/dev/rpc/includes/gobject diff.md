## gobject diff
List differences since last diff or list.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | signal | string | False | valid | Cached signal, possible values: `valid`, `funding`, `delete`, `endorsed`, `all`. |
| 2 | type | string | False | all | Object type, possible values: `proposals`, `triggers`, `all`. |

### Examples
```bash
raptoreum-cli gobject diff "valid" "proposals"
```
