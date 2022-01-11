# SwaggerClient::LtcTx

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hash** | **String** | Transaction hash. | [optional] 
**witness_hash** | **String** | Witness hash in case of a SegWit transaction. | [optional] 
**fee** | **String** | Fee paid for this transaction, in LTC. | [optional] 
**rate** | **String** |  | [optional] 
**ps** | [**BigDecimal**](BigDecimal.md) |  | [optional] 
**height** | [**BigDecimal**](BigDecimal.md) | Height of the block this transaction belongs to. | [optional] 
**block** | **String** | Hash of the block this transaction belongs to. | [optional] 
**ts** | [**BigDecimal**](BigDecimal.md) | Time of the transaction. | [optional] 
**index** | [**BigDecimal**](BigDecimal.md) | Index of the transaction in the block. | [optional] 
**version** | [**BigDecimal**](BigDecimal.md) | Index of the transaction. | [optional] 
**flag** | [**BigDecimal**](BigDecimal.md) |  | [optional] 
**inputs** | [**Array&lt;LtcTxInputs&gt;**](LtcTxInputs.md) | List of transactions, from which assets are being sent. | [optional] 
**outputs** | [**Array&lt;LtcTxOutputs&gt;**](LtcTxOutputs.md) | List of recipient addresses and amounts to send to each of them. | [optional] 
**locktime** | [**BigDecimal**](BigDecimal.md) | Block this transaction was included in. | [optional] 

