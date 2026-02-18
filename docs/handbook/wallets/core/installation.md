# RaptoreumCore QT Basics

Raptoreumcore is currently supported on Ubuntu 20/22, Windows 10/11, ARMx64, and macOS. While it may work on other versions or operating systems it is not recommended.

## Source
The latest version of Raptoreum Core is available for download on GitHub:

Download it from https://github.com/Raptor3um/raptoreum/releases/latest

## Installation

### Windows
Windows comes packaged as binary files or a .exe. For the binary files, it is just a matter of unpacking them in a directory of your choice and running raptoreum-qt.exe. The installer is similar to most other installers; you will have the option to choose where the wallet and blockchain data is stored, leaving as default is fine for most. 

### Ubuntu
Installing on Ubuntu is as simple as downloading the release, unpacking it, and running raptoreum-qt. 

### macOS
To install on macOS, you can use the DMG or you can download, unpack, and run raptoreum-qt directly. 

### Armx64 (egg. Raspberry)
To install on ARMx64, download the release, unpack, and run raptoreum-qt.


## First Startup
Note: We strongly recommend integrating the [bootstraps](bootstraps.md) after unpacking and before the first start.

When you first run Raptoreumcore it may appear unresponsive or frozen. This is normal, it has some locks in place during this time. Let it do its work, it will become responsive again when it is ready, it can take awhile. To fully download all Blockchain data it can take a few hours or more.


## Default Data / File Locations
By default all data including wallet.dat files are stored in the following locations:

### Windows
* Data: C:\Users\<user>\AppData\Roaming\RaptoreumCore
* Default wallet.dat: C:\Users\<user>\AppData\Roaming\RaptoreumCore\wallet.dat
* Other wallet.dat: C:\Users\<user>\AppData\Roaming\RaptoreumCore\wallet name (directory)
* Auto Backups: C:\Users\<user>\AppData\Roaming\RaptoreumCore\backups

### Linux/macOS/Armx64
* Data: $home/raptoreumcore
* Default wallet.dat: $home/raptoreumcore/wallet.dat
* Other wallet.dat: $home/raptoreumcore/wallet name (directory)
* Auto Backups: $home/raptoreumcore/backups

## Wallet Backup: Seed Phrase vs. wallet.dat

In the world of Raptoreum Core, there are two ways your private keys are managed. Understanding the difference is vital for your funds' safety.

1. The classic wallet.dat

    By default, the Core Wallet stores all keys in a file called wallet.dat.

    The Catch: If you create new addresses frequently, you must back up this file regularly, as it may contain new keys not present in older backups.

2. The Seed Phrase (HD Wallet)

    To use a Seed Phrase (12 or 24 words) like in mobile wallets, the wallet must be running in HD Mode (Hierarchical Deterministic).

    The Benefit: One single backup (the words) can recover all current and future addresses created by that wallet.

    Note: If you are already using an old "Legacy" wallet without a seed, you cannot simply "add" a seed to it. You would need to create a new HD wallet and move your coins there.