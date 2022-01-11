# Tatum::EthTxInternal

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **String** | Address of the sender. | [optional] 
**to** | **String** | Address of the receiver. &#x27;null&#x27; when its a contract creation transaction. | [optional] 
**value** | **String** | Value transferred in wei. | [optional] 
**block_number** | [**BigDecimal**](BigDecimal.md) | Block number where this transaction was in. | [optional] 
**time_stamp** | **String** | Time of the transaction in seconds. | [optional] 
**hash** | **String** | Hash of the transaction. | [optional] 
**input** | **String** | The data sent along with the transaction. | [optional] 
**trace_id** | **String** | Trace ID. | [optional] 
**type** | **String** | Type of the transaction. | [optional] 
**err_code** | **String** | Error code. | [optional] 
**gas** | [**BigDecimal**](BigDecimal.md) | Gas provided by the sender. | [optional] 
**is_error** | **String** | 1 if the transaction was not successful, 0 otherwise. | [optional] 
**gas_used** | [**BigDecimal**](BigDecimal.md) | The amount of gas used by this specific transaction alone. | [optional] 
**contract_address** | **String** | The contract address created, if the transaction was a contract creation, otherwise null. | [optional] 

