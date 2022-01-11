# Tatum::BurnMultiTokenBatchCelo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Chain to work with. | 
**account** | **String** | Address of holder | 
**token_id** | **Array&lt;String&gt;** | ID of token to be destroyed. | 
**amounts** | **Array&lt;String&gt;** | amounts of token to be destroyed. | 
**contract_address** | **String** | Address of Multi Token token | 
**from_private_key** | **String** | Private key of sender address. Private key, or signature Id must be present. | 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to Celo transaction. If not present, last known nonce will be used. | [optional] 
**fee_currency** | **String** | Currency to pay for transaction gas | 

