# SwaggerClient::ChainDeployErc20KMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Chain to work with. | 
**symbol** | **String** | Symbol of the ERC20 token | 
**name** | **String** | Name of the ERC20 token | 
**total_cap** | **String** | Max supply of ERC20 token. | [optional] 
**supply** | **String** | Max supply of ERC20 token. | 
**digits** | [**BigDecimal**](BigDecimal.md) | Number of decimal points | 
**address** | **String** | Address on Ethereum blockchain, where all created ERC20 tokens will be transferred. | 
**signature_id** | **String** | Identifier of the private key associated in signing application. Private key, or signature Id must be present. | 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to Ethereum transaction. If not present, last known nonce will be used. | [optional] 
**fee** | [**DeployErc20Fee**](DeployErc20Fee.md) |  | [optional] 

