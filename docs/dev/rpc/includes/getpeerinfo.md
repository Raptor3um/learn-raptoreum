## getpeerinfo

Returns data about each connected network node as a json array of objects.

### Arguments

No arguments.

### Result
```json
[                                        (json array)
  {                                      (json object)
    "id" : n,                            (numeric) Peer index
    "addr" : "str",                      (string) (host:port) The IP address and port of the peer
    "addrlocal" : "str",                 (string) (ip:port) Local address as reported by the peer
    "addrbind" : "str",                  (string) (ip:port) Bind address of the connection to the peer
    "mapped_as" : "str",                 (string) The AS in the BGP route to the peer used for diversifying peer selection
    "services" : "hex",                  (string) The services offered
    "verified_proregtx_hash" : "hex",    (string, optional) Only present when the peer is a smartnode and successfully authenticated via MNAUTH. In this case, this field contains the protx hash of the smartnode
    "verified_pubkey_hash" : "hex",      (string, optional) Only present when the peer is a smartnode and successfully authenticated via MNAUTH. In this case, this field contains the hash of the smartnode's operator public key
    "servicesnames" : [                  (json array) the services offered, in human-readable form
      "str",                             (string) the service name if it is recognised
      ...
    ],
    "relaytxes" : true|false,            (boolean) Whether peer has asked us to relay transactions to it
    "lastsend" : xxx,                    (numeric) The UNIX epoch time of the last send
    "lastrecv" : xxx,                    (numeric) The UNIX epoch time of the last receive
    "bytessent" : n,                     (numeric) The total bytes sent
    "bytesrecv" : n,                     (numeric) The total bytes received
    "conntime" : xxx,                    (numeric) The UNIX epoch time of the connection
    "timeoffset" : n,                    (numeric) The time offset in seconds
    "pingtime" : n,                      (numeric) ping time (if available)
    "minping" : n,                       (numeric) minimum observed ping time (if any at all)
    "pingwait" : n,                      (numeric) ping wait (if non-zero)
    "version" : n,                       (numeric) The peer version, such as 70001
    "subver" : "str",                    (string) The string version
    "inbound" : true|false,              (boolean) Inbound (true) or Outbound (false)
    "addnode" : true|false,              (boolean) Whether connection was due to addnode/-connect or if it was an automatic/inbound connection
    "smartnode" : true|false,            (boolean) Whether connection was due to smartnode connection attempt
    "startingheight" : n,                (numeric) The starting height (block) of the peer
    "banscore" : n,                      (numeric) The ban score
    "synced_headers" : n,                (numeric) The last header we have in common with this peer
    "synced_blocks" : n,                 (numeric) The last block we have in common with this peer
    "inflight" : [                       (json array)
      n,                                 (numeric) The heights of blocks we're currently asking from this peer
      ...
    ],
    "whitelisted" : true|false,          (boolean) Whether the peer is whitelisted
    "bytessent_per_msg" : {              (json object)
      "msg" : n,                         (numeric) The total bytes sent aggregated by message type
                                         When a message type is not listed in this json object, the bytes sent are 0.
                                         Only known message types can appear as keys in the object.
      ...
    },
    "bytesrecv_per_msg" : {              (json object)
      "msg" : n                          (numeric) The total bytes received aggregated by message type
                                         When a message type is not listed in this json object, the bytes received are 0.
                                         Only known message types can appear as keys in the object and all bytes received of unknown message types are listed under '*other*'.
    }
  },
  ...
]
```

### Examples
```bash
 raptoreum-cli getpeerinfo
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getpeerinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
