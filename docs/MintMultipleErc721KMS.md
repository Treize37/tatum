# Tatum::MintMultipleErc721KMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**to** | **Array&lt;String&gt;** | Blockchain address to send ERC721 token to. | 
**token_id** | **Array&lt;String&gt;** | ID of token to be created. | 
**url** | **Array&lt;String&gt;** | Metadata of the token. See https://eips.ethereum.org/EIPS/eip-721#specification for more details. | 
**contract_address** | **String** | Address of ERC721 token | 
**signature_id** | **String** | Identifier of the private key associated in signing application. Private key, or signature Id must be present. | 
**index** | [**BigDecimal**](BigDecimal.md) | If signatureId is mnemonic-based, this is the index to the specific address from that mnemonic. | [optional] 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to Ethereum transaction. If not present, last known nonce will be used. | [optional] 
**fee** | [**DeployErc20Fee**](DeployErc20Fee.md) |  | [optional] 

