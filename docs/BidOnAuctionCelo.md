# Tatum::BidOnAuctionCelo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Blockchain to work with. | 
**fee_currency** | **String** | Currency to pay for transaction gas | 
**contract_address** | **String** | Address of the marketplace smart contract. | 
**erc20_address** | **String** | Optional address of the ERC20 token, which will be used as a selling currency of the NFT. | [optional] 
**bidder** | **String** | In case of the ERC20 auction, it&#x27;s possible to bid on behalf of someone else. This value is the address of the bidder, which should approve spending of the ERC20 tokens for the Auction contract. This could be used for a bidding from the custodial wallet address. | [optional] 
**id** | **String** | ID of the auction. | 
**bid_value** | **String** | Amount of the assets to be bid. This must include auction fee. | [optional] 
**from_private_key** | **String** | Private key of sender address. Private key, or signature Id must be present. | 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to Ethereum transaction. If not present, last known nonce will be used. | [optional] 
**fee** | [**DeployErc20Fee**](DeployErc20Fee.md) |  | [optional] 

