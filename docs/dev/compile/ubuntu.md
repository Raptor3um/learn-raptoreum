# Compile RaptoreumCore on Ubuntu

This guide walks you through compiling RaptoreumCore from source on Ubuntu 22.04 or 24.04.

---

## Prerequisites

- You have forked and cloned the repository as described in [Forking and Cloning RaptoreumCore](../fork/index_fork.md)
- A working internet connection
- At least **4 GB of RAM** and **10 GB of free disk space** recommended

---

## Step 1: Install Dependencies

First, make sure your system is up to date:

```bash
sudo apt update && sudo apt upgrade -y
```

Then install all required build dependencies:

```bash
sudo apt install -y \
  build-essential \
  git \
  autoconf \
  automake \
  libtool \
  pkg-config \
  libssl-dev \
  libevent-dev \
  libboost-all-dev \
  libdb++-dev \
  libminiupnpc-dev \
  libnatpmp-dev \
  libzmq3-dev \
  libgmp-dev \
  libcurl4-openssl-dev \
  libarchive-dev \
  bsdmainutils \
  python3
```

---

## Step 2: Navigate to Your Repository

```bash
cd ~/Raptoreum/raptoreum
```

---

## Step 3: Generate the Build System

```bash
./autogen.sh
```

This generates the `configure` script and all required build files from the `Makefile.am` templates.

---

## Step 4: Configure the Build

Run `configure` with the following flags to build only the daemon and CLI, without the Qt GUI, tests or benchmarks:

```bash
./configure \
  --without-gui \
  --disable-tests \
  --disable-bench \
  --with-incompatible-bdb
```

### What these flags do

| Flag | Description |
|---|---|
| `--without-gui` | Skips the Qt desktop wallet, builds daemon and CLI only |
| `--disable-tests` | Skips building the test suite |
| `--disable-bench` | Skips building benchmarks |
| `--with-incompatible-bdb` | Required on Ubuntu 22.04+ which ships with Berkeley DB 5.3 instead of 4.8 |

At the end of the configure output you should see:

```
Options used to compile and link:
  with wallet         = yes
  with gui / qt       = no
  with test           = no
```

!!! warning
    If `with wallet = no` appears, make sure `libdb++-dev` is installed and `--with-incompatible-bdb` is passed to configure.

---

## Step 5: Compile

```bash
make src/raptoreumd src/raptoreum-cli -j$(nproc)
```

The `-j$(nproc)` flag uses all available CPU cores to speed up compilation. Depending on your hardware this may take between 5 and 30 minutes.

---

## Step 6: Verify the Build

```bash
ls -la src/raptoreumd src/raptoreum-cli
```

Check the version:

```bash
./src/raptoreumd --version
./src/raptoreum-cli --version
```

---

## Step 7: Run the Daemon

### Default data directory

```bash
./src/raptoreumd
```

Data will be stored in `~/.raptoreum/`

### Custom data directory

Useful for testing without affecting your existing wallet:

```bash
mkdir -p ~/raptoreum-test
./src/raptoreumd -datadir=~/raptoreum-test
```

### Watch the log

```bash
tail -f ~/.raptoreum/debug.log
```

### Stop the daemon

```bash
./src/raptoreum-cli stop
```

---

## Full Clean Build

If you want to start completely fresh, for example after pulling in new changes:

```bash
make clean && \
./autogen.sh && \
./configure --without-gui --disable-tests --disable-bench --with-incompatible-bdb && \
make src/raptoreumd src/raptoreum-cli -j$(nproc)
```

---

## Troubleshooting

### `-Woverloded-virtual` error

```
g++: error: unrecognized command-line option '-Woverloded-virtual'
```

This is a known typo in `configure.ac`. Fix it with:

```bash
sed -i 's/Woverloded-virtual/Woverloaded-virtual/g' configure.ac
./autogen.sh
```

### Missing `uint32_t` in `bip32.h`

```bash
sed -i '/#include <vector>/a #include <cstdint>' src/util/bip32.h
```

### Missing `runtime_error` in `lockedpool.cpp`

```bash
sed -i '/#include <support\/lockedpool.h>/a #include <stdexcept>' src/support/lockedpool.cpp
```

### `with wallet = no` even when requested

```bash
sudo apt install libdb++-dev
./configure --without-gui --disable-tests --disable-bench --with-incompatible-bdb
```

---

## Useful Commands

| Command | Description |
|---|---|
| `./src/raptoreumd -daemon` | Start daemon in the background |
| `./src/raptoreum-cli stop` | Stop the running daemon |
| `./src/raptoreum-cli getblockchaininfo` | Check sync status |
| `./src/raptoreum-cli getnetworkinfo` | Check network connections |
| `./src/raptoreum-cli getwalletinfo` | Check wallet status |
| `tail -f ~/.raptoreum/debug.log` | Watch the log live |

---

*Tested on Ubuntu 22.04 and Ubuntu 24.04 with GCC 13.*