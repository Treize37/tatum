# SwaggerClient::CreateAuctionCeloKMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Blockchain to work with. | 
**fee_currency** | **String** | Currency to pay for transaction gas | 
**contract_address** | **String** | Address of the auction smart contract. | 
**nft_address** | **String** | Address of the NFT asset to sell smart contract. | 
**seller** | **String** | Address of the seller of the NFT asset. | 
**erc20_address** | **String** | Optional address of the ERC20 token, which will be used as a selling currency of the NFT. | [optional] 
**id** | **String** | ID of the auction. It&#x27;s up to the developer to generate unique ID | 
**amount** | **String** | Amount of the assets to be sent. For ERC-721 tokens, enter 1. | [optional] 
**token_id** | **String** | ID of token, if transaction is for ERC-721 or ERC-1155. | 
**ended_at** | [**BigDecimal**](BigDecimal.md) | Last block, where auction accepts bids. | 
**is_erc721** | **BOOLEAN** | True if asset is NFT of type ERC721, false if ERC1155. | 
**signature_id** | **String** | Identifier of the private key associated in signing application. Private key, or signature Id must be present. | 
**index** | [**BigDecimal**](BigDecimal.md) | If signatureId is mnemonic-based, this is the index to the specific address from that mnemonic. | [optional] 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to Ethereum transaction. If not present, last known nonce will be used. | [optional] 
**fee** | [**DeployErc20Fee**](DeployErc20Fee.md) |  | [optional] 

