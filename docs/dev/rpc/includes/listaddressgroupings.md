## listaddressgroupings
Lists groups of addresses which have had their common ownership made public by common use as inputs or as the resulting change in past transactions.

### Arguments
None

### Result
```json
[               (json array)
  [             (json array)
    [           (json array)
      "str",    (string) The raptoreum address
      n,        (numeric) The amount in RTM
      "str",    (string, optional) The label
      ...
    ],
    ...
  ],
  ...
]
```

### Examples
```bash
 raptoreum-cli listaddressgroupings
```

```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listaddressgroupings", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

