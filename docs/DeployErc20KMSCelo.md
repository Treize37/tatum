# SwaggerClient::DeployErc20KMSCelo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **String** | Symbol of the ERC20 token | 
**name** | **String** | Name of the ERC20 token | 
**total_cap** | **String** | Max supply of ERC20 token. | [optional] 
**supply** | **String** | Max supply of ERC20 token. | 
**digits** | [**BigDecimal**](BigDecimal.md) | Number of decimal points | 
**address** | **String** | Address on Celo blockchain, where all created ERC20 tokens will be transferred. | 
**index** | [**BigDecimal**](BigDecimal.md) | If signatureId is mnemonic-based, this is the index to the specific address from that mnemonic. | [optional] 
**signature_id** | **String** | Identifier of the private key associated in signing application. Private key, or signature Id must be present. | 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to Celo transaction. If not present, last known nonce will be used. | [optional] 
**fee_currency** | **String** | Currency to pay for transaction gas | 

