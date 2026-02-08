## deriveaddresses

Derives one or more addresses corresponding to an output descriptor.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |


### Result
```json
[           (json array)
  "str",    (string) the derived addresses
  ...
]
```

### Examples
```bash
First three receive addresses
```
```bash
 raptoreum-cli deriveaddresses "pkh([d34db33f/84h/0h/0h]xpub6DJ2dNUysrn5Vt36jH2KLBT2i1auw1tTSSomg8PhqNiUtx8QX2SvC9nrHu81fT41fvDUnhMjEzQgXnQjKEu3oaqMSzhSrHMxyyoEAmUHQbY/0/*)#cjjspncu" "[0,2]"
```

---
