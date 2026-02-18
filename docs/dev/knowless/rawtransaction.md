Guide: Creating a Raw Transaction in Raptoreum (CLI)
This guide assumes you have raptoreumd running and raptoreum-cli accessible.

## Basics
To create a RAW transaction, you need to familiarize yourself with the UTOX system.

Every transaction you receive is ultimately UTOX. For a RAW transaction, we search for these UTOX and use them for the transaction.

However, since one or more UTOX will not exactly match your sending amount, we always need a change address to send the remaining UTOX back to you.

## Start & Sync Daemon

1. Start your raptoreum Daemon:
```bash
./raptoreumd
```
alternativ (Start in Background):
```bash
./raptoreumd --daemon
```

2. Wait until everything is synchronized.
Check the status with:
```bash
./raptoreum-cli getblockcount
```
If the output block is identical to the block in the Raptoreum Explorer, your daemon is synchronized.

    Note: If you want to stop the daemon later, do so with `./raptoreum-cli stop`.

## Assemble transaction

1. Identify the Unspent Transaction Output (UTXO)
    First, you need to find the funds you want to spend.
    ```bash
    raptoreum-cli listunspent
    ```
    Look for a specific entry and note down the txid and the vout (index). Also, note the amount.

    For example: You want to transfer 1000 RTM. Then you need one or more UTOX. The sum of your selected UTOX must be greater than or equal to the amount you want to send.

    ```JSON
    {
    "txid": "89e2xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx73fe",
    "vout": 0,
    "address": "RS8mxxxxxxxxxxxxxxxxxnRg3",
    "label": "TESTING",
    "scriptPubKey": "76a914b8e2717807ecfbcc6254e479a0d2812e4077d40188ac",
    "amount": 942.00000000,
    "confirmations": 122441,
    "spendable": true,
    "future": false,
    "futureSpendable": true,
    "solvable": true,
    "desc": "pkh([b8e27178]020ed7605ce38097195d4d5e479469acdaa49cee221abf746f310d96f6870adbea)#csjfu7f6",
    "safe": true,
    "coinjoin_rounds": -2
    },
    {
    "txid": "3cd07ff7xxxxxxxxxxxxxxxxxxxxxxxxxxxxxd19736fc271fc",
    "vout": 0,
    "address": "RS8mxxxxxxxxxxxxxxxxxnRg3",
    "label": "TESTING",
    "scriptPubKey": "76a914b8e2717807ecfbcc6254e479a0d2812e4077d40188ac",
    "amount": 932.00000000,
    "confirmations": 4306,
    "spendable": true,
    "future": false,
    "futureSpendable": true,
    "solvable": true,
    "desc": "pkh([b8e27178]020ed7605ce38097195d4d5e479469acdaa49cee221abf746f310d96f6870adbea)#csjfu7f6",
    "safe": true,
    "coinjoin_rounds": -2
    },
    ```
    Since you want to ship 1000 RTM, you need both. The first UTXO has an amount of 942.00000000 RTM and the second has 932.00000000 RTM. Since 942 is less than 1000, both are needed.

2. Note down/copy the txid of the UTOX you want to use for the transaction, and also the vout number.
    Example:
    ```bash
    txid1 = 89e2xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx73fe
    txid1 vout: 0

    txid2 = 3cd07ff7xxxxxxxxxxxxxxxxxxxxxxxxxxxxxd19736fc271fc
    txid vout: 0
    ```

## Calculyting Fee

1. Calculating Transaction Fees
    First, we read the fees from the last 100 transactions:

    ```bash
    ./raptoreum-cli estimatesmartfee 100
    ```
    EXPAMPLE OUTPUT:
    ```JSON
    {
    "feerate": 0.00001211,
    "blocks": 100
    }
    ```
    The fee per kilobyte in this example is 0.00001211RTM

2. Calculate the change fees

    Example: RTM Input - RTM Output - Averrrage Fee
    Example: (942 RTM + 932 RTM) - 1000RTM - 0.00001211RTM = 873.99998789RTM

3. Create an Initial Raw Transaction (Skeleton)

    To get a base for your calculation, create a transaction with all inputs and outputs. You can use placeholder amounts for the change at this stage.

    ```bash
    ./raptoreum-cli createrawtransaction '[{"txid":"TXID1","vout":0},{"txid":"TXID2","vout":0}]' '{"DEST_ADDR":1000, "CHANGE_ADDR":873.99998789}'
    ```

    This returns a hex string.

4. Sign and Calculate Exact Size (The "Script" Logic)

    1. Since the signature adds data, the byte size changes after signing. Your script follows these steps:
    
        Sign the placeholder hex:
        ```bash
        ./raptoreum-cli signrawtransactionwithwallet "INITIAL_HEX"
        ```

    2. Get the exact size
    Take the signed hex and decode it to see the vsize (virtual size) or simply measure the hex length (bytes=length of hex/2).

        ```bash
        ./raptoreum-cli decoderawtransaction "SIGNED_HEX"
        ```

    Look for the "vsize" or "size" field.

    3. Recalculate Fee:
        ```bash
        Exact Fee=(vsize/1000)×feerate
        ```

## Create Transaction

1. Re-create the Transaction (Final Amounts)
    
    Now that you have the Exact Fee, recalculate your change:
    ```bash
    Final Change=Total Inputs−Spend Amount−Exact Fee
    ```

    Create the raw transaction one last time with the corrected change amount:
    ```bash
    ./raptoreum-cli createrawtransaction '[{"txid":"TXID1","vout":0}, ...]' '{"DEST_ADDR":1000, "CHANGE_ADDR":FINAL_CHANGE}'
    ```

2. Final Signing and Broadcasting

    1. Sign again:
    ```bash
    ./raptoreum-cli signrawtransactionwithwallet "FINAL_HEX"
    ```

    2. Broadcast:
    ```bash
    ./raptoreum-cli sendrawtransaction "FINAL_SIGNED_HEX"
    ```