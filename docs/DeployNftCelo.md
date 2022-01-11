# SwaggerClient::DeployNftCelo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Chain to work with. | 
**name** | **String** | Name of the NFT token | 
**provenance** | **BOOLEAN** | True if the contract is provenance type - each transfer of the NFT can track the provenance history of the transaction. Based on this features, percentage royalties could be enabled. | [optional] 
**public_mint** | **BOOLEAN** | True if anyone will be able to mint NFTs, false by default for deployer as a default minter. | [optional] 
**symbol** | **String** | Symbol of the NFT token | 
**from_private_key** | **String** | Private key of Ethereum account address, from which gas for deployment of ERC721 will be paid. Private key, or signature Id must be present. | 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to Ethereum transaction. If not present, last known nonce will be used. | [optional] 
**fee_currency** | **String** | Currency to pay for transaction gas | 

