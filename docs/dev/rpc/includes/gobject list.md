## gobject list
List governance objects (can be filtered by signal and/or object type).

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | signal | string | False | valid | Cached signal, possible values: `valid`, `funding`, `delete`, `endorsed`, `all`. |
| 2 | type | string | False | all | Object type, possible values: `proposals`, `triggers`, `all`. |

### Examples
```bash
raptoreum-cli gobject list "valid" "proposals"
```
