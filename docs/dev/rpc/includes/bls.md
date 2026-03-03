## bls

bls "command"
Set of commands to execute BLS related actions.
To get help on individual commands, use "help bls command".

Available commands:
  generate          - Create a BLS secret/public key pair
  fromsecret        - Parse a BLS secret key and return the secret/public key pair

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | command | string | True |  | Available commands:  generate and fromsecret |

### Generate Result
```json
{                           (json object)
  "secret" : "hex",         (string) The value of the secret key
  "public" : "hex"          (string) The value of the public key
}

```
### Examples
```bash
Create a BLS secret/public key pair
```
```bash
 raptoreum-cli bls generate
```


### fromsecret Result
```json
{                      (json object)
  "secret" : "hex",    (string) BLS secret key
  "public" : "hex"     (string) BLS public key
}

```
### Examples
```bash
Parses a BLS secret key and returns the secret/public key pair.
```
```bash
 raptoreum-cli bls fromsecret 000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f
```

---
