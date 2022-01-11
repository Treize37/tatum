# Tatum::TransferVetBlockchain

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**to** | **String** | Blockchain address to send assets | 
**amount** | **String** | Amount to be sent in VET | 
**from_private_key** | **String** | Private key of sender address. Private key, or signature Id must be present. | [optional] 
**signature_id** | **String** | Identifier of the private key associated in signing application. Private key, or signature Id must be present. | [optional] 
**data** | **String** | Additinal data, that can be passed to blockchain transaction as data property. | [optional] 
**fee** | [**TransferVetBlockchainFee**](TransferVetBlockchainFee.md) |  | [optional] 

