# SwaggerClient::UpdateFeeTronKMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Blockchain to work with. | 
**contract_address** | **String** | Address of the marketplace smart contract. | 
**from** | **String** | Address of the recipient of the fee for the trade. | 
**signature_id** | **String** | Identifier of the private key associated in signing application. Private key, or signature Id must be present. | 
**index** | [**BigDecimal**](BigDecimal.md) | If signatureId is mnemonic-based, this is the index to the specific address from that mnemonic. | [optional] 
**marketplace_fee** | [**BigDecimal**](BigDecimal.md) | Percentage of the selling amount of the NFT asset. 100 - 1% | 
**from_private_key** | **String** | Private key of sender address. Private key, or signature Id must be present. | [optional] 
**fee_limit** | [**BigDecimal**](BigDecimal.md) | Fee in TRX to be paid. | 

