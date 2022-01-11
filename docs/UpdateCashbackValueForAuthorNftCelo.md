# Tatum::UpdateCashbackValueForAuthorNftCelo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Chain to work with. | 
**token_id** | **String** | ID of token to be updated. | 
**cashback_value** | **String** | New royalty cashback to be set for the author of token with tokenId. If set to 0, royalty is disabled for this token. | 
**contract_address** | **String** | Address of NFT token | 
**from_private_key** | **String** | Private key of sender address. Private key, or signature Id must be present. | 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to Celo transaction. If not present, last known nonce will be used. | [optional] 
**fee_currency** | **String** | Currency to pay for transaction gas | 

