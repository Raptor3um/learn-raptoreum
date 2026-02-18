# SMARTNODES KNOWLESS

## Smartnodes Reward
Smartnodes offer a way to earn RTM passively while strengthening the network. For their work Smartnodes earn 20% of the block reward, they also earn RTM that is spent when creating future transactions and asset creation fees.
Each Smartnode is paid out in order.

**A calculation example:**
With 1,000 Smartnodes and an average block time of 120 seconds, one cycle takes around 33 hours. If, for example, you own one Smartnode out of these 1,000, you will receive your Smartnode reward once every 33 hours.

Note: Only Enabled smart nodes receive a cyclical payout. Smart nodes with the status Posed, Banned, and Other do not receive a reward.


## Smartnodes types
Smartnodes are categorized into 3 different types based on their health and activity in the network:

🟢 Enabled

This means everything is perfect. The Smartnode is online, synchronized, and fulfilling its duties. It is active in the "Deterministic Smartnode List" and is eligible to receive rewards.


🟡 PoSe Banned (Proof of Service Ban)

Think of this as a "Time-out". The network noticed that your Smartnode isn't responding correctly (e.g., due to a crash, high latency, or being out of sync). To protect the network, it is temporarily banned from rewards.

Fix: Check if the daemon is running and synchronized, then wait for the network to automatically re-enable it or issue a "ProUpServTx" to fix it.


🔴 Other (Waiting / Pre-Enabled / Expired)

This is a "Catch-all" category for nodes that are not currently "Enabled" but aren't banned either:

Pre-Enabled: The node was just started and is waiting for the network to confirm its status.

Expired: The node has been offline for too long.

Waiting: The node is in the queue to be verified.

## One device, one smart node
Each smart node requires a core wallet and a unique, static IPv4 address.
Therefore, it is only possible to install one smart node on a single device.
However, all smart nodes are managed from a single local core wallet.


## Smartnodes Overview
You can find an overview of all smartnodes in several ways:

1. Via the Explorer at https://explorer.raptoreum.com/smartnodes

2. In the Raptoreum QT Core Wallet under the Smartnodes menu.

    * For this, you need to enable the "Show Smartnodes Tab" option under Settings -> Wallets.

3. In the Raptoreum CLI with the command:
```bash
./raptoreum-cli smartnodelist
```
    * This command will output a JSON list of all smartnodes.
