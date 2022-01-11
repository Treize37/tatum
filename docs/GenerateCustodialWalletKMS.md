# SwaggerClient::GenerateCustodialWalletKMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Blockchain to work with. | 
**signature_id** | **String** | Identifier of the private key associated in signing application. Private key, or signature Id must be present. | 
**index** | [**BigDecimal**](BigDecimal.md) | If signatureId is mnemonic-based, this is the index to the specific address from that mnemonic. | [optional] 
**enable_fungible_tokens** | **BOOLEAN** | If address should support ERC20 tokens, it should be marked as true. | 
**enable_non_fungible_tokens** | **BOOLEAN** | If address should support ERC721 tokens, it should be marked as true. | 
**enable_semi_fungible_tokens** | **BOOLEAN** | If address should support ERC1155 tokens, it should be marked as true. | 
**enable_batch_transactions** | **BOOLEAN** | If address should support batch transfers of the assets, it should be marked as true. | 
**fee** | [**DeployErc20Fee**](DeployErc20Fee.md) |  | [optional] 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to the transaction. If not present, last known nonce will be used. | [optional] 

