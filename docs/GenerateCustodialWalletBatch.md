# SwaggerClient::GenerateCustodialWalletBatch

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Blockchain to work with. | 
**from_private_key** | **String** | Private key of account, from which the transaction will be initiated. | 
**batch_count** | [**BigDecimal**](BigDecimal.md) | Number of addresses to generate. | 
**owner** | **String** | Owner of the addresses. | 
**fee** | [**DeployErc20Fee**](DeployErc20Fee.md) |  | [optional] 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to the transaction. If not present, last known nonce will be used. | [optional] 

