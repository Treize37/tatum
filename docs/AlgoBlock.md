# Tatum::AlgoBlock

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**genesis_hash** | **String** | hash to which this block belongs | [optional] 
**genesis_id** | **String** | ID to which this block belongs | [optional] 
**previous_block_hash** | **String** | Previous block hash | [optional] 
**rewards** | **Object** | rewards | [optional] 
**round** | [**BigDecimal**](BigDecimal.md) | Current round on which this block was appended to the chain | [optional] 
**seed** | **String** | Sortition seed. | [optional] 
**timestamp** | [**BigDecimal**](BigDecimal.md) | Block creation timestamp in seconds since eposh | [optional] 
**txns** | [**Array&lt;AlgoTx&gt;**](AlgoTx.md) | Array of transactions | [optional] 
**txn** | **String** | TransactionsRoot authenticates the set of transactions appearing in the block. | [optional] 
**txnc** | [**BigDecimal**](BigDecimal.md) | TxnCounter counts the number of transations committed in the ledger | [optional] 
**upgrade_state** | **Object** | upgrade state | [optional] 
**upgrade_vote** | **Object** | upgrade vote | [optional] 

