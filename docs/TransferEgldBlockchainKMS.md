# SwaggerClient::TransferEgldBlockchainKMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **String** | Account address of the sender | 
**to** | **String** | Account address of the receiver or smart contract | [optional] 
**amount** | **String** | Value to be sent. | [optional] 
**fee** | [**TransferEgldBlockchainKMSFee**](TransferEgldBlockchainKMSFee.md) |  | [optional] 
**data** | **String** | Additinal data, that will be passed to blockchain transaction as data property. | [optional] 
**index** | [**BigDecimal**](BigDecimal.md) | If signatureId is mnemonic-based, this is the index to the specific address from that mnemonic. | [optional] 
**signature_id** | **String** | Identifier of the private key associated in signing application. Private key, or signature Id must be present. | 

