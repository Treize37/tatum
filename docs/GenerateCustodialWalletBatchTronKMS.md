# Tatum::GenerateCustodialWalletBatchTronKMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Blockchain to work with. | 
**from** | **String** | Sender address. | 
**signature_id** | **String** | Identifier of the private key associated in signing application. Private key, or signature Id must be present. | 
**index** | [**BigDecimal**](BigDecimal.md) | If signatureId is mnemonic-based, this is the index to the specific address from that mnemonic. | [optional] 
**batch_count** | [**BigDecimal**](BigDecimal.md) | Number of addresses to generate. | 
**owner** | **String** | Owner of the addresses. | 
**fee_limit** | [**BigDecimal**](BigDecimal.md) | Fee limit to be set, in TRX | 

