# Tatum::InlineResponse2008

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **String** | Amount of NFTs to sold in this listing. Valid only for ERC1155 listings. | [optional] 
**buyer** | **String** | Address of the buyer, if exists. | [optional] 
**erc20_address** | **String** | Address of the ERC20 token smart contract, which should be used for paying for the asset.. | [optional] 
**is_erc721** | **BOOLEAN** | If the listing is for ERC721 or ERC1155 token. | [optional] 
**listing_id** | **String** | ID of the listing. | [optional] 
**nft_address** | **String** | Address of the NFT smart contract. | [optional] 
**price** | **String** | Price of the NFT asset in native currency or ERC20 token based on the presence of erc20Address field. | [optional] 
**seller** | **String** | Address of the seller. | [optional] 
**state** | **String** | State of the listing. 0 - available, 1-1sold, 2 - cancelled | [optional] 

