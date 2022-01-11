# Tatum::TransferTronBlockchainKMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **String** | Sender address of TRON account in Base58 format. | 
**signature_id** | **String** | Identifier of the private key associated in signing application. Private key, or signature Id must be present. | 
**to** | **String** | Recipient address of TRON account in Base58 format. | 
**amount** | **String** | Amount to be sent in TRX. | 
**index** | [**BigDecimal**](BigDecimal.md) | If signatureId is mnemonic-based, this is the index to the specific address from that mnemonic. | 

