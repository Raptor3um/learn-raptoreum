## logging
Gets and sets the logging configuration.
When called without an argument, returns the list of categories with status that are currently being debug logged or not.
When called with arguments, adds or removes categories from debug logging and return the lists above.
The arguments are evaluated in order "include", "exclude".
If an item is both included and excluded, it will thus end up being excluded.
The valid logging categories are: 0, 1, all, none, raptoreum
In addition, the following are available as category names with special meanings:
  - "all",  "1" : represent all logging categories.
  - "raptoreum" activates all Raptoreum-specific categories at once.
To deactivate all categories at once you can specify "all" in <exclude>.
  - "none", "0" : even if other logging categories are specified, ignore all of them.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | include | json array | False |  | A json array of categories to add debug logging |
| **Include** |  |  |  |  |  |
| 1.1 | include_category | string |  |  | The valid logging category. |
| 2 | exclude | json array | False |  | A json array of categories to remove debug logging |
| **Exclude** |  |  |  |  |  |
| 2.1 | exclude_category | string |  |  | The valid logging category. |

### Result
```json
{                             (json object) where keys are the logging categories, and values indicates its status
  "category" : true|false,    (boolean) if being debug logged or not. false:inactive, true:active
  ...
}
```

### Examples
```bash
 raptoreum-cli logging "[\"all\"]" "[\"http\"]"
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "logging", "params": [["all"], "[libevent]"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

