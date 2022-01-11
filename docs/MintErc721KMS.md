# Tatum::MintErc721KMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**token_id** | **String** | ID of token to be created. | 
**to** | **String** | Blockchain address to send ERC721 token to | 
**contract_address** | **String** | Address of ERC721 token | 
**url** | **String** | Metadata of the token. See https://eips.ethereum.org/EIPS/eip-721#specification for more details. | 
**signature_id** | **String** | Identifier of the private key associated in signing application. Private key, or signature Id must be present. | 
**index** | [**BigDecimal**](BigDecimal.md) | If signatureId is mnemonic-based, this is the index to the specific address from that mnemonic. | [optional] 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to Ethereum transaction. If not present, last known nonce will be used. | [optional] 
**fee** | [**DeployErc20Fee**](DeployErc20Fee.md) |  | [optional] 

