# SwaggerClient::BurnNftKMSCelo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Chain to work with. | 
**token_id** | **String** | ID of token to be destroyed. | 
**contract_address** | **String** | Address of NFT token | 
**index** | [**BigDecimal**](BigDecimal.md) | If signatureId is mnemonic-based, this is the index to the specific address from that mnemonic. | [optional] 
**signature_id** | **String** | Identifier of the private key associated in signing application. Private key, or signature Id must be present. | 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to Celo transaction. If not present, last known nonce will be used. | [optional] 
**fee_currency** | **String** | Currency to pay for transaction gas | 

