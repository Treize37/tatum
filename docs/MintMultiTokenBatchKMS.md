# SwaggerClient::MintMultiTokenBatchKMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Chain to work with. | 
**to** | **Array&lt;String&gt;** | Blockchain address to send Multi Token token to. | 
**token_id** | **Array&lt;Array&lt;String&gt;&gt;** | ID of token to be created. | 
**amounts** | **Array&lt;Array&lt;String&gt;&gt;** | ID of token to be created. | 
**data** | **String** | Data in bytes | [optional] 
**contract_address** | **String** | Address of Multi Token token | 
**index** | [**BigDecimal**](BigDecimal.md) | If signatureId is mnemonic-based, this is the index to the specific address from that mnemonic. | [optional] 
**signature_id** | **String** | Identifier of the private key associated in signing application. Private key, or signature Id must be present. | 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to transaction. If not present, last known nonce will be used. | [optional] 
**fee** | [**DeployErc20Fee**](DeployErc20Fee.md) |  | [optional] 

