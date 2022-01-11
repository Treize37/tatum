# Tatum::TransferErc721Celo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**to** | **String** | Blockchain address to send ERC721 token to | 
**token_id** | **String** | ID of token. | 
**contract_address** | **String** | Address of ERC721 token | 
**from_private_key** | **String** | Private key of sender address. Private key, or signature Id must be present. | 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to Celo transaction. If not present, last known nonce will be used. | [optional] 
**fee_currency** | **String** | Currency to pay for transaction gas | [optional] 

