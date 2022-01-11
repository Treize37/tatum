# Tatum::CreateTronTrc20BlockchainKMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **String** | Sender address of TRON account in Base58 format. | 
**signature_id** | **String** | Identifier of the private key associated in signing application. Private key, or signature Id must be present. | 
**index** | [**BigDecimal**](BigDecimal.md) | If signatureId is mnemonic-based, this is the index to the specific address from that mnemonic. | 
**recipient** | **String** | Recipient address of created TRC20 tokens. | 
**name** | **String** | Name of the token. | 
**symbol** | **String** | Symbol of the token. | 
**total_supply** | [**BigDecimal**](BigDecimal.md) | Total supply of the tokens. | 
**decimals** | [**BigDecimal**](BigDecimal.md) | Number of decimal places of the token. | 

