## verifymessage
Verify a signed message.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | address | string | True |  | The Raptoreum address to use for the signature. |
| 2 | signature | string | True |  | The signature provided by the signer in base 64 encoding (see signmessage). |
| 3 | message | string | True |  | The message that was signed. |

### Result
```text
true|false    (boolean) If the signature is verified or not.
```

### Examples

Unlock the wallet for 30 seconds:

```bash
 raptoreum-cli walletpassphrase "mypassphrase" 30
```


Create the signature:

```bash
 raptoreum-cli signmessage "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" "my message"
```

Verify the signature:

```bash
 raptoreum-cli verifymessage "XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG" "signature" "my message"
```

As json rpc

```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "verifymessage", "params": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG", "signature", "my message"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

