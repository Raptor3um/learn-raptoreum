#Smartnodes Troubleshooting

##🛠️ How to Fix a PoSe Ban

If your Smartnode status is PoSe Banned, it means the network has temporarily excluded you from the reward queue because your node failed to provide the required services.

###Step 1: Check your VPS

First, ensure that your Raptoreum daemon is actually running and synced.
```bash
~/rtm-latest/raptoreum-cli getblockcount
```

Compare this number with the Explorer (https://explorer.raptoreum.com). 
If it's not moving or far behind, restart your daemon.

###Step 2: The Automatic Reset

In many cases, once the technical issue (e.g., sync or connectivity) is resolved, the network will eventually re-scan your node. If your "PoSe Penalty" score drops back to 0, you will be automatically re-enabled.

###Step 3: Manual Reset (ProUpServTx)

If the ban persists, you must issue a Provider Update Service Transaction. This tells the network: 
"I have fixed my node, please check me again."

1. Open your Local QT Wallet (not the VPS Wallet).

2. Open the Debug Console (Window -> Console).

3. Use the following command:
```bash
protx update_service "proTxHash" "ip:port" "operatorKey"
```

    * proTxHash: The transaction ID of your initial Smartnode registration.

    * ip:port: Your VPS IP and port (usually 10226).

    * operatorKey: Your BLS Private Key (operatorSecret).

4. Step 4: Verify

After sending the transaction, wait a few minutes and check your status on the VPS:
```bash
~/rtm-latest/raptoreum-cli smartnode status
```

It should change from POSE_BANNED back to ENABLED.


##How to "Delete" a Smartnode (Unlocking Coins)

If you want to stop running your Smartnode and use your 1,800,000 RTM collateral, you have two main options:

Option A: The "Hard" Way (Unlock & Spend)

You don't technically need to "delete" the node from the network to get your coins back. The collateral is held in your own wallet, but it is "locked" by the software to prevent accidental spending.

1. Open your Local QT Wallet.

2. Go to Settings -> Options -> Wallet.

3. Enable "Enable coin control features".

4. Go to the Send tab and click on Inputs.

5. Find your Smartnode transaction, right-click it, and select Unlock.

6. You can now send these coins to any other address or an exchange.

    *Note: Once the collateral moves, the Smartnode will immediately be dropped from the network list.

Option B: ProUpRevTx (Revocation)

If you want to formally tell the network that the node is shutting down (e.g., the Operator is stopping service), you can issue a Revocation transaction.
```bash
protx revoke "proTxHash" "operatorKey"
```

Important Checklist before deleting:

* Stop the VPS: Once you spend the collateral, you should stop the raptoreumd process on your VPS and cancel your server subscription to save costs.

* Wait for Confirmations: If you intend to sell the RTM, ensure the unlock process is done correctly within the QT wallet as described in Option A.