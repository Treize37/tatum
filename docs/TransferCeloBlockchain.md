# Tatum::TransferCeloBlockchain

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | **String** | Additinal data, that can be passed to blockchain transaction as data property. Only for ETH transactions. | [optional] 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to Celo transaction. If not present, last known nonce will be used. | [optional] 
**to** | **String** | Blockchain address to send assets | 
**currency** | **String** | Currency of the transaction | 
**fee_currency** | **String** | Currency to pay for transaction gas | 
**amount** | **String** | Amount to be sent in Celoer. | 
**from_private_key** | **String** | Private key of sender address. Private key, or signature Id must be present. | 

