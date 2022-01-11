# SwaggerClient::UpdateFee

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Blockchain to work with. | 
**contract_address** | **String** | Address of the marketplace smart contract. | 
**marketplace_fee** | [**BigDecimal**](BigDecimal.md) | Percentage of the selling amount of the NFT asset. 100 - 1% | 
**from_private_key** | **String** | Private key of sender address. Private key, or signature Id must be present. | 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to Ethereum transaction. If not present, last known nonce will be used. | [optional] 
**fee** | [**DeployErc20Fee**](DeployErc20Fee.md) |  | [optional] 

