## help
List all commands, or get help for a specified command.

### Arguments
| Position | Name | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | command | string | False | all commands | The command to get help on |
| 2 | subcommand | string | False | all subcommands | The subcommand to get help on. Please note that not all subcommands support this at the moment |

### Result
```json
== Addressindex ==
getaddressbalance ( ["address",...] "asset" )
getaddressdeltas ( ["address",...] "asset" )
getaddressmempool ( ["address",...] )
getaddresstxids ( ["address",...] )
getaddressutxos ( ["address",...] "asset" )

== Assets ==
createasset asset_metadata
getassetdetailsbyid 'asset_id'
getassetdetailsbyname 'asset_name'
listaddressesbyasset "asset_name" (onlytotal) (count) (start)
listassetbalancesbyaddress "address" (onlytotal) (count) (start)
listassets ( verbose "count" start )
listassetsbalance
listunspentassets ( minconf maxconf  ["addresses",...] [include_unsafe] [query_options])
mintasset txid
sendasset "asset_id" "qty" "to_address" "change_address" "asset_change_address"
updateasset asset_metadata

== Blockchain ==
getbestblockhash
getbestchainlock
getblock "blockhash" ( verbosity )
getblockchaininfo
getblockcount
getblockhash height
getblockhashes high low
getblockheader "blockhash" ( verbose )
getblockheaders "hash" ( count verbose )
getblockstats hash_or_height ( stats )
getchaintips ( count branchlen )
getchaintxstats ( nblocks "blockhash" )
getdifficulty
getmempoolancestors "txid" ( verbose )
getmempooldescendants "txid" ( verbose )
getmempoolentry "txid"
getmempoolinfo
getmerkleblocks "filter" "hash" ( count )
getrawmempool ( verbose )
getspecialtxes "blockhash" ( type count skip verbosity )
getspentinfo ( {"txid":"hex","index":n} )
gettxout "txid" n ( include_mempool )
gettxoutproof ["txid",...] ( "blockhash" )
gettxoutsetinfo ( "hash_type" )
preciousblock "blockhash"
pruneblockchain height
savemempool
scantxoutset "action" ( [scanobjects,...] )
verifychain ( checklevel nblocks )
verifytxoutproof "proof"

== Control ==
getmemoryinfo ( "mode" )
getrpcinfo
help ( "command" "subcommand" )
logging ( ["include_category",...] ["exclude_category",...] )
stop
uptime

== Evo ==
bls "command"
protx "command"
quorum "command"
verifychainlock "blockHash" "signature" ( blockHeight )
verifyislock "id" "txid" "signature" ( maxHeight )

== Generating ==
generatetoaddress nblocks "address" ( maxtries )
generatetodescriptor num_blocks "descriptor" ( maxtries )
setgenerate generate ( genproclimit )

== Mining ==
getblocktemplate ( "template_request" )
getmininginfo
getnetworkhashps ( nblocks height )
prioritisetransaction "txid" fee_delta
submitblock "hexdata" ( "dummy" )
submitheader "hexdata"

== Network ==
addnode "node" "command"
clearbanned
disconnectnode ( "address" nodeid )
getaddednodeinfo ( "node" )
getconnectioncount
getnettotals
getnetworkinfo
getnodeaddresses ( count )
getpeerinfo
listbanned
ping
setban "subnet" "command" ( bantime absolute )
setnetworkactive state

== Raptoreum ==
coinjoin "command"
getcoinjoininfo
getgovernanceinfo
getpoolinfo
getsuperblockbudget index
gobject
mnsync "mode"
smartnode "command"
spork "command"
voteraw "mn-collateral-tx-hash" mn-collateral-tx-index "governance-hash" "vote-signal" "vote-outcome" time "vote-sig"

== Rawtransactions ==
combinerawtransaction ["hexstring",...]
createrawtransaction [{"txid":"hex","vout":n,"sequence":n},...] [{"address":amount},{"future_maturity":n,"future_locktime":n,"future_amount":n},{"assetid":"hex","uniqueid":n,"amount":amount,"future_maturity":n,"future_locktime":n},{"data":"hex"},...] ( locktime )
decoderawtransaction "hexstring"
decodescript "hexstring"
fundrawtransaction "hexstring" ( options )
getrawtransaction "txid" ( verbose "blockhash" )
sendrawtransaction "hexstring" ( maxfeerate instantsend bypasslimits )
signrawtransactionwithkey "hexstring" ["privatekey",...] ( [{"txid":"hex","vout":n,"scriptPubKey":"hex","redeemScript":"hex","amount":amount},...] "sighashtype" )

== Util ==
createmultisig nrequired ["key",...]
deriveaddresses "descriptor" ( range )
estimatesmartfee conf_target ( "estimate_mode" )
getdescriptorinfo "descriptor"
signmessagewithprivkey "privkey" "message"
validateaddress "address"
verifymessage "address" "signature" "message"

== Wallet ==
abandontransaction "txid"
abortrescan
addmultisigaddress nrequired ["key",...] ( "label" )
backupwallet "destination"
createwallet "wallet_name" ( disable_private_keys blank "passphrase" )
dumphdinfo
dumpprivkey "address"
dumpwallet "filename"
encryptwallet "passphrase"
getaddressesbylabel "label"
getaddressinfo "address"
getbalance ( "dummy" minconf addlocked include_watchonly )
getnewaddress ( "label" )
getrawchangeaddress
getreceivedbyaddress "address" ( minconf addlocked )
getreceivedbylabel "label" ( minconf addlocked )
gettransaction "txid" ( include_watchonly )
getunconfirmedbalance
getwalletinfo
importaddress "address" ( "label" rescan p2sh )
importselectrumwallet "filename" ( index )
importmulti "requests" ( "options" )
importprivkey "privkey" ( "label" rescan )
importprunedfunds "rawtransaction" "txoutproof"
importpubkey "pubkey" ( "label" rescan )
importwallet "filename"
keypoolrefill ( newsize )
listaddressbalances ( minamount )
listaddressgroupings
listlabels ( "purpose" )
listlockunspent
listreceivedbyaddress ( minconf addlocked include_empty include_watchonly "address_filter" )
listreceivedbylabel ( minconf addlocked include_empty include_watchonly )
listsinceblock ( "blockhash" target_confirmations include_watchonly include_removed )
listtransactions ( "label" count skip include_watchonly )
listunspent ( minconf maxconf ["address",...] include_unsafe query_options )
listwalletdir
listwallets
loadwallet "filename"
lockunspent unlock ( [{"txid":"hex","vout":n},...] )
removeprunedfunds "txid"
rescanblockchain ( start_height stop_height )
sendmany "" {"address":amount} ( minconf addlocked "comment" ["address",...] use_is use_cj conf_target "estimate_mode" )
sendtoaddress "address" amount ( {"future_maturity":n,"future_locktime":n} "comment" "comment_to" subtractfeefromamount use_is use_cj conf_target "estimate_mode" )
setcoinjoinamount amount
setcoinjoinrounds rounds
setlabel "address" "label"
settxfee amount
signmessage "address" "message"
signrawtransactionwithwallet "hexstring" ( [{"txid":"hex","vout":n,"scriptPubKey":"hex","redeemScript":"hex","amount":amount},...] "sighashtype" )
unloadwallet ( "wallet_name" )
upgradetohd ( "mnemonic" "mnemonicpassphrase" "walletpassphrase" )
walletlock
walletpassphrase "passphrase" timeout ( mixingonly )
walletpassphrasechange "oldpassphrase" "newpassphrase"

== Zmq ==
getzmqnotifications
```

### Examples
```bash
 raptoreum-cli help getaddressbalance
```

