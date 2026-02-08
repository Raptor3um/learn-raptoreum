## getwalletinfo

{                                         (json object)

### Arguments

No arguments.

### Result
```json
{                                         (json object)
  "walletname" : "str",                   (string) the wallet name
  "walletversion" : n,                    (numeric) the wallet version
  "balance" : n,                          (numeric) the total confirmed balance of the wallet in RTM
  "coinjoin_balance" : n,                 (numeric) the CoinJoin balance in RTM
  "unconfirmed_balance" : n,              (numeric) the total unconfirmed balance of the wallet in RTM
  "immature_balance" : n,                 (numeric) the total immature balance of the wallet in RTM
  "txcount" : n,                          (numeric) the total number of transactions in the wallet
  "timefirstkey" : xxx,                   (numeric) the UNIX epoch time of the oldest known key in the wallet
  "keypoololdest" : xxx,                  (numeric) the UNIX epoch time of the oldest pre-generated key in the key pool
  "keypoolsize" : n,                      (numeric) how many new keys are pre-generated (only counts external keys)
  "keypoolsize_hd_internal" : n,          (numeric) how many new keys are pre-generated for internal use (used for change outputs, only appears if the wallet is using this feature, otherwise external keys are used)
  "keys_left" : n,                        (numeric) how many new keys are left since last automatic backup
  "unlocked_until" : xxx,                 (numeric) the UNIX epoch time until which the wallet is unlocked for transfers, or 0 if the wallet is locked
  "paytxfee" : n,                         (numeric) the transaction fee configuration, set in RTM/kB
  "hdchainid" : "hex",                    (string) the ID of the HD chain
  "hdaccountcount" : "str",               (string) how many accounts of the HD chain are in this wallet
  "" : [                                  (json array)
    {                                     (json object)
      "hdaccountindex" : n,               (numeric) the index of the account
      "hdexternalkeyindex" : n,           (numeric) current external childkey index
      "hdinternalkeyindex" : n            (numeric) current internal childkey index
    },
    ...
  ],
  "scanning" : {                          (json object) current scanning details, or false if no scan is in progress
    "duration" : n,                       (numeric) elapsed seconds since scan start
    "progress" : n                        (numeric) scanning progress percentage [0.0, 1.0]
  },
  "private_keys_enabled" : true|false     (boolean) false if privatekeys are disabled for this wallet (enforced watch-only wallet)
}
```

### Examples
```bash
 raptoreum-cli getwalletinfo
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getwalletinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
