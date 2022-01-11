# SwaggerClient::MintMultipleNftKMSTron

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Chain to work with. | 
**to** | **Array&lt;String&gt;** | Blockchain address to send NFT token to. | 
**account** | **String** | Blockchain address to perform transaction from | 
**token_id** | **Array&lt;String&gt;** | ID of token to be created. | 
**url** | **Array&lt;String&gt;** | Metadata of the token. See https://eips.ethereum.org/EIPS/eip-721#specification for more details. | 
**contract_address** | **String** | Address of NFT token | 
**index** | [**BigDecimal**](BigDecimal.md) | If signatureId is mnemonic-based, this is the index to the specific address from that mnemonic. | [optional] 
**signature_id** | **String** | Identifier of the private key associated in signing application. Private key, or signature Id must be present. | 
**fee_limit** | [**BigDecimal**](BigDecimal.md) | Max limit for fee to be paid, in TRX. | 

