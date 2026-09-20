## quorum
Set of commands for quorums/LLMQs.
To get help on individual commands, use "help quorum command".

Available commands:
  list              - List of on-chain quorums
  info              - Return information about a quorum
  dkgsimerror       - Simulates DKG errors and malicious behavior
  dkgstatus         - Return the status of the current DKG process
  memberof          - Checks which quorums the given smartnode is a member of
  sign              - Threshold-sign a message
  verify            - Test if a quorum signature is valid for a request id and a message hash
  hasrecsig         - Test if a valid recovered signature is present
  getrecsig         - Get a recovered signature
  isconflicting     - Test if a conflict exists
  selectquorum      - Return the quorum that would/should sign a request
  getdata           - Request quorum data from other smartnodes in the quorum

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | command | string | True |  | command to execute |

