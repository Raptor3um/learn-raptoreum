# Address Index RPC Commands

The Address Index allows you to query balances, deltas, and unspent outputs for specific addresses. 

!!! warning "Requirement"
    These commands require the node to be started with the `-addressindex=1` flag. If you are enabling it on an existing installation, a `-reindex` might be necessary.

---

--8<-- "docs/dev/rpc/includes/getaddressbalance.md"

---

--8<-- "docs/dev/rpc/includes/getadressdeltas.md"

---

--8<-- "docs/dev/rpc/includes/getaddressmempool.md"