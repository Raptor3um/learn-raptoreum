# RPC API Reference

The Raptoreum Core RPC (Remote Procedure Call) interface allows you to interact with the daemon programmatically.

## Connection Details

By default, the RPC server listens on port `10225` (Mainnet).

| Network | Port |
| :--- | :--- |
| **Mainnet** | 10225 |
| **Testnet** | 10125 |
| **Regtest** | 10425 |

## How to use

You can interact with the RPC interface using the `raptoreum-cli` tool or by sending HTTP POST requests using `curl` or any other HTTP client.

### Authentication
Ensure your `raptoreum.conf` contains the necessary credentials:
```ini
rpcuser=your_username
rpcpassword=your_password
rpcallowip=127.0.0.1
```