# SwaggerClient::DeployBep20

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **String** | Symbol of the ERC20 token | 
**name** | **String** | Name of the ERC20 token | 
**total_cap** | **String** | Max supply of ERC20 token. | [optional] 
**supply** | **String** | Max supply of ERC20 token. | 
**digits** | [**BigDecimal**](BigDecimal.md) | Number of decimal points | 
**address** | **String** | Address on Kcs blockchain, where all created ERC20 tokens will be transferred. | 
**from_private_key** | **String** | Private key of Kcs account address, from which the fee for the deployment of ERC20 will be paid. Private key, or signature Id must be present. | 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to Kcs transaction. If not present, last known nonce will be used. | [optional] 
**fee** | [**DeployErc20Fee**](DeployErc20Fee.md) |  | [optional] 

