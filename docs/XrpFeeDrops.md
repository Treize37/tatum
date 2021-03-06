# Tatum::XrpFeeDrops

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**base_fee** | **String** | The transaction cost required for a reference transaction to be included in a ledger under minimum load, represented in drops of XRP. | [optional] 
**median_fee** | **String** | An approximation of the median transaction cost among transactions included in the previous validated ledger, represented in drops of XRP. | [optional] 
**minimum_fee** | **String** | The minimum transaction cost for a reference transaction to be queued for a later ledger, represented in drops of XRP. If greater than base_fee, the transaction queue is full. | [optional] 
**open_ledger_fee** | **String** | The minimum transaction cost that a reference transaction must pay to be included in the current open ledger, represented in drops of XRP. | [optional] 

