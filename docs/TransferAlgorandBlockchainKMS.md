# SwaggerClient::TransferAlgorandBlockchainKMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **String** | Blockchain sender address. | 
**to** | **String** | Blockchain address to send algo | 
**fee** | **String** | Transaction fee in MicroAlgos. | [optional] 
**amount** | **String** | Amount to be sent in MicroAlgos. | 
**note** | **String** | Helloworld | [optional] 
**index** | [**BigDecimal**](BigDecimal.md) | If signatureId is mnemonic-based, this is the index to the specific address from that mnemonic. | [optional] 
**signature_id** | **String** | Identifier of the private key associated in signing application. Private key, or signature Id must be present. | 

