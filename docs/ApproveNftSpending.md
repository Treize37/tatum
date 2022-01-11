# SwaggerClient::ApproveNftSpending

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Blockchain to work with. | 
**spender** | **String** | Address of the auction smart contract - new spender. | 
**is_erc721** | **BOOLEAN** | True if asset is NFT of type ERC721, false if ERC1155. | 
**token_id** | **String** | ID of token, if transaction is for ERC-721 or ERC-1155. | 
**contract_address** | **String** | Address of the ERC20 token, which is used for buying NFT asset from the marketplace. | 
**from_private_key** | **String** | Private key of sender address. Private key, or signature Id must be present. | 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to Ethereum transaction. If not present, last known nonce will be used. | [optional] 
**fee** | [**DeployErc20Fee**](DeployErc20Fee.md) |  | [optional] 

