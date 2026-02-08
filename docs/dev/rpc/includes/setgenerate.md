## setgenerate

Set 'generate' true or false to turn generation on or off.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |


### Examples
```bash
Set the generation on with a limit of one processor
```
```bash
 raptoreum-cli setgenerate true 1
```
```bash
Check the setting
```
```bash
 raptoreum-cli getgenerate
```
```bash
Turn off generation
```
```bash
 raptoreum-cli setgenerate false
```
```bash
Using json rpc
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "setgenerate", "params": [true, 1] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
