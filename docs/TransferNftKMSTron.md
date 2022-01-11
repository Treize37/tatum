# SwaggerClient::TransferNftKMSTron

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**value** | **String** | If token to be transferred is Royalty NFT token, this is a value to be paid as a cashback to the authors of the token. | [optional] 
**chain** | **String** | Chain to work with. | 
**account** | **String** | Blockchain address to perform transaction from | 
**to** | **String** | Blockchain address to send NFT token to | 
**token_id** | **String** | ID of token. | 
**contract_address** | **String** | Address of NFT token | 
**index** | [**BigDecimal**](BigDecimal.md) | If signatureId is mnemonic-based, this is the index to the specific address from that mnemonic. | [optional] 
**signature_id** | **String** | Identifier of the private key associated in signing application. Private key, or signature Id must be present. | 
**fee_limit** | [**BigDecimal**](BigDecimal.md) | Max limit for fee to be paid, in TRX. | 

