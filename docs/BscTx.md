# Tatum::BscTx

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**block_hash** | **String** | Hash of the block where this transaction was in. | [optional] 
**status** | **BOOLEAN** | TRUE if the transaction was successful, FALSE, if the EVM reverted the transaction. | [optional] 
**block_number** | [**BigDecimal**](BigDecimal.md) | Block number where this transaction was in. | [optional] 
**from** | **String** | Address of the sender. | [optional] 
**gas** | [**BigDecimal**](BigDecimal.md) | Gas provided by the sender. | [optional] 
**gas_price** | **String** | Gas price provided by the sender in wei. | [optional] 
**transaction_hash** | **String** | Hash of the transaction. | [optional] 
**input** | **String** | The data sent along with the transaction. | [optional] 
**nonce** | [**BigDecimal**](BigDecimal.md) | The number of transactions made by the sender prior to this one. | [optional] 
**to** | **String** | Address of the receiver. &#x27;null&#x27; when its a contract creation transaction. | [optional] 
**transaction_index** | [**BigDecimal**](BigDecimal.md) | Integer of the transactions index position in the block. | [optional] 
**value** | **String** | Value transferred in wei. | [optional] 
**gas_used** | [**BigDecimal**](BigDecimal.md) | The amount of gas used by this specific transaction alone. | [optional] 
**cumulative_gas_used** | [**BigDecimal**](BigDecimal.md) | The total amount of gas used when this transaction was executed in the block. | [optional] 
**contract_address** | **String** | The contract address created, if the transaction was a contract creation, otherwise null. | [optional] 
**logs** | [**Array&lt;BscTxLogs&gt;**](BscTxLogs.md) | Log events, that happened in this transaction. | [optional] 

