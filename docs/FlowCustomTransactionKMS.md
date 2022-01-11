# Tatum::FlowCustomTransactionKMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account** | **String** | Blockchain account to send from | 
**transaction** | **String** | Transaction string to send to the chain. | 
**args** | [**Array&lt;FlowCustomTransactionPKArgs&gt;**](FlowCustomTransactionPKArgs.md) |  | 
**signature_id** | **String** | Identifier of the secret associated in signing application. Secret, or signature Id must be present. | 
**index** | [**BigDecimal**](BigDecimal.md) | If signatureId is mnemonic-based, this is the index to the specific address from that mnemonic. | [optional] 

