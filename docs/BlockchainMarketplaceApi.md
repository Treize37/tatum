# Tatum::BlockchainMarketplaceApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**approve_nft_auction_spending**](BlockchainMarketplaceApi.md#approve_nft_auction_spending) | **POST** /v3/blockchain/auction/approve | Approve NFT token spending for the Auction / Marketplace
[**bid_on_auction**](BlockchainMarketplaceApi.md#bid_on_auction) | **POST** /v3/blockchain/auction/bid | Bid for asset on the NFT Auction
[**buy_asset_on_marketplace**](BlockchainMarketplaceApi.md#buy_asset_on_marketplace) | **POST** /v3/blockchain/marketplace/listing/buy | Buy asset on the NFT Marketplace
[**cancel_auction**](BlockchainMarketplaceApi.md#cancel_auction) | **POST** /v3/blockchain/auction/cancel | Cancel auction of the asset on the NFT Auction
[**cancel_sell_marketplace_listing**](BlockchainMarketplaceApi.md#cancel_sell_marketplace_listing) | **POST** /v3/blockchain/marketplace/listing/cancel | Cancel selling of the asset on the NFT Marketplace
[**create_auction**](BlockchainMarketplaceApi.md#create_auction) | **POST** /v3/blockchain/auction/sell | Sell asset on the NFT Auction
[**generate_auction**](BlockchainMarketplaceApi.md#generate_auction) | **POST** /v3/blockchain/auction | Create NFT Auction
[**generate_marketplace**](BlockchainMarketplaceApi.md#generate_marketplace) | **POST** /v3/blockchain/marketplace/listing | Create NFT Marketplace
[**get_auction**](BlockchainMarketplaceApi.md#get_auction) | **GET** /v3/blockchain/auction/{chain}/{contractAddress}/{id} | Get auction details from the NFT Auction
[**get_auction_estimated_time**](BlockchainMarketplaceApi.md#get_auction_estimated_time) | **GET** /v3/blockchain/auction/time/{chain}/{date} | Estimate block height based on time
[**get_auction_fee**](BlockchainMarketplaceApi.md#get_auction_fee) | **GET** /v3/blockchain/auction/{chain}/{contractAddress}/fee | Get NFT Auction fee
[**get_auction_fee_recipient**](BlockchainMarketplaceApi.md#get_auction_fee_recipient) | **GET** /v3/blockchain/auction/{chain}/{contractAddress}/recipient | Get NFT Auction fee recipient
[**get_marketplace_fee**](BlockchainMarketplaceApi.md#get_marketplace_fee) | **GET** /v3/blockchain/marketplace/listing/{chain}/{contractAddress}/fee | Get NFT Marketplace fee
[**get_marketplace_fee_recipient**](BlockchainMarketplaceApi.md#get_marketplace_fee_recipient) | **GET** /v3/blockchain/marketplace/listing/{chain}/{contractAddress}/recipient | Get NFT Marketplace fee recipient
[**get_marketplace_listing**](BlockchainMarketplaceApi.md#get_marketplace_listing) | **GET** /v3/blockchain/marketplace/listing/{chain}/{contractAddress}/listing/{id} | Get listing from the NFT Marketplace
[**get_marketplace_listings**](BlockchainMarketplaceApi.md#get_marketplace_listings) | **GET** /v3/blockchain/marketplace/listing/{chain}/{contractAddress}/{type} | Get open/cancelled/sold listings from the NFT Marketplace
[**sell_asset_on_marketplace**](BlockchainMarketplaceApi.md#sell_asset_on_marketplace) | **POST** /v3/blockchain/marketplace/listing/sell | Sell asset on the NFT Marketplace
[**settle_auction**](BlockchainMarketplaceApi.md#settle_auction) | **POST** /v3/blockchain/auction/settle | Settle auction of the asset on the NFT Auction
[**update_auction_fee**](BlockchainMarketplaceApi.md#update_auction_fee) | **PUT** /v3/blockchain/auction/fee | Update NFT Auction fee
[**update_auction_fee_recipient**](BlockchainMarketplaceApi.md#update_auction_fee_recipient) | **PUT** /v3/blockchain/auction/recipient | Update NFT Auction fee recipient
[**update_fee**](BlockchainMarketplaceApi.md#update_fee) | **PUT** /v3/blockchain/marketplace/listing/fee | Update NFT Marketplace fee
[**update_fee_recipient**](BlockchainMarketplaceApi.md#update_fee_recipient) | **PUT** /v3/blockchain/marketplace/listing/recipient | Update NFT Marketplace fee recipient

# **approve_nft_auction_spending**
> InlineResponse2005 approve_nft_auction_spending(body)

Approve NFT token spending for the Auction / Marketplace

<h4>2 credits per API call.</h4><br/> <p>Approve NFT transfer for auction to perform listing of the asset.<br/> Supported blockchains: <ul> <li>Binance Smart Chain</li> <li>Harmony.ONE</li> <li>Ethereum</li> <li>Celo</li> <li>Polygon (Matic)</li> </ul> </p> 

### Example
```ruby
# load the gem
require 'tatum'
# setup authorization
Tatum.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = Tatum::BlockchainMarketplaceApi.new
body = Tatum::AuctionApproveBody.new # AuctionApproveBody | 


begin
  #Approve NFT token spending for the Auction / Marketplace
  result = api_instance.approve_nft_auction_spending(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainMarketplaceApi->approve_nft_auction_spending: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AuctionApproveBody**](AuctionApproveBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **bid_on_auction**
> InlineResponse2005 bid_on_auction(body)

Bid for asset on the NFT Auction

<h4>2 credits per API call.</h4><br/> <p>Bid on the auction. Buyer must either send native assets with this operation, or approve ERC20 token spending before using <a href=\"#operation/Erc20Approve\">Approve ERC20</a>   After auction is sold, it's in a pending state to be processed by the auction. Noone receives the assets unless the auction operator processes that.<br/> Supported blockchains: <ul> <li>Binance Smart Chain</li> <li>Harmony.ONE</li> <li>Ethereum</li> <li>Celo</li> <li>Polygon (Matic)</li> </ul> </p> 

### Example
```ruby
# load the gem
require 'tatum'
# setup authorization
Tatum.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = Tatum::BlockchainMarketplaceApi.new
body = Tatum::AuctionBidBody.new # AuctionBidBody | 


begin
  #Bid for asset on the NFT Auction
  result = api_instance.bid_on_auction(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainMarketplaceApi->bid_on_auction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AuctionBidBody**](AuctionBidBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **buy_asset_on_marketplace**
> InlineResponse2005 buy_asset_on_marketplace(body)

Buy asset on the NFT Marketplace

<h4>2 credits per API call.</h4><br/> <p>Buy listing on the marketplace. Buyer must either send native assets with this operation, or approve ERC20 token spending before using <a href=\"#operation/Erc20Approve\">Approve spending for marketplace.</a><br/> Supported blockchains: <ul> <li>Binance Smart Chain</li> <li>Harmony.ONE</li> <li>Ethereum</li> <li>Celo</li> <li>Polygon (Matic)</li> </ul> </p> 

### Example
```ruby
# load the gem
require 'tatum'
# setup authorization
Tatum.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = Tatum::BlockchainMarketplaceApi.new
body = Tatum::ListingBuyBody.new # ListingBuyBody | 


begin
  #Buy asset on the NFT Marketplace
  result = api_instance.buy_asset_on_marketplace(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainMarketplaceApi->buy_asset_on_marketplace: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ListingBuyBody**](ListingBuyBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cancel_auction**
> InlineResponse2005 cancel_auction(body)

Cancel auction of the asset on the NFT Auction

<h4>2 credits per API call.</h4><br/> <p>Cancel auction on the auction. Only possible for the seller or the operator. There must be no buyer present for that auction. NFT asset is sent back to the seller.<br/> Supported blockchains: <ul> <li>Binance Smart Chain</li> <li>Harmony.ONE</li> <li>Ethereum</li> <li>Celo</li> <li>Polygon (Matic)</li> </ul> </p> 

### Example
```ruby
# load the gem
require 'tatum'
# setup authorization
Tatum.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = Tatum::BlockchainMarketplaceApi.new
body = Tatum::AuctionCancelBody.new # AuctionCancelBody | 


begin
  #Cancel auction of the asset on the NFT Auction
  result = api_instance.cancel_auction(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainMarketplaceApi->cancel_auction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AuctionCancelBody**](AuctionCancelBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cancel_sell_marketplace_listing**
> InlineResponse2005 cancel_sell_marketplace_listing(body)

Cancel selling of the asset on the NFT Marketplace

<h4>2 credits per API call.</h4><br/> <p>Cancel listing on the marketplace. Only possible for the seller or the operator. There must be no buyer present for that listing. NFT asset is sent back to the seller.<br/> Supported blockchains: <ul> <li>Binance Smart Chain</li> <li>Harmony.ONE</li> <li>Ethereum</li> <li>Celo</li> <li>Polygon (Matic)</li> </ul> </p> 

### Example
```ruby
# load the gem
require 'tatum'
# setup authorization
Tatum.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = Tatum::BlockchainMarketplaceApi.new
body = Tatum::ListingCancelBody.new # ListingCancelBody | 


begin
  #Cancel selling of the asset on the NFT Marketplace
  result = api_instance.cancel_sell_marketplace_listing(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainMarketplaceApi->cancel_sell_marketplace_listing: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ListingCancelBody**](ListingCancelBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_auction**
> InlineResponse2005 create_auction(body)

Sell asset on the NFT Auction

<h4>2 credits per API call.</h4><br/> <p>Create new auction on the auction contract. Before operation, seller must approve spending of the NFT token for the Auction contract using <a href=\"#operation/ApproveNftAuctionSpending\">Approve NFT</a>. After auction is created, auction contract transfers the asset to the auction smart contract. Only auction for existing NFTs can be created - seller must be owner of the NFT asset.<br/> Supported blockchains: <ul> <li>Binance Smart Chain</li> <li>Harmony.ONE</li> <li>Ethereum</li> <li>Celo</li> <li>Polygon (Matic)</li> </ul> </p> 

### Example
```ruby
# load the gem
require 'tatum'
# setup authorization
Tatum.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = Tatum::BlockchainMarketplaceApi.new
body = Tatum::AuctionSellBody.new # AuctionSellBody | 


begin
  #Sell asset on the NFT Auction
  result = api_instance.create_auction(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainMarketplaceApi->create_auction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AuctionSellBody**](AuctionSellBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **generate_auction**
> InlineResponse2005 generate_auction(body)

Create NFT Auction

<h4>2 credits per API call.</h4><br/> <p>Deploy new smart contract for NFT auction logic. Smart contract enables auction operator to create new auction for NFT (ERC-721/1155). Operator can set a fee in percentage, which will be paid on top of the price of the asset. can be offered for native asset - ETH, BSC, etc. - or any ERC20 token - this is configurable during auction creation. Before auction is created, seller must approve transfer of the NFT to the auction contract. Buyer will bid for the asset from the auction using native asset - send assets along the gid() smart contract call, or via ERC20 token. Buyer of the auction must perform approval for the smart contract to access ERC20 token, before the actual bid() method is called. Once there is higher bid then the actual one, the previous bidder's funds will be returned to him and new bidder will be the current winning one. When auction ends, anyone can settle the auction - NFT will be sent to the bidder, assets to the seller and fee to the operator.<br/> This operation deploys a smart contract on the blockchain.<br/> Supported blockchains: <ul> <li>Binance Smart Chain</li> <li>Harmony.ONE</li> <li>Ethereum</li> <li>Celo</li> <li>Polygon (Matic)</li> </ul> </p> 

### Example
```ruby
# load the gem
require 'tatum'
# setup authorization
Tatum.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = Tatum::BlockchainMarketplaceApi.new
body = Tatum::BlockchainAuctionBody.new # BlockchainAuctionBody | 


begin
  #Create NFT Auction
  result = api_instance.generate_auction(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainMarketplaceApi->generate_auction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BlockchainAuctionBody**](BlockchainAuctionBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **generate_marketplace**
> InlineResponse2005 generate_marketplace(body)

Create NFT Marketplace

<h4>2 credits per API call.</h4><br/> <p>Deploy new smart contract for NFT marketplace logic. Smart contract enables marketplace operator to create new listing for NFT (ERC-721/1155). Operator can set a fee in percentage, which will be paid on top of the price of the asset. Listing can be offered for native asset - ETH, BSC, etc. - or any ERC20 token - this is configurable during listing creation. Once the listing is created, seller must send the NFT asset to the smart contract. Buyer will buy the asset from the listing using native asset - send assets along the buyAssetFromListing() smart contract call, or via ERC20 token. Buyer of the listing must perform approval for the smart contract to access ERC20 token, before the actual buyAssetFromListing() method is called. Once both assets - from buyer and seller - are in the smart contract, NFT is sent to the buyer, price is sent to the seller and marketplace fee is set to the operator.<br/> This operation deploys a smart contract on the blockchain.<br/> Supported blockchains: <ul> <li>Binance Smart Chain</li> <li>Harmony.ONE</li> <li>Ethereum</li> <li>Celo</li> <li>Polygon (Matic)</li> </ul> </p> 

### Example
```ruby
# load the gem
require 'tatum'
# setup authorization
Tatum.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = Tatum::BlockchainMarketplaceApi.new
body = Tatum::MarketplaceListingBody.new # MarketplaceListingBody | 


begin
  #Create NFT Marketplace
  result = api_instance.generate_marketplace(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainMarketplaceApi->generate_marketplace: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MarketplaceListingBody**](MarketplaceListingBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_auction**
> InlineResponse20010 get_auction(chain, contract_address, id)

Get auction details from the NFT Auction

<h4>1 credit per API call.</h4><br/><p>Get detail of the specific auction.</p>

### Example
```ruby
# load the gem
require 'tatum'
# setup authorization
Tatum.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = Tatum::BlockchainMarketplaceApi.new
chain = 'chain_example' # String | Blockchain to work with
contract_address = 'contract_address_example' # String | Contract address
id = 'id_example' # String | Auction ID


begin
  #Get auction details from the NFT Auction
  result = api_instance.get_auction(chain, contract_address, id)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainMarketplaceApi->get_auction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain** | **String**| Blockchain to work with | 
 **contract_address** | **String**| Contract address | 
 **id** | **String**| Auction ID | 

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_auction_estimated_time**
> BigDecimal get_auction_estimated_time(chain, date)

Estimate block height based on time

<h4>1 credits per API call.</h4><br/> <p>Get estimated block height at given time. This is estimation, not an exact block height.<br/> Supported blockchains: <ul> <li>Binance Smart Chain</li> <li>Harmony.ONE</li> <li>Ethereum</li> <li>Celo</li> <li>Polygon (Matic)</li> </ul> </p> 

### Example
```ruby
# load the gem
require 'tatum'
# setup authorization
Tatum.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = Tatum::BlockchainMarketplaceApi.new
chain = 'chain_example' # String | Blockchain to work with
date = 'date_example' # String | Date and time in ISO 8601 string


begin
  #Estimate block height based on time
  result = api_instance.get_auction_estimated_time(chain, date)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainMarketplaceApi->get_auction_estimated_time: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain** | **String**| Blockchain to work with | 
 **date** | **String**| Date and time in ISO 8601 string | 

### Return type

[**BigDecimal**](BigDecimal.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_auction_fee**
> BigDecimal get_auction_fee(chain, contract_address)

Get NFT Auction fee

<h4>1 credit per API call.</h4><br/><p>Get fee of the auction.</p>

### Example
```ruby
# load the gem
require 'tatum'
# setup authorization
Tatum.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = Tatum::BlockchainMarketplaceApi.new
chain = 'chain_example' # String | Blockchain to work with
contract_address = 'contract_address_example' # String | Contract address


begin
  #Get NFT Auction fee
  result = api_instance.get_auction_fee(chain, contract_address)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainMarketplaceApi->get_auction_fee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain** | **String**| Blockchain to work with | 
 **contract_address** | **String**| Contract address | 

### Return type

[**BigDecimal**](BigDecimal.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_auction_fee_recipient**
> InlineResponse20011 get_auction_fee_recipient(chain, contract_address)

Get NFT Auction fee recipient

<h4>1 credit per API call.</h4><br/><p>Get fee recipient of the auction.</p>

### Example
```ruby
# load the gem
require 'tatum'
# setup authorization
Tatum.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = Tatum::BlockchainMarketplaceApi.new
chain = 'chain_example' # String | Blockchain to work with
contract_address = 'contract_address_example' # String | Contract address


begin
  #Get NFT Auction fee recipient
  result = api_instance.get_auction_fee_recipient(chain, contract_address)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainMarketplaceApi->get_auction_fee_recipient: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain** | **String**| Blockchain to work with | 
 **contract_address** | **String**| Contract address | 

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_marketplace_fee**
> BigDecimal get_marketplace_fee(chain, contract_address)

Get NFT Marketplace fee

<h4>1 credit per API call.</h4><br/><p>Get fee of the marketplace.</p>

### Example
```ruby
# load the gem
require 'tatum'
# setup authorization
Tatum.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = Tatum::BlockchainMarketplaceApi.new
chain = 'chain_example' # String | Blockchain to work with
contract_address = 'contract_address_example' # String | Contract address


begin
  #Get NFT Marketplace fee
  result = api_instance.get_marketplace_fee(chain, contract_address)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainMarketplaceApi->get_marketplace_fee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain** | **String**| Blockchain to work with | 
 **contract_address** | **String**| Contract address | 

### Return type

[**BigDecimal**](BigDecimal.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_marketplace_fee_recipient**
> InlineResponse2009 get_marketplace_fee_recipient(chain, contract_address)

Get NFT Marketplace fee recipient

<h4>1 credit per API call.</h4><br/><p>Get fee recipient of the marketplace.</p>

### Example
```ruby
# load the gem
require 'tatum'
# setup authorization
Tatum.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = Tatum::BlockchainMarketplaceApi.new
chain = 'chain_example' # String | Blockchain to work with
contract_address = 'contract_address_example' # String | Contract address


begin
  #Get NFT Marketplace fee recipient
  result = api_instance.get_marketplace_fee_recipient(chain, contract_address)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainMarketplaceApi->get_marketplace_fee_recipient: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain** | **String**| Blockchain to work with | 
 **contract_address** | **String**| Contract address | 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_marketplace_listing**
> InlineResponse2008 get_marketplace_listing(chain, contract_address, id)

Get listing from the NFT Marketplace

<h4>1 credit per API call.</h4><br/><p>Get detail of the specific listing.</p>

### Example
```ruby
# load the gem
require 'tatum'
# setup authorization
Tatum.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = Tatum::BlockchainMarketplaceApi.new
chain = 'chain_example' # String | Blockchain to work with
contract_address = 'contract_address_example' # String | Contract address
id = 'id_example' # String | Listing ID


begin
  #Get listing from the NFT Marketplace
  result = api_instance.get_marketplace_listing(chain, contract_address, id)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainMarketplaceApi->get_marketplace_listing: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain** | **String**| Blockchain to work with | 
 **contract_address** | **String**| Contract address | 
 **id** | **String**| Listing ID | 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_marketplace_listings**
> Array&lt;String&gt; get_marketplace_listings(chain, contract_address, type)

Get open/cancelled/sold listings from the NFT Marketplace

<h4>1 credit per API call.</h4><br/><p>Get list of listings in this marketplace.</p>

### Example
```ruby
# load the gem
require 'tatum'
# setup authorization
Tatum.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = Tatum::BlockchainMarketplaceApi.new
chain = 'chain_example' # String | Blockchain to work with
contract_address = 'contract_address_example' # String | Contract address
type = 'type_example' # String | Listing ID


begin
  #Get open/cancelled/sold listings from the NFT Marketplace
  result = api_instance.get_marketplace_listings(chain, contract_address, type)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainMarketplaceApi->get_marketplace_listings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain** | **String**| Blockchain to work with | 
 **contract_address** | **String**| Contract address | 
 **type** | **String**| Listing ID | 

### Return type

**Array&lt;String&gt;**

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sell_asset_on_marketplace**
> InlineResponse2005 sell_asset_on_marketplace(body)

Sell asset on the NFT Marketplace

<h4>2 credits per API call.</h4><br/> <p>Create new listing on the marketplace. Only marketplace operator can establish those on behalf of the seller of the NFT. After listing is created, seller must approve the asset for spending to the marketplace smart contract. Only listing for existing NFTs can be created - seller must be owner of the NFT asset.<br/> Supported blockchains: <ul> <li>Binance Smart Chain</li> <li>Harmony.ONE</li> <li>Ethereum</li> <li>Celo</li> <li>Polygon (Matic)</li> </ul> </p> 

### Example
```ruby
# load the gem
require 'tatum'
# setup authorization
Tatum.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = Tatum::BlockchainMarketplaceApi.new
body = Tatum::ListingSellBody.new # ListingSellBody | 


begin
  #Sell asset on the NFT Marketplace
  result = api_instance.sell_asset_on_marketplace(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainMarketplaceApi->sell_asset_on_marketplace: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ListingSellBody**](ListingSellBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **settle_auction**
> InlineResponse2005 settle_auction(body)

Settle auction of the asset on the NFT Auction

<h4>2 credits per API call.</h4><br/> <p>Settle auction. There must be buyer present for that auction. NFT will be sent to the bidder, assets to the seller and fee to the operator.<br/> Supported blockchains: <ul> <li>Binance Smart Chain</li> <li>Harmony.ONE</li> <li>Ethereum</li> <li>Celo</li> <li>Polygon (Matic)</li> </ul> </p> 

### Example
```ruby
# load the gem
require 'tatum'
# setup authorization
Tatum.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = Tatum::BlockchainMarketplaceApi.new
body = Tatum::AuctionSettleBody.new # AuctionSettleBody | 


begin
  #Settle auction of the asset on the NFT Auction
  result = api_instance.settle_auction(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainMarketplaceApi->settle_auction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AuctionSettleBody**](AuctionSettleBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_auction_fee**
> InlineResponse2005 update_auction_fee(body)

Update NFT Auction fee

<h4>2 credits per API call.</h4><br/> <p>Update fee of the auction.<br/> Supported blockchains: <ul> <li>Binance Smart Chain</li> <li>Harmony.ONE</li> <li>Ethereum</li> <li>Celo</li> <li>Polygon (Matic)</li> </ul> </p> 

### Example
```ruby
# load the gem
require 'tatum'
# setup authorization
Tatum.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = Tatum::BlockchainMarketplaceApi.new
body = Tatum::AuctionFeeBody.new # AuctionFeeBody | 


begin
  #Update NFT Auction fee
  result = api_instance.update_auction_fee(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainMarketplaceApi->update_auction_fee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AuctionFeeBody**](AuctionFeeBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_auction_fee_recipient**
> InlineResponse2005 update_auction_fee_recipient(body)

Update NFT Auction fee recipient

<h4>2 credits per API call.</h4><br/> <p>Update fee recipient of the auction.<br/> Supported blockchains: <ul> <li>Binance Smart Chain</li> <li>Harmony.ONE</li> <li>Ethereum</li> <li>Celo</li> <li>Polygon (Matic)</li> </ul> </p> 

### Example
```ruby
# load the gem
require 'tatum'
# setup authorization
Tatum.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = Tatum::BlockchainMarketplaceApi.new
body = Tatum::AuctionRecipientBody.new # AuctionRecipientBody | 


begin
  #Update NFT Auction fee recipient
  result = api_instance.update_auction_fee_recipient(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainMarketplaceApi->update_auction_fee_recipient: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AuctionRecipientBody**](AuctionRecipientBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_fee**
> InlineResponse2005 update_fee(body)

Update NFT Marketplace fee

<h4>2 credits per API call.</h4><br/> <p>Update fee of the marketplace.<br/> Supported blockchains: <ul> <li>Binance Smart Chain</li> <li>Harmony.ONE</li> <li>Ethereum</li> <li>Celo</li> <li>Polygon (Matic)</li> </ul> </p> 

### Example
```ruby
# load the gem
require 'tatum'
# setup authorization
Tatum.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = Tatum::BlockchainMarketplaceApi.new
body = Tatum::ListingFeeBody.new # ListingFeeBody | 


begin
  #Update NFT Marketplace fee
  result = api_instance.update_fee(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainMarketplaceApi->update_fee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ListingFeeBody**](ListingFeeBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_fee_recipient**
> InlineResponse2005 update_fee_recipient(body)

Update NFT Marketplace fee recipient

<h4>2 credits per API call.</h4><br/> <p>Update fee recipient of the marketplace.<br/> Supported blockchains: <ul> <li>Binance Smart Chain</li> <li>Harmony.ONE</li> <li>Ethereum</li> <li>Celo</li> <li>Polygon (Matic)</li> </ul> </p> 

### Example
```ruby
# load the gem
require 'tatum'
# setup authorization
Tatum.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = Tatum::BlockchainMarketplaceApi.new
body = Tatum::ListingRecipientBody.new # ListingRecipientBody | 


begin
  #Update NFT Marketplace fee recipient
  result = api_instance.update_fee_recipient(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainMarketplaceApi->update_fee_recipient: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ListingRecipientBody**](ListingRecipientBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



