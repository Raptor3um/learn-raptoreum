## signmessage
Sign a message with the private key of an address
Requires wallet passphrase to be set with walletpassphrase call if wallet is encrypted.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | address | string | True |  | The Raptoreum address to use for the private key. |
| 2 | message | string | True |  | The message to create a signature of. |

### Result
```json
"str"    (string) The signature of the message encoded in base 64
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


As json rpc:

```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "signmessage", "params": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwG", "my message"] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

