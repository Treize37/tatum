# SwaggerClient::SellAssetOnMarketplaceTronKMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Blockchain to work with. | 
**contract_address** | **String** | Address of the marketplace smart contract. | 
**from** | **String** | Address of the recipient of the fee for the trade. | 
**signature_id** | **String** | Identifier of the private key associated in signing application. Private key, or signature Id must be present. | 
**index** | [**BigDecimal**](BigDecimal.md) | If signatureId is mnemonic-based, this is the index to the specific address from that mnemonic. | [optional] 
**nft_address** | **String** | Address of the NFT asset to sell smart contract. | 
**seller** | **String** | Address of the seller of the NFT asset. | 
**erc20_address** | **String** | Optional address of the TRC20 token, which will be used as a selling currency of the NFT. | [optional] 
**listing_id** | **String** | ID of the listing. It&#x27;s up to the developer to generate unique ID | 
**amount** | **String** | Amount of the assets to be sent. For ERC-721 tokens, enter 1. | [optional] 
**token_id** | **String** | ID of token, if transaction is for ERC-721 or ERC-1155. | 
**price** | **String** | Price of the asset to sell. Marketplace fee will be obtained on top of this price. | 
**is_erc721** | **BOOLEAN** | True if asset is NFT of type ERC721, false if ERC1155. | 
**from_private_key** | **String** | Private key of sender address. Private key, or signature Id must be present. | [optional] 
**fee_limit** | [**BigDecimal**](BigDecimal.md) | Fee in TRX to be paid. | 

