## gobject
Set of commands to manage governance objects.

Available commands:
  check              - Validate governance object data (proposal only)
  prepare            - Prepare governance object by signing and creating tx
  list-prepared      - Returns a list of governance objects prepared by this wallet with "gobject prepare"
  submit             - Submit governance object to network
  deserialize        - Deserialize governance object from hex string to JSON
  count              - Count governance objects and votes (additional param: 'json' or 'all', default: 'json')
  get                - Get governance object by hash
  getcurrentvotes    - Get only current (tallying) votes for a governance object hash (does not include old votes)
  list               - List governance objects (can be filtered by signal and/or object type)
  diff               - List differences since last diff
  vote-alias         - Vote on a governance object by smartnode proTxHash
  vote-conf          - Vote on a governance object by smartnode configured in raptoreum.conf
  vote-many          - Vote on a governance object by all smartnodes for which the voting key is in the wallet

### Arguments
None

### Examples
```bash
 raptoreum-cli gobject check
```
