# Tatum::MintMultipleErc721

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**to** | **Array&lt;String&gt;** | Blockchain address to send ERC721 token to. | 
**token_id** | **Array&lt;String&gt;** | ID of token to be created. | 
**url** | **Array&lt;String&gt;** | Metadata of the token. See https://eips.ethereum.org/EIPS/eip-721#specification for more details. | 
**contract_address** | **String** | Address of ERC721 token | 
**from_private_key** | **String** | Private key of sender address. Private key, or signature Id must be present. | 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to Ethereum transaction. If not present, last known nonce will be used. | [optional] 
**fee** | [**DeployErc20Fee**](DeployErc20Fee.md) |  | [optional] 

