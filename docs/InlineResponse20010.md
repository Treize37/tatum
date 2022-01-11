# SwaggerClient::InlineResponse20010

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **String** | Amount of NFTs to sold in this auction. Valid only for ERC1155 listings. | [optional] 
**bidder** | **String** | Address of the highest buyer, if exists. | [optional] 
**erc20_address** | **String** | Address of the ERC20 token smart contract, which should be used for paying for the asset.. | [optional] 
**is_erc721** | **BOOLEAN** | If the listing is for ERC721 or ERC1155 token. | [optional] 
**started_at** | **String** | Block height this auction started at. | [optional] 
**ended_at** | **String** | Block height this auction ended at. | [optional] 
**nft_address** | **String** | Address of the NFT smart contract. | [optional] 
**ending_price** | **String** | Final auction price of the NFT asset in native currency or ERC20 token based on the presence of erc20Address field. | [optional] 
**seller** | **String** | Address of the seller. | [optional] 
**highest_bid** | **String** | Current highest bid of the NFT asset in native currency or ERC20 token based on the presence of erc20Address field. | [optional] 

