# SwaggerClient::GenerateMarketplaceTronKMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Blockchain to work with. | [optional] 
**fee_recipient** | **String** | Address of the recipient of the fee for the trade. | 
**marketplace_fee** | [**BigDecimal**](BigDecimal.md) | Percentage of the selling amount of the NFT asset. 100 - 1% | 
**from** | **String** | Address of the recipient of the fee for the trade. | 
**signature_id** | **String** | Identifier of the private key associated in signing application. Private key, or signature Id must be present. | 
**index** | [**BigDecimal**](BigDecimal.md) | If signatureId is mnemonic-based, this is the index to the specific address from that mnemonic. | [optional] 
**fee_limit** | [**BigDecimal**](BigDecimal.md) | Fee in TRX to be paid. | 

