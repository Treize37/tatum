# SwaggerClient::DeployNft

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Chain to work with. | 
**name** | **String** | Name of the NFT token | 
**symbol** | **String** | Symbol of the NFT token | 
**from_private_key** | **String** | Private key of Ethereum account address, from which gas for deployment of ERC721 will be paid. Private key, or signature Id must be present. | 
**provenance** | **BOOLEAN** | True if the contract is provenance type | [optional] 
**public_mint** | **BOOLEAN** | True if the contract is publicMint type | [optional] 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to Ethereum transaction. If not present, last known nonce will be used. | [optional] 
**fee** | [**DeployErc20Fee**](DeployErc20Fee.md) |  | [optional] 

