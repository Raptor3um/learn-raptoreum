## protx diff
Calculates a diff between two deterministic smartnode lists. The result also contains proof data.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | baseBlock | numeric | True |  | The starting block height. |
| 2 | block | numeric | True |  | The ending block height. |

### Result
```json
{
  "baseBlockHash": "713ec1de51f2e3171659ab8c00ff09c20f4d365cdeb863f80dcf1c788abc7415",
  "blockHash": "c627c1bd7456be4e25d9dfcfe7c2d4efb0371124a88995af694f239909d5a236",
  "cbTxMerkleTree": "010000000161413696a512c5caad62a6da678dc5d0e82e85a06c0e43603300e6452de9b8690101",
  "cbTx": "03000500010000000000000000000000000000000000000000000000000000000000000000ffffffff2903d3e015042bd1af6a110000002082f9ce07cccccccccccccccccc0d2f6e6f64655374726174756d2f00000000030014c953150000001976a914b5eca711dddc5bf59086263b6fef9535f095b72588ac0045f254050000001976a914cc36a8de36f6ff61dbfb798982e8b47354ad4e0e88ac000b32fa4f0000001976a91485f9ded837a51990547e12a26a2e007265ad04e488ac00000000460200d3e01500fe3724ae2d924c44156f3e373987fc08919037af160b10c21bd15bfb922ae8e2c6f0dea7b1209096e0958bc324f7f21ded775357853361d6be8b9ab0ca7ac9e9",
  "deletedMNs": [
  ],
  "mnList": [
  ],
  "deletedQuorums": [
  ],
  "newQuorums": [
  ],
  "merkleRootMNList": "e2e82a92fb5bd11bc2100b16af37909108fc8739373e6f15444c922dae2437fe",
  "merkleRootQuorums": "e9c97acab09a8bbed6613385575377ed1df2f724c38b95e0969020b1a7def0c6"
}
```

### Examples
```bash
raptoreum-cli protx diff 1433810 1433811
```
