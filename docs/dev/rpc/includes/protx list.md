## protx list
Lists all ProTxs in your wallet or on-chain, depending on the given type.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | type | string | False | registered | Available Types: `registered` - List all ProTx which are registered at the given chain height. This will also include ProTx which failed PoSe verification. `valid` - List only ProTx which are active/valid at the given chain height. `wallet` - List only ProTx which are found in your wallet at the given chain height. This will also include ProTx which failed PoSe verification. |
| 2 | detailed | boolean | False | false | If not specified, only the hashes of the ProTx will be returned. |
| 3 | height | numeric | False | current chain-tip |  |

### Result
```json
{
    "proTxHash": "17ced204f589625574f67070a1eaeaefb2af73e1bd423d58c895ac3ebe168584",
    "collateralHash": "f77c0aa634c05563ef32fb91f49dda1672bb3fa97ae439bae558235a9c6b1ef3",
    "collateralIndex": 0,
    "collateralAddress": "RAsqmgoTo6YKjG81VTrgeVatcRUGKqx61g",
    "collateralAmount": 1800000,
    "needToUpgrade": false,
    "operatorReward": 0,
    "state": {
      "service": "188.134.85.91:10226",
      "registeredHeight": 1003695,
      "lastPaidHeight": 1433623,
      "PoSePenalty": 0,
      "PoSeRevivedHeight": 1069898,
      "PoSeBanHeight": -1,
      "revocationReason": 0,
      "ownerAddress": "RATULnHPZn7cCRYk5HnZFH1u6a73co7KWx",
      "votingAddress": "RDxttS5LkVUJWjGGZy4B7KrTN118Uimvkg",
      "payoutAddress": "RPB6jzRD2guVyTnFMA7KphnVrpvP4LKHkf",
      "pubKeyOperator": "152355e27f80d0be1e4309082a58b7d4e8cb664bdc82187fec572ac323c85e2648ded9ba3d3c18271128523fd0f9dd29"
    },
    "confirmations": 430180,
    "wallet": {
      "hasOwnerKey": false,
      "hasOperatorKey": false,
      "hasVotingKey": false,
      "ownsCollateral": false,
      "ownsPayeeScript": false,
      "ownsOperatorRewardScript": false
    },
    "metaInfo": {
      "lastDSQ": 340,
      "mixingTxCount": 0,
      "lastOutboundAttempt": 0,
      "lastOutboundAttemptElapsed": 1789907650,
      "lastOutboundSuccess": 0,
      "lastOutboundSuccessElapsed": 1789907650
    }
  },
```

### Examples
```bash
raptoreum-cli protx list registered true
```
