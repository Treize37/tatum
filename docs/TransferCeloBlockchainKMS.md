# Tatum::TransferCeloBlockchainKMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | **String** | Additinal data, that can be passed to blockchain transaction as data property. Only for ETH transactions. | [optional] 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to Celo transaction. If not present, last known nonce will be used. | [optional] 
**currency** | **String** | Currency of the transaction | 
**to** | **String** | Blockchain address to send assets | 
**fee_currency** | **String** | Currency to pay for transaction gas | 
**amount** | **String** | Amount to be sent in Celoer. | 
**index** | [**BigDecimal**](BigDecimal.md) | If signatureId is mnemonic-based, this is the index to the specific address from that mnemonic. | [optional] 
**signature_id** | **String** | Identifier of the private key associated in signing application. Private key, or signature Id must be present. | 

