Raptoreum Core CLI (Command Line Interface) is the headless interface for interacting with the Raptoreum (RTM) blockchain. Unlike the GUI (Graphical User Interface) wallet, the CLI operates entirely within a terminal environment, providing advanced users, developers, and node operators with direct access to the Raptoreum Core daemon (raptoreumd).

Key Functions & Features:

- Node Management: Start, stop, and monitor the status of a full Raptoreum node.
- Wallet Operations: Create addresses, manage private keys, and execute complex transactions without a visual overhead.
- Smartnode Interaction: Essential for setting up and maintaining Smartnodes, including checking collateral status and performance metrics.
- Blockchain Querying: Access raw data from the block index, including transaction details, block headers, and network difficulty.
- RPC Interface: Acts as a bridge for scripts and third-party applications to communicate with the Raptoreum network via JSON-RPC commands.

Primary Tools:
- raptoreumd: The background service (daemon) that synchronizes the blockchain.
- raptoreum-cli: The command-line tool used to send instructions to the running daemon.