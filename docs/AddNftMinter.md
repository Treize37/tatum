# SwaggerClient::AddNftMinter

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Chain to work with. | 
**contract_address** | **String** | Address of NFT token | 
**minter** | **String** | Address of NFT minter | 
**from_private_key** | **String** | Private key of sender address. Private key, or signature Id must be present. | 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to Ethereum transaction. If not present, last known nonce will be used. | [optional] 
**fee** | [**DeployErc20Fee**](DeployErc20Fee.md) |  | [optional] 
**fee_currency** | **String** | Currency to pay for transaction gas, only valid for CELO chain. | [optional] 

