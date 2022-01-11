# SwaggerClient::BscTxLogs

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | **String** | From which this event originated from. | [optional] 
**topics** | **Array&lt;String&gt;** | An array with max 4 32 Byte topics, topic 1-3 contains indexed parameters of the log. | [optional] 
**data** | **String** | The data containing non-indexed log parameter. | [optional] 
**log_index** | [**BigDecimal**](BigDecimal.md) | Integer of the event index position in the block. | [optional] 
**block_number** | [**BigDecimal**](BigDecimal.md) | Block number where this transaction was in. | [optional] 
**block_hash** | **String** | Hash of the block. | [optional] 
**transaction_index** | [**BigDecimal**](BigDecimal.md) | Integer of the transaction’s index position, the event was created in. | [optional] 
**transaction_hash** | **String** | Hash of the transaction this event was created in. | [optional] 

