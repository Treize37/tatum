# SwaggerClient::ApproveNftSpendingCeloKMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Blockchain to work with. | 
**fee_currency** | **String** | Currency to pay for transaction gas | 
**contract_address** | **String** | Address of the ERC20 token, which is used for buying NFT asset from the marketplace. | 
**spender** | **String** | Address of the auction smart contract - new spender. | 
**is_erc721** | **BOOLEAN** | True if asset is NFT of type ERC721, false if ERC1155. | 
**token_id** | **String** | ID of token, if transaction is for ERC-721 or ERC-1155. | 
**signature_id** | **String** | Identifier of the private key associated in signing application. Private key, or signature Id must be present. | 
**index** | [**BigDecimal**](BigDecimal.md) | If signatureId is mnemonic-based, this is the index to the specific address from that mnemonic. | [optional] 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to Ethereum transaction. If not present, last known nonce will be used. | [optional] 
**fee** | [**DeployErc20Fee**](DeployErc20Fee.md) |  | [optional] 

