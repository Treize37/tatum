# Tatum::MintErc20Celo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **String** | Amount to be minted and transfered to the recipient. | 
**to** | **String** | Blockchain address to send ERC-20 tokens to. | 
**contract_address** | **String** | Address of ERC-20 token | 
**from_private_key** | **String** | Private key of sender address. Private key, or signature Id must be present. | 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to Celo transaction. If not present, last known nonce will be used. | [optional] 
**fee_currency** | **String** | Currency to pay for transaction gas | 

