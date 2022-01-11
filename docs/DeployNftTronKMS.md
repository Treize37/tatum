# SwaggerClient::DeployNftTronKMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Chain to work with. | 
**account** | **String** | Blockchain address to perform transaction from | 
**name** | **String** | Name of the NFT token | 
**symbol** | **String** | Symbol of the NFT token | 
**index** | [**BigDecimal**](BigDecimal.md) | If signatureId is mnemonic-based, this is the index to the specific address from that mnemonic. | [optional] 
**signature_id** | **String** | Identifier of the private key associated in signing application. Private key, or signature Id must be present. | 
**fee_limit** | [**BigDecimal**](BigDecimal.md) | Max limit for fee to be paid, in TRX. For deploy, around 580 TRX is consumed. | 

