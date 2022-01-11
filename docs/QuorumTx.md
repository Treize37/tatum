# SwaggerClient::QuorumTx

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**block_hash** | **String** | Hash of the block where this transaction was in. | [optional] 
**block_number** | [**BigDecimal**](BigDecimal.md) | Block number where this transaction was in. | [optional] 
**from** | **String** | Address of the sender. | [optional] 
**gas** | [**BigDecimal**](BigDecimal.md) | Gas provided by the sender. | [optional] 
**gas_price** | **String** | Gas price provided by the sender in wei. | [optional] 
**hash** | **String** | Hash of the transaction. | [optional] 
**input** | **String** | The data sent along with the transaction. | [optional] 
**nonce** | [**BigDecimal**](BigDecimal.md) | The number of transactions made by the sender prior to this one. | [optional] 
**to** | **String** | Address of the receiver. &#x27;null&#x27; when its a contract creation transaction. | [optional] 
**transaction_index** | [**BigDecimal**](BigDecimal.md) | Integer of the transactions index position in the block. | [optional] 
**value** | **String** | Value transferred in wei. | [optional] 

