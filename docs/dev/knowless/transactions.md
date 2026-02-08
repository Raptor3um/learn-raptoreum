# Transaction Types

The Raptoreum (RTM) network utilizes a sophisticated set of specialized transaction types. While many blockchains only support standard transfers, RTM leverages Special Transactions (SpecTx) to power its unique features like Smartnodes, Assets, and Future-locking.

📊 Protocol Overview

The table below describes the currently active transaction types within the Raptoreum protocol.

| Type | Name | Purpose | Network Function | 
| ----- | ----- | ----- | ----- | 
| `0` | Standard | RTM/Asset Transfer | Moving value between addresses. | 
| `1` | ProRegTx | Smartnode Registration | Creates the Smartnode identity & locks collateral. | 
| `2` | ProUpServTx | Service Update | Updates IP, Port, or Operator payout info. | 
| `3` | ProUpRegTx | Registrar Update | Updates Owner/Voting keys or payout address. | 
| `4` | ProUpRevTx | Revocation | Operator revokes the node (e.g. for maintenance). | 
| `5` | Coinbase | Mining Reward | Created by miners; contains block rewards. | 
| `6` | LLMQ | Quorum Commitment | Essential for ChainLocks & InstantSend security. | 
| `7` | Future | Scheduled TX | Time-locked or Block-locked transfers. | 
| `8` | Asset Issue | Asset Creation | Deploying a new Asset on the protocol. | 
| `9` | Asset Movement | Asset Movement | Transferring existing assets (non-minting transactions). | 
| `10` | Asset Mint | Supply Increase | Increasing the supply of an existing Asset. | 

💡 Key Network Pillars

ℹ️ Smartnode Governance (Types 1-4)
These transaction types manage the Deterministic Smartnode List. This ensures the entire network has a single, verifiable source of truth for all active nodes, preventing "ghost nodes" and ensuring fair reward distribution.

✅ Native Asset Protocol (Types 8, 9 & 10)
Unlike other chains that require complex and risky smart contracts (like ERC-20), Raptoreum allows asset management directly in the core. This includes creation (Type 8), secure transfer (Type 9), and supply management (Type 10).

⚠️ Network Security: LLMQ (Type 6)
This transaction type is the backbone of RTM's ChainLocks. It protects the network from 51% attacks by allowing the Smartnode network to "lock" a block as soon as it is discovered, making reorganizations impossible.

Technical Note

To inspect the transaction type of any transaction, use the following RPC command:

```bash
raptoreum-cli getrawtransaction "txid" 1
```

The specific transaction category can be found in the type field of the resulting JSON output.