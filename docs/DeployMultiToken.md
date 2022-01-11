# Tatum::DeployMultiToken

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Chain to work with. | 
**uri** | **String** | URI of the Multi Token token | 
**from_private_key** | **String** | Private key of account address, from which gas for deployment of ERC1155 will be paid. Private key, or signature Id must be present. | 
**public_mint** | **BOOLEAN** | True if the contract is publicMint type | [optional] 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to transaction. If not present, last known nonce will be used. | [optional] 
**fee** | [**DeployErc20Fee**](DeployErc20Fee.md) |  | [optional] 

