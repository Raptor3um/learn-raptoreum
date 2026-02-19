# Rapthorus Telegram & Discord Bot

Rapthorus is an in-house development by Raptoreum, specifically created for Discord and Telegram.

The bot is Linux-based and combines Python scripts, MongoDB, and Raptoreum Core RPC queries. The Rapthorus code is deliberately not offered as an open-source solution on GitHub to maintain internal security and integrity.

You can find the Rapthorus bot here:

- **Telegram:** [@Rapthorus_Bot](https://t.me/Rapthorus_Bot)
- **Telegram:** Official Raptoreum groups
- **Discord:** Official Raptoreum server


## Basic Functions
- **Data Transmission:** Rapthorus relays data, such as the Discord Explorer, directly to the Telegram news feed.
- **News Updates:** The bot reports the latest project news on Telegram.
- **Wallet Monitoring:** You can monitor your external wallets on both Discord and Telegram.
- **Web Wallet (Telegram exclusive):** A built-in web wallet allows you to send, receive, and tip RTM directly within the app.


## Wallet Monitoring
With Rapthorus, you can track your wallet balances and receive instant notifications whenever RTM is transferred to your addresses.

### Discord
1. Type `$horus` in the Discord channel (it is recommended to do this via Direct Message to the bot).
2. Click **Start** (you have 30 seconds to react).
3. Click **Wallets**.
4. Choose whether to view your balance, add a new wallet for monitoring, or delete an existing one.

*Note: Once a transaction is confirmed on the blockchain, Rapthorus will send you a private message.*

### Telegram
1. Use the command `/addmonitoringwallets` in a private chat with the bot or a supported group.
2. Follow the instructions to add a new address.
3. Use `/balance` to view the status of all stored addresses.


## Smartnodes Overview
Monitor your Smartnodes and receive alerts if they encounter issues. You can also manually check their status at any time.

### Discord
1. Type `$horus` and click **Start**.
2. Select **Smartnodes**.
3. Follow the instructions to add or remove a Smartnode from your list.

### Telegram
1. Type `/addmonitoringsmartnode` to start the setup.
2. Follow the prompts to add your Smartnode.
3. Use `/checksmartnodes` to get an instant status update on your monitored nodes.


## Telegram Web Wallet
When you interact with Rapthorus via DM or post a message in the official Raptoreum Telegram groups, you automatically receive a dedicated wallet address.

**Prerequisites:**
- You must have a Telegram **username** (e.g., @YourName) set up in your profile settings.

> [CAUTION]
> **Important Note:** This is not a classic wallet with a `wallet.dat` or a recovery seed phrase. The Rapthorus web wallet is tied strictly to your Telegram account. If you lose access to your Telegram account, you lose your RTM. We cannot recover or reassign funds to a different account.

### Wallet Balance
Check your Telegram Web Wallet balance using the `/balance` command. You will also receive a notification for any incoming transactions.

### Sending RTM
You can send RTM to other Telegram users or any standard Raptoreum wallet address. To send RTM to another user, they must also have a Rapthorus wallet.

**To a Telegram User:**
```bash
rtm.send 1 @germarides
```
Description:

- rtm.send = The command to send
- 1 = The amount of RTM you want to send
- @germardies = The user you want to send the RTM to

```bash
rtm.send 1 RFkGFVTE67SLgZHGbwbGbyXtJdrj6L8aT5
```
Description:

- rtm.send = The command to send
- 1 = The amount of RTM you want to send
- RFkGFVTE67SLgZHGbwbGbyXtJdrj6L8aT5 = The RTM wallet address you want to send RTM to

### Rain & Airdrops

Rapthorus allows you to participate in community "Rains" (Airdrops) or distribute RTM to others.
Receiving RTM

To qualify for airdrops, you must be active in the official Raptoreum groups.
Rapthorus awards points for messages (minimum 2-3 words).
When a "Rain" occurs, the RTM is distributed among users based on their activity points from the last 24 hours.

```bash
rtm.send 100 a 10
```
Description

- rtm.send = command to send
- 100 = the amount of RTM you want to give away
- a = command to give away to active users
- 10 = the number of users to whom your gifted RTM will be distributed based on their point balance

```bash
rtm.send 100 r 10
```
Description

- rtm.send = command to send
- 100 = the amount of RTM you want to give away
- r = command to give away to random users
- 10 = the number of users to whom your gifted RTM will be distributed (maximum 20)

