## Fast Sync: Using Bootstraps

When installing the Core Wallet for the first time, the software needs to download the entire blockchain history. This process can take a very long time if done block-by-block from peers. 
To speed this up, it is highly recommended to use a Bootstrap.

## What is a Bootstrap? 
It is a compressed snapshot of the blockchain data.

## Why use it? 
It reduces the synchronization time from days to just a few hours.

## How to apply:
### Windows
1. Go to https://bootstrap.raptoreum.com/
2. Download the bootstrap.tar.xz
3. Unpack all data into the directory: `C:\Users\<user>\AppData\Roaming\RaptoreumCore` (Note: Replace <user> with your Windows username).

### Linux
1. Go to https://bootstrap.raptoreum.com/
2. Copy the link of bootstrap.tar.xz
3. Create the Bootstrap Folder
    ```bash
    cd ~/rtm-latest
    mkdir -p bootstraps
    cd bootstraps
    wget https://bootstrap.raptoreum.com/bootstraps/bootstrap.tar.xz
    ```
4. Extract and Move Bootstrap data:
    Extract the files directly into the data directory to save time and space:
    ```bash
    tar -xvf bootstrap.tar.xz -C ~/.raptoreumcore
    ```
5. Final Cleanup:
    Check the content and ensure it is in the correct location:
    ```bash
    ls -la ~/.raptoreumcore
    ```