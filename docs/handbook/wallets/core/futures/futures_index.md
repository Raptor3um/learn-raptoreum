# Futures Transactions

## Overview
Futures transactions are a native feature of the Raptoreum blockchain that allow for scheduled value transfers. Unlike standard transactions, these are initiated and confirmed on-chain today but remain "locked" until a pre-defined future date or block height.


## Use Case: Rental Agreement
Imagine a tenant renting an apartment for three months. Instead of manual monthly transfers, the tenant can schedule all three payments in advance:

- Automation: The tenant sets up three futures transactions, one for each month.

- Transparency: The landlord can verify these transactions on the blockchain immediately. This provides proof of intent and confirms that the payments are scheduled.

- Execution: Once the specified date is reached, the network automatically executes the transaction, transferring the funds to the landlord's wallet.


## Futures Execution Logic
In the Raptoreum network, two distinct parameters determine when a transaction is released and becomes spendable:

- Maturity (Block Count): The number of block confirmations required after the transaction is broadcast.
- Lock Time (Time): A specific duration or timestamp measured in seconds.

### Why both?
The target block time for Raptoreum is 2 minutes. However, due to fluctuations in network hash rate and difficulty, blocks are not always found at exact intervals.

By providing both options, the network ensures flexibility:

- Redundancy: The transaction becomes spendable as soon as either the required block count (Maturity) is reached or the specified time (Lock Time) has passed.
- Precision: This "dual-trigger" system allows users to schedule payments reliably, even if the network speed varies.