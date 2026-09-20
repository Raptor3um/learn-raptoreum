## setgenerate
Set 'generate' true or false to turn generation on or off.
Generation is limited to 'genproclimit' processors, -1 is unlimited.
See the getgenerate call for the current setting.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | generate | boolean | True |  | Set to true to turn on generation, false to turn off. |
| 2 | genproclimit | numeric | False |  | Set the processor limit for when generation is on. Can be -1 for unlimited. |

### Examples

Set the generation on with a limit of one processor:

```bash
 raptoreum-cli setgenerate true 1
```

Check the setting:

```bash
 raptoreum-cli getgenerate
```

Turn off generation:

```bash
 raptoreum-cli setgenerate false
```


As a json rpc:

```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "setgenerate", "params": [true, 1] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

