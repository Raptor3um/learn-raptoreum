## getblockchaininfo

{                                         (json object)

### Arguments

No arguments.

### Result
```json
{                                         (json object)
  "chain" : "str",                        (string) current network name (main, test, regtest) and devnet or devnet-<name> for "-devnet" and "-devnet=<name>" respectively
                                          
  "blocks" : n,                           (numeric) the height of the most-work fully-validated chain. The genesis block has height 0
  "headers" : n,                          (numeric) the current number of headers we have validated
  "bestblockhash" : "str",                (string) the hash of the currently best block
  "difficulty" : n,                       (numeric) the current difficulty
  "mediantime" : n,                       (numeric) median time for the current best block
  "verificationprogress" : n,             (numeric) estimate of verification progress [0..1]
  "initialblockdownload" : true|false,    (boolean) (debug information) estimate of whether this node is in Initial Block Download mode
  "chainwork" : "hex",                    (string) total amount of work in active chain, in hexadecimal
  "size_on_disk" : n,                     (numeric) the estimated size of the block and undo files on disk
  "pruned" : true|false,                  (boolean) if the blocks are subject to pruning
  "pruneheight" : n,                      (numeric) lowest-height complete block stored (only present if pruning is enabled)
  "automatic_pruning" : true|false,       (boolean) whether automatic pruning is enabled (only present if pruning is enabled)
  "prune_target_size" : n,                (numeric) the target size used by pruning (only present if automatic pruning is enabled)
  "softforks" : [                         (json array) status of softforks in progress
    {                                     (json object)
      "xxxx" : "str",                     (string) name of the softfork
      "version" : "str",                  (string) block version
      "reject" : {                        (json object) progress toward rejecting pre-softfork blocks
        "status" : true|false             (boolean) true if threshold reached
      }
    },
    ...
  ],
  "rip1_softforks" : {                    (json object) status of RIP1 softforks in progress
    "xxxx" : {                            (json object) name of the softfork
      "status" : "str",                   (string) one of "defined", "started", "locked_in", "active", "failed"
      "start_height" : n,                 (numeric) the block height where voting starts
      "round_size" : n,                   (numeric) number of block per round of voting
      "voting_period" : n,                (numeric) Number of rounds required for voting threshold check
      "miners" : {                        (json object) miner numeric statistics about RIP1 signalling for a softfork
        "mean_percentage" : n,            (numeric) the mean approved percentage for this current voting period
        "weighted_yes" : n,               (numeric) the number of approved votes for this voting period
        "weight" : n,                     (numeric) the number of votes for this voting period
        "samples" : n,                    (numeric) the number of round has been passed
        "threshold" : n,                  (numeric) current pass activation threshold
        "approved" : true|false           (boolean) returns false if miners has not yet approved
      },
      "nodes" : {                         (json object) node numeric statistics about RIP1 signalling for a softfork
        "mean_percentage" : n,            (numeric) the mean of approved percentage for this current voting period
        "weighted_yes" : n,               (numeric) the number of approved votes for this voting period
        "weight" : n,                     (numeric) the number of votes for this voting period
        "samples" : n,                    (numeric) the number of round has been passed
        "threshold" : n,                  (numeric) current pass activation threshold
        "approved" : true|false           (boolean) returns false if nodes has not approved
      }
    },
    ...
  },
  "warnings" : "str"                      (string) any network and blockchain warnings
}
```

### Examples
```bash
 raptoreum-cli getblockchaininfo
```
```bash
 curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblockchaininfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:10225/
```

---
