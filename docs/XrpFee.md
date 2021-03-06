# Tatum::XrpFee

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**current_ledger_size** | **String** | Number of transactions provisionally included in the in-progress ledger. | [optional] 
**current_queue_size** | **String** | Number of transactions currently queued for the next ledger. | [optional] 
**drops** | [**XrpFeeDrops**](XrpFeeDrops.md) |  | [optional] 
**expected_ledger_size** | **String** | The approximate number of transactions expected to be included in the current ledger. This is based on the number of transactions in the previous ledger. | [optional] 
**ledger_current_index** | [**BigDecimal**](BigDecimal.md) | The Ledger Index of the current open ledger these stats describe. | [optional] 
**levels** | [**XrpFeeLevels**](XrpFeeLevels.md) |  | [optional] 
**max_queue_size** | **String** | The maximum number of transactions that the transaction queue can currently hold. | [optional] 

