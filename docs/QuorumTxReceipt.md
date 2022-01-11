# Tatum::QuorumTxReceipt

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**block_hash** | **String** | Hash of the block where this transaction was in. | [optional] 
**status** | **BOOLEAN** | TRUE if the transaction was successful, FALSE, if the EVM reverted the transaction. | [optional] 
**block_number** | [**BigDecimal**](BigDecimal.md) | Block number where this transaction was in. | [optional] 
**from** | **String** | Address of the sender. | [optional] 
**transaction_hash** | **String** | Hash of the transaction. | [optional] 
**to** | **String** | Address of the receiver. &#x27;null&#x27; when its a contract creation transaction. | [optional] 
**transaction_index** | [**BigDecimal**](BigDecimal.md) | Integer of the transactions index position in the block. | [optional] 
**value** | **String** | Value transferred in wei. | [optional] 
**gas_used** | [**BigDecimal**](BigDecimal.md) | The amount of gas used by this specific transaction alone. | [optional] 
**cumulative_gas_used** | [**BigDecimal**](BigDecimal.md) | The total amount of gas used when this transaction was executed in the block. | [optional] 
**contract_address** | **String** | The contract address created, if the transaction was a contract creation, otherwise null. | [optional] 
**logs_bloom** | **String** | The bloom filter for the logs of the transaction. &#x27;null&#x27; when its pending transaction. | [optional] 
**logs** | [**Array&lt;EthTxLogs&gt;**](EthTxLogs.md) | Log events, that happened in this transaction. | [optional] 

