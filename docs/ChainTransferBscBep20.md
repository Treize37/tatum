# Tatum::ChainTransferBscBep20

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Chain to work with. | 
**to** | **String** | Blockchain address to send BEP20 token to | 
**amount** | **String** | Amount to be sent. | 
**contract_address** | **String** | Address of BEP20 token | 
**digits** | [**BigDecimal**](BigDecimal.md) | Number of decimal points that BEP20 token has. | 
**from_private_key** | **String** | Private key of sender address. Private key, or signature Id must be present. | 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to BSC transaction. If not present, last known nonce will be used. | [optional] 
**fee** | [**DeployErc20Fee**](DeployErc20Fee.md) |  | [optional] 

