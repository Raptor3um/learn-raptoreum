# Address Index RPC Commands

The Address Index allows you to query balances, deltas, and unspent outputs for specific addresses. 

!!! warning "Requirement"
    These commands require the node to be started with the `-addressindex=1` flag. If you are enabling it on an existing installation, a `-reindex` might be necessary.

---

## getaddressbalance

Returns the balance for an address or multiple addresses.

### Arguments

| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | `addresses` | json array | No | [] | A list of base58check encoded addresses. |
| 2 | `asset` | string | No | "RTM" | Get balance for a specific asset. Use `"*"` for all assets. |

### Result (For RTM)
```json
{
  "balance" : n,           /* The current total balance in duffs */
  "balance_immature" : n,  /* The current immature balance in duffs */
  "balance_spendable" : n, /* The current spendable balance in duffs */
  "received" : n           /* The total number of duffs received (including change) */
}
```

### Result (For assets):
```json
{                               /* (json object) */
  "asset name" : {              /* (json object) */
    "balance" : n,              /* (numeric) The current total balance in duffs */
    "balance_immature" : n,     /* (numeric) The current immature balance in duffs */
    "balance_spendable" : n,    /* (numeric) The current spendable balance in duffs */
    "received" : n              /* (numeric) The total number of duffs received (including change) */
  }
}
```

### Examples
```bash
> raptoreum-cli getaddressbalance '{"addresses": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg"]}'
```
```bash
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaddressbalance", "params": [{"addresses": ["XwnLY9Tf7Zsef8gMGL2fhWA9ZmMjt4KPwg"]}] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```