# Tatum::TronTx

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**block_number** | [**BigDecimal**](BigDecimal.md) | Block, where which the transactio nwas included. | 
**ret** | [**TronTxRet**](TronTxRet.md) |  | 
**signature** | **Array&lt;String&gt;** | List of signatures of the transaction. | 
**tx_id** | **String** | Transaction ID. | 
**net_fee** | [**BigDecimal**](BigDecimal.md) | Fee paid for the transaction. | [optional] 
**net_usage** | [**BigDecimal**](BigDecimal.md) | Usage of the network. | [optional] 
**energy_fee** | [**BigDecimal**](BigDecimal.md) | Fee paid for the energy. | [optional] 
**energy_usage** | [**BigDecimal**](BigDecimal.md) | Usage of the energy. | [optional] 
**energy_usage_total** | [**BigDecimal**](BigDecimal.md) | Total energy used. | [optional] 
**internal_transactions** | [**Array&lt;TronTxInternalTransactions&gt;**](TronTxInternalTransactions.md) | List of internal smart contract transactions. | [optional] 
**raw_data** | [**TronTxRawData**](TronTxRawData.md) |  | 

