# Tatum::FreezeTronKMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **String** | Sender address of TRON account in Base58 format. | 
**signature_id** | **String** | Identifier of the private key associated in signing application. Private key, or signature Id must be present. | 
**index** | [**BigDecimal**](BigDecimal.md) | If signatureId is mnemonic-based, this is the index to the specific address from that mnemonic. | 
**receiver** | **String** | Recipient address of frozen BANDWIDTH or ENERGY. | 
**duration** | [**BigDecimal**](BigDecimal.md) | Duration of frozen funds, in days. | 
**resource** | **String** | Resource to obtain, BANDWIDTH or ENERGY. | 
**amount** | **String** | Amount to be frozen in TRX. | 

