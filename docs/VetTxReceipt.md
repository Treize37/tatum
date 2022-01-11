# SwaggerClient::VetTxReceipt

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**gas_used** | [**BigDecimal**](BigDecimal.md) |  | [optional] 
**gas_payer** | **String** |  | [optional] 
**paid** | **String** |  | [optional] 
**reward** | **String** |  | [optional] 
**reverted** | **BOOLEAN** |  | [optional] 
**meta** | [**VetTxReceiptMeta**](VetTxReceiptMeta.md) |  | [optional] 
**outputs** | [**Array&lt;VetTxReceiptOutputs&gt;**](VetTxReceiptOutputs.md) | List of recipient addresses and amounts to send to each of them. | [optional] 
**block_number** | [**BigDecimal**](BigDecimal.md) |  | [optional] 
**block_hash** | **String** |  | [optional] 
**transaction_hash** | **String** |  | [optional] 
**status** | **String** |  | [optional] 

