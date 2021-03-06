# Tatum::XrpLedgerLedger

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accepted** | **BOOLEAN** |  | [optional] 
**account_hash** | **String** | Hash of all account state information in this ledger, as hex. | [optional] 
**close_flags** | **Integer** | A bit-map of flags relating to the closing of this ledger. Currently, the ledger has only one flag defined for close_flags: sLCF_NoConsensusTime (value 1). If this flag is enabled, it means that validators were in conflict regarding the correct close time for the ledger, but build otherwise the same ledger, so they declared consensus while \&quot;agreeing to disagree\&quot; on the close time. In this case, the consensus ledger contains a close_time that is 1 second after that of the previous ledger. (In this case, there is no official close time, but the actual real-world close time is probably 3-6 seconds later than the specified close_time.) | [optional] 
**close_time** | **Integer** | The time this ledger was closed, in seconds since the Ripple Epoch | [optional] 
**close_time_human** | **String** | The time this ledger was closed, in human-readable format. Always uses the UTC time zone. | [optional] 
**close_time_resolution** | **Integer** | Ledger close times are rounded to within this many seconds. | [optional] 
**closed** | **BOOLEAN** | Whether or not this ledger has been closed. | [optional] 
**hash** | **String** |  | [optional] 
**ledger_hash** | **String** | Unique identifying hash of the entire ledger. | [optional] 
**ledger_index** | **String** | The Ledger Index of this ledger, as a quoted integer. | [optional] 
**parent_close_time** | **Integer** | The time at which the previous ledger was closed. | [optional] 
**parent_hash** | **String** | Unique identifying hash of the ledger that came immediately before this one. | [optional] 
**seq_num** | **String** |  | [optional] 
**total_coins** | **String** |  | [optional] 
**total_coins** | **String** | Total number of XRP drops in the network, as a quoted integer. (This decreases as transaction costs destroy XRP.) | [optional] 
**transaction_hash** | **String** | Hash of the transaction information included in this ledger, as hex. | [optional] 
**transactions** | [**Array&lt;XrpTx&gt;**](XrpTx.md) |  | [optional] 

