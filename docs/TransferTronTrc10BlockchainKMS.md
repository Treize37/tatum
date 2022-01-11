# SwaggerClient::TransferTronTrc10BlockchainKMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **String** | Sender address of TRON account in Base58 format. | 
**signature_id** | **String** | Identifier of the private key associated in signing application. Private key, or signature Id must be present. | 
**index** | [**BigDecimal**](BigDecimal.md) | If signatureId is mnemonic-based, this is the index to the specific address from that mnemonic. | 
**to** | **String** | Recipient address of TRON account in Base58 format. | 
**token_id** | **String** | ID of the token to transfer. | 
**amount** | **String** | Amount to be sent in TRX. | 

