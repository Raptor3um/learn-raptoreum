## protx
Set of commands to execute ProTx related actions.
To get help on individual commands, use "help protx command".
Available commands:
  register          - Create and send ProTx to network
  register_fund     - Fund, create and send ProTx to network
  register_prepare  - Create an unsigned ProTx
  register_submit   - Sign and submit a ProTx
  quick_setup       - register_prepare, signmessage and register_submit in one command
  list              - List ProTxs
  info              - Return information about a ProTx
  update_service    - Create and send ProUpServTx to network
  update_registrar  - Create and send ProUpRegTx to network
  revoke            - Create and send ProUpRevTx to network
  diff              - Calculate a diff and a proof between two smartnode lists

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | command | string | True |  | The command to execute |

