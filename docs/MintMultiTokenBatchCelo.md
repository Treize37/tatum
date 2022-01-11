# Tatum::MintMultiTokenBatchCelo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Chain to work with. | 
**token_id** | **Array&lt;Array&lt;String&gt;&gt;** | ID of token to be created. | 
**amounts** | **Array&lt;Array&lt;String&gt;&gt;** | ID of token to be created. | 
**data** | **String** | Data in bytes | [optional] 
**to** | **Array&lt;String&gt;** | Blockchain address to send Multi Token token to | 
**contract_address** | **String** | Address of Multi Token token | 
**from_private_key** | **String** | Private key of sender address. Private key, or signature Id must be present. | 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to Celo transaction. If not present, last known nonce will be used. | [optional] 
**fee_currency** | **String** | Currency to pay for transaction gas | 

