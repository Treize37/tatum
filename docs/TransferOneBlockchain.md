# Tatum::TransferOneBlockchain

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | **String** | Additinal data, that can be passed to blockchain transaction as data property. | [optional] 
**currency** | **String** | Currency of the transfer. | 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to ONE transaction. If not present, last known nonce will be used. | [optional] 
**to** | **String** | Blockchain address to send assets | 
**fee** | [**DeployErc20Fee**](DeployErc20Fee.md) |  | [optional] 
**amount** | **String** | Amount to be sent in One. | 
**from_private_key** | **String** | Private key of sender address. Private key, or signature Id must be present. | 

