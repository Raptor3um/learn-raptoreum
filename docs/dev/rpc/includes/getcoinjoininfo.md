## getcoinjoininfo
Returns an object containing an information about CoinJoin settings and state.

Result (for regular nodes):
{                                 (json object)
  "enabled" : true|false,         (boolean) Whether mixing functionality is enabled
  "multisession" : true|false,    (boolean) Whether CoinJoin Multisession option is enabled
  "max_sessions" : n,             (numeric) How many parallel mixing sessions can there be at once
  "max_rounds" : n,               (numeric) How many rounds to mix
  "max_amount" : n,               (numeric) Target CoinJoin balance in RTM
  "denoms_goal" : n,              (numeric) How many inputs of each denominated amount to target
  "denoms_hardcap" : n,           (numeric) Maximum limit of how many inputs of each denominated amount to create
  "queue_size" : n,               (numeric) How many queues there are currently on the network
  "running" : true|false,         (boolean) Whether mixing is currently running
  "sessions" : [                  (json array)
    {                             (json object)
      "protxhash" : "hex",        (string) The ProTxHash of the smartnode
      "outpoint" : "hex",         (string) The outpoint of the smartnode
      "service" : "str",          (string) The IP address and port of the smartnode
      "denomination" : n,         (numeric) The denomination of the mixing session in RTM
      "state" : "hex",            (string) Current state of the mixing session
      "entries_count" : n         (numeric) The number of entries in the mixing session
    },
    ...
  ],
  "keys_left" : n,                (numeric) How many new keys are left since last automatic backup
  "warnings" : "str"              (string) Warnings if any
}
Result (for smartnodes):
{                         (json object)
  "queue_size" : n,       (numeric) How many queues there are currently on the network
  "denomination" : n,     (numeric) The denomination of the mixing session in RTM
  "state" : "hex",        (string) Current state of the mixing session
  "entries_count" : n     (numeric) The number of entries in the mixing session
}
### Arguments
None

### Examples
```bash
 raptoreum-cli getcoinjoininfo
```

```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getcoinjoininfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

