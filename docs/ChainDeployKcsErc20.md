# Tatum::ChainDeployKcsErc20

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Chain to work with. | 
**symbol** | **String** | Symbol of the ERC20 token | 
**name** | **String** | Name of the ERC20 token | 
**total_cap** | **String** | Max supply of ERC20 token. | [optional] 
**supply** | **String** | Initial supply of ERC20 token. If totalCap is not defined, this will be the total cap. | 
**digits** | [**BigDecimal**](BigDecimal.md) | Number of decimal points | 
**address** | **String** | Address on Ethereum blockchain, where all created ERC20 tokens will be transferred. | 
**from_private_key** | **String** | Private key of Ethereum account address, from which the fee for the deployment of ERC20 will be paid. Private key, or signature Id must be present. | 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to Ethereum transaction. If not present, last known nonce will be used. | [optional] 
**fee** | [**DeployErc20Fee**](DeployErc20Fee.md) |  | [optional] 

