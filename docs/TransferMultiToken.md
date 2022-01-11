# SwaggerClient::TransferMultiToken

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Chain to work with. | 
**to** | **String** | Blockchain address to send Multi Token token to | 
**token_id** | **String** | ID of token. | 
**amount** | **String** | amount of token. | [optional] 
**data** | **String** | Data in bytes | [optional] 
**contract_address** | **String** | Address of Multi Token token | 
**from_private_key** | **String** | Private key of sender address. Private key, or signature Id must be present. | 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to transaction. If not present, last known nonce will be used. | [optional] 
**fee** | [**DeployErc20Fee**](DeployErc20Fee.md) |  | [optional] 

