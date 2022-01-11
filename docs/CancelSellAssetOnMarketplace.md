# SwaggerClient::CancelSellAssetOnMarketplace

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Blockchain to work with. | 
**contract_address** | **String** | Address of the marketplace smart contract. | 
**erc20_address** | **String** | Optional address of the ERC20 token, which will be used as a selling currency of the NFT. | [optional] 
**listing_id** | **String** | ID of the listing. It&#x27;s up to the developer to generate unique ID | 
**from_private_key** | **String** | Private key of sender address. Private key, or signature Id must be present. | 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to Ethereum transaction. If not present, last known nonce will be used. | [optional] 
**fee** | [**DeployErc20Fee**](DeployErc20Fee.md) |  | [optional] 

