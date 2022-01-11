=begin
#Tatum API

## Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: 3.9.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.31
=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::BlockchainMarketplaceApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BlockchainMarketplaceApi' do
  before do
    # run before each test
    @instance = SwaggerClient::BlockchainMarketplaceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BlockchainMarketplaceApi' do
    it 'should create an instance of BlockchainMarketplaceApi' do
      expect(@instance).to be_instance_of(SwaggerClient::BlockchainMarketplaceApi)
    end
  end

  # unit tests for approve_nft_auction_spending
  # Approve NFT token spending for the Auction / Marketplace
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Approve NFT transfer for auction to perform listing of the asset.&lt;br/&gt; Supported blockchains: &lt;ul&gt; &lt;li&gt;Binance Smart Chain&lt;/li&gt; &lt;li&gt;Harmony.ONE&lt;/li&gt; &lt;li&gt;Ethereum&lt;/li&gt; &lt;li&gt;Celo&lt;/li&gt; &lt;li&gt;Polygon (Matic)&lt;/li&gt; &lt;/ul&gt; &lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2005]
  describe 'approve_nft_auction_spending test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for bid_on_auction
  # Bid for asset on the NFT Auction
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Bid on the auction. Buyer must either send native assets with this operation, or approve ERC20 token spending before using &lt;a href&#x3D;\&quot;#operation/Erc20Approve\&quot;&gt;Approve ERC20&lt;/a&gt;   After auction is sold, it&#x27;s in a pending state to be processed by the auction. Noone receives the assets unless the auction operator processes that.&lt;br/&gt; Supported blockchains: &lt;ul&gt; &lt;li&gt;Binance Smart Chain&lt;/li&gt; &lt;li&gt;Harmony.ONE&lt;/li&gt; &lt;li&gt;Ethereum&lt;/li&gt; &lt;li&gt;Celo&lt;/li&gt; &lt;li&gt;Polygon (Matic)&lt;/li&gt; &lt;/ul&gt; &lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2005]
  describe 'bid_on_auction test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for buy_asset_on_marketplace
  # Buy asset on the NFT Marketplace
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Buy listing on the marketplace. Buyer must either send native assets with this operation, or approve ERC20 token spending before using &lt;a href&#x3D;\&quot;#operation/Erc20Approve\&quot;&gt;Approve spending for marketplace.&lt;/a&gt;&lt;br/&gt; Supported blockchains: &lt;ul&gt; &lt;li&gt;Binance Smart Chain&lt;/li&gt; &lt;li&gt;Harmony.ONE&lt;/li&gt; &lt;li&gt;Ethereum&lt;/li&gt; &lt;li&gt;Celo&lt;/li&gt; &lt;li&gt;Polygon (Matic)&lt;/li&gt; &lt;/ul&gt; &lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2005]
  describe 'buy_asset_on_marketplace test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cancel_auction
  # Cancel auction of the asset on the NFT Auction
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Cancel auction on the auction. Only possible for the seller or the operator. There must be no buyer present for that auction. NFT asset is sent back to the seller.&lt;br/&gt; Supported blockchains: &lt;ul&gt; &lt;li&gt;Binance Smart Chain&lt;/li&gt; &lt;li&gt;Harmony.ONE&lt;/li&gt; &lt;li&gt;Ethereum&lt;/li&gt; &lt;li&gt;Celo&lt;/li&gt; &lt;li&gt;Polygon (Matic)&lt;/li&gt; &lt;/ul&gt; &lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2005]
  describe 'cancel_auction test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cancel_sell_marketplace_listing
  # Cancel selling of the asset on the NFT Marketplace
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Cancel listing on the marketplace. Only possible for the seller or the operator. There must be no buyer present for that listing. NFT asset is sent back to the seller.&lt;br/&gt; Supported blockchains: &lt;ul&gt; &lt;li&gt;Binance Smart Chain&lt;/li&gt; &lt;li&gt;Harmony.ONE&lt;/li&gt; &lt;li&gt;Ethereum&lt;/li&gt; &lt;li&gt;Celo&lt;/li&gt; &lt;li&gt;Polygon (Matic)&lt;/li&gt; &lt;/ul&gt; &lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2005]
  describe 'cancel_sell_marketplace_listing test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_auction
  # Sell asset on the NFT Auction
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Create new auction on the auction contract. Before operation, seller must approve spending of the NFT token for the Auction contract using &lt;a href&#x3D;\&quot;#operation/ApproveNftAuctionSpending\&quot;&gt;Approve NFT&lt;/a&gt;. After auction is created, auction contract transfers the asset to the auction smart contract. Only auction for existing NFTs can be created - seller must be owner of the NFT asset.&lt;br/&gt; Supported blockchains: &lt;ul&gt; &lt;li&gt;Binance Smart Chain&lt;/li&gt; &lt;li&gt;Harmony.ONE&lt;/li&gt; &lt;li&gt;Ethereum&lt;/li&gt; &lt;li&gt;Celo&lt;/li&gt; &lt;li&gt;Polygon (Matic)&lt;/li&gt; &lt;/ul&gt; &lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2005]
  describe 'create_auction test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for generate_auction
  # Create NFT Auction
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Deploy new smart contract for NFT auction logic. Smart contract enables auction operator to create new auction for NFT (ERC-721/1155). Operator can set a fee in percentage, which will be paid on top of the price of the asset. can be offered for native asset - ETH, BSC, etc. - or any ERC20 token - this is configurable during auction creation. Before auction is created, seller must approve transfer of the NFT to the auction contract. Buyer will bid for the asset from the auction using native asset - send assets along the gid() smart contract call, or via ERC20 token. Buyer of the auction must perform approval for the smart contract to access ERC20 token, before the actual bid() method is called. Once there is higher bid then the actual one, the previous bidder&#x27;s funds will be returned to him and new bidder will be the current winning one. When auction ends, anyone can settle the auction - NFT will be sent to the bidder, assets to the seller and fee to the operator.&lt;br/&gt; This operation deploys a smart contract on the blockchain.&lt;br/&gt; Supported blockchains: &lt;ul&gt; &lt;li&gt;Binance Smart Chain&lt;/li&gt; &lt;li&gt;Harmony.ONE&lt;/li&gt; &lt;li&gt;Ethereum&lt;/li&gt; &lt;li&gt;Celo&lt;/li&gt; &lt;li&gt;Polygon (Matic)&lt;/li&gt; &lt;/ul&gt; &lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2005]
  describe 'generate_auction test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for generate_marketplace
  # Create NFT Marketplace
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Deploy new smart contract for NFT marketplace logic. Smart contract enables marketplace operator to create new listing for NFT (ERC-721/1155). Operator can set a fee in percentage, which will be paid on top of the price of the asset. Listing can be offered for native asset - ETH, BSC, etc. - or any ERC20 token - this is configurable during listing creation. Once the listing is created, seller must send the NFT asset to the smart contract. Buyer will buy the asset from the listing using native asset - send assets along the buyAssetFromListing() smart contract call, or via ERC20 token. Buyer of the listing must perform approval for the smart contract to access ERC20 token, before the actual buyAssetFromListing() method is called. Once both assets - from buyer and seller - are in the smart contract, NFT is sent to the buyer, price is sent to the seller and marketplace fee is set to the operator.&lt;br/&gt; This operation deploys a smart contract on the blockchain.&lt;br/&gt; Supported blockchains: &lt;ul&gt; &lt;li&gt;Binance Smart Chain&lt;/li&gt; &lt;li&gt;Harmony.ONE&lt;/li&gt; &lt;li&gt;Ethereum&lt;/li&gt; &lt;li&gt;Celo&lt;/li&gt; &lt;li&gt;Polygon (Matic)&lt;/li&gt; &lt;/ul&gt; &lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2005]
  describe 'generate_marketplace test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_auction
  # Get auction details from the NFT Auction
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Get detail of the specific auction.&lt;/p&gt;
  # @param chain Blockchain to work with
  # @param contract_address Contract address
  # @param id Auction ID
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20010]
  describe 'get_auction test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_auction_estimated_time
  # Estimate block height based on time
  # &lt;h4&gt;1 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Get estimated block height at given time. This is estimation, not an exact block height.&lt;br/&gt; Supported blockchains: &lt;ul&gt; &lt;li&gt;Binance Smart Chain&lt;/li&gt; &lt;li&gt;Harmony.ONE&lt;/li&gt; &lt;li&gt;Ethereum&lt;/li&gt; &lt;li&gt;Celo&lt;/li&gt; &lt;li&gt;Polygon (Matic)&lt;/li&gt; &lt;/ul&gt; &lt;/p&gt; 
  # @param chain Blockchain to work with
  # @param date Date and time in ISO 8601 string
  # @param [Hash] opts the optional parameters
  # @return [BigDecimal]
  describe 'get_auction_estimated_time test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_auction_fee
  # Get NFT Auction fee
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Get fee of the auction.&lt;/p&gt;
  # @param chain Blockchain to work with
  # @param contract_address Contract address
  # @param [Hash] opts the optional parameters
  # @return [BigDecimal]
  describe 'get_auction_fee test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_auction_fee_recipient
  # Get NFT Auction fee recipient
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Get fee recipient of the auction.&lt;/p&gt;
  # @param chain Blockchain to work with
  # @param contract_address Contract address
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20011]
  describe 'get_auction_fee_recipient test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_marketplace_fee
  # Get NFT Marketplace fee
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Get fee of the marketplace.&lt;/p&gt;
  # @param chain Blockchain to work with
  # @param contract_address Contract address
  # @param [Hash] opts the optional parameters
  # @return [BigDecimal]
  describe 'get_marketplace_fee test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_marketplace_fee_recipient
  # Get NFT Marketplace fee recipient
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Get fee recipient of the marketplace.&lt;/p&gt;
  # @param chain Blockchain to work with
  # @param contract_address Contract address
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2009]
  describe 'get_marketplace_fee_recipient test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_marketplace_listing
  # Get listing from the NFT Marketplace
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Get detail of the specific listing.&lt;/p&gt;
  # @param chain Blockchain to work with
  # @param contract_address Contract address
  # @param id Listing ID
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2008]
  describe 'get_marketplace_listing test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_marketplace_listings
  # Get open/cancelled/sold listings from the NFT Marketplace
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Get list of listings in this marketplace.&lt;/p&gt;
  # @param chain Blockchain to work with
  # @param contract_address Contract address
  # @param type Listing ID
  # @param [Hash] opts the optional parameters
  # @return [Array<String>]
  describe 'get_marketplace_listings test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for sell_asset_on_marketplace
  # Sell asset on the NFT Marketplace
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Create new listing on the marketplace. Only marketplace operator can establish those on behalf of the seller of the NFT. After listing is created, seller must approve the asset for spending to the marketplace smart contract. Only listing for existing NFTs can be created - seller must be owner of the NFT asset.&lt;br/&gt; Supported blockchains: &lt;ul&gt; &lt;li&gt;Binance Smart Chain&lt;/li&gt; &lt;li&gt;Harmony.ONE&lt;/li&gt; &lt;li&gt;Ethereum&lt;/li&gt; &lt;li&gt;Celo&lt;/li&gt; &lt;li&gt;Polygon (Matic)&lt;/li&gt; &lt;/ul&gt; &lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2005]
  describe 'sell_asset_on_marketplace test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for settle_auction
  # Settle auction of the asset on the NFT Auction
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Settle auction. There must be buyer present for that auction. NFT will be sent to the bidder, assets to the seller and fee to the operator.&lt;br/&gt; Supported blockchains: &lt;ul&gt; &lt;li&gt;Binance Smart Chain&lt;/li&gt; &lt;li&gt;Harmony.ONE&lt;/li&gt; &lt;li&gt;Ethereum&lt;/li&gt; &lt;li&gt;Celo&lt;/li&gt; &lt;li&gt;Polygon (Matic)&lt;/li&gt; &lt;/ul&gt; &lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2005]
  describe 'settle_auction test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_auction_fee
  # Update NFT Auction fee
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Update fee of the auction.&lt;br/&gt; Supported blockchains: &lt;ul&gt; &lt;li&gt;Binance Smart Chain&lt;/li&gt; &lt;li&gt;Harmony.ONE&lt;/li&gt; &lt;li&gt;Ethereum&lt;/li&gt; &lt;li&gt;Celo&lt;/li&gt; &lt;li&gt;Polygon (Matic)&lt;/li&gt; &lt;/ul&gt; &lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2005]
  describe 'update_auction_fee test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_auction_fee_recipient
  # Update NFT Auction fee recipient
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Update fee recipient of the auction.&lt;br/&gt; Supported blockchains: &lt;ul&gt; &lt;li&gt;Binance Smart Chain&lt;/li&gt; &lt;li&gt;Harmony.ONE&lt;/li&gt; &lt;li&gt;Ethereum&lt;/li&gt; &lt;li&gt;Celo&lt;/li&gt; &lt;li&gt;Polygon (Matic)&lt;/li&gt; &lt;/ul&gt; &lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2005]
  describe 'update_auction_fee_recipient test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_fee
  # Update NFT Marketplace fee
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Update fee of the marketplace.&lt;br/&gt; Supported blockchains: &lt;ul&gt; &lt;li&gt;Binance Smart Chain&lt;/li&gt; &lt;li&gt;Harmony.ONE&lt;/li&gt; &lt;li&gt;Ethereum&lt;/li&gt; &lt;li&gt;Celo&lt;/li&gt; &lt;li&gt;Polygon (Matic)&lt;/li&gt; &lt;/ul&gt; &lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2005]
  describe 'update_fee test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_fee_recipient
  # Update NFT Marketplace fee recipient
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Update fee recipient of the marketplace.&lt;br/&gt; Supported blockchains: &lt;ul&gt; &lt;li&gt;Binance Smart Chain&lt;/li&gt; &lt;li&gt;Harmony.ONE&lt;/li&gt; &lt;li&gt;Ethereum&lt;/li&gt; &lt;li&gt;Celo&lt;/li&gt; &lt;li&gt;Polygon (Matic)&lt;/li&gt; &lt;/ul&gt; &lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2005]
  describe 'update_fee_recipient test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
