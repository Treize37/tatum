# Tatum::BuyAssetOnMarketplaceTronKMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Blockchain to work with. | 
**contract_address** | **String** | Address of the marketplace smart contract. | 
**from** | **String** | Address of the recipient of the fee for the trade. | 
**buyer** | **String** | In case of the ERC20 listing, it&#x27;s possible to buy on behalf of someone else. This value is the address of the buyer, which should approve spending of the ERC20 tokens for the Marketplace contract. This could be used for a buying from the custodial wallet address. | [optional] 
**listing_id** | **String** | ID of the listing. It&#x27;s up to the developer to generate unique ID | 
**signature_id** | **String** | Identifier of the private key associated in signing application. Private key, or signature Id must be present. | 
**index** | [**BigDecimal**](BigDecimal.md) | If signatureId is mnemonic-based, this is the index to the specific address from that mnemonic. | [optional] 
**erc20_address** | **String** | Optional address of the TRC20 token, which will be used as a selling currency of the NFT. | [optional] 
**amount** | **String** | Amount of the assets to be sent. For ERC-721 tokens, enter 1. | [optional] 
**from_private_key** | **String** | Private key of sender address. Private key, or signature Id must be present. | [optional] 
**fee_limit** | [**BigDecimal**](BigDecimal.md) | Fee in TRX to be paid. | 

