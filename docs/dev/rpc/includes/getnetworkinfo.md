## getnetworkinfo

{                                                    (json object)

### Arguments

No arguments.

### Result
```json
{                                                    (json object)
  "version" : n,                                     (numeric) the server version
  "buildversion" : "str",                            (string) the server build version including RC info or commit as relevant
  "subversion" : "str",                              (string) the server subversion string
  "protocolversion" : n,                             (numeric) the protocol version
  "localservices" : "hex",                           (string) the services we offer to the network
  "localservicesnames" : [                           (json array) the services we offer to the network, in human-readable form
    "str",                                           (string) the service name
    ...
  ],
  "localrelay" : true|false,                         (boolean) true if transaction relay is requested from peers
  "timeoffset" : n,                                  (numeric) the time offset
  "connections" : n,                                 (numeric) the number of connections
  "networkactive" : true|false,                      (boolean) whether p2p networking is enabled
  "socketevents" : "str",                            (string) the socket events mode, either kqueue, epoll, poll or select
  "networks" : [                                     (json array) information per network
    {                                                (json object)
      "name" : "str",                                (string) network (ipv4, ipv6 or onion)
      "limited" : true|false,                        (boolean) is the network limited using -onlynet?
      "reachable" : true|false,                      (boolean) is the network reachable?
      "proxy" : "str",                               (string) ("host:port") the proxy that is used for this network, or empty if none
      "proxy_randomize_credentials" : true|false     (boolean) Whether randomized credentials are used
    },
    ...
  ],
  "relayfee" : n,                                    (numeric) minimum relay fee for transactions in RTM/kB
  "incrementalfee" : n,                              (numeric) minimum fee increment for mempool limiting in RTM/kB
  "localaddresses" : [                               (json array) list of local addresses
    {                                                (json object)
      "address" : "str",                             (string) network address
      "port" : n,                                    (numeric) network port
      "score" : n                                    (numeric) relative score
    },
    ...
  ],
  "warnings" : "str"                                 (string) any network and blockchain warnings
}
```

### Examples
```bash
 raptoreum-cli getnetworkinfo
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getnetworkinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
