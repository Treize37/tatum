# Tatum::BurnMultiTokenBatch

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Chain to work with. | 
**account** | **String** | Address of holder | 
**token_id** | **Array&lt;String&gt;** | ID of token to be destroyed. | 
**amounts** | **Array&lt;String&gt;** | ID of token to be destroyed. | 
**data** | **String** | Data in bytes | [optional] 
**contract_address** | **String** | Address of Multi Token token | 
**from_private_key** | **String** | Private key of sender address. Private key, or signature Id must be present. | 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to transaction. If not present, last known nonce will be used. | [optional] 
**fee** | [**DeployErc20Fee**](DeployErc20Fee.md) |  | [optional] 

