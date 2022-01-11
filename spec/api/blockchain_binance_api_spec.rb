=begin
#Tatum API

## Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: 3.9.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.31
=end

require 'spec_helper'
require 'json'

# Unit tests for Tatum::BlockchainBinanceApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BlockchainBinanceApi' do
  before do
    # run before each test
    @instance = Tatum::BlockchainBinanceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BlockchainBinanceApi' do
    it 'should create an instance of BlockchainBinanceApi' do
      expect(@instance).to be_instance_of(Tatum::BlockchainBinanceApi)
    end
  end

  # unit tests for bnb_blockchain_transfer
  # Send Binance / Binance Token from account to account
  # &lt;h4&gt;10 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Send Binance or Binance Token token from account to account.&lt;br/&gt;&lt;br/&gt; This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it&#x27;s own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production,  &lt;a href&#x3D;\&quot;https://github.com/tatumio/tatum-kms\&quot; target&#x3D;\&quot;_blank\&quot;&gt;Tatum KMS&lt;/a&gt; should be used for the highest security standards, and signatureId should be present in the request.  Alternatively, using the Tatum client library for supported languages. &lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [TransactionHash]
  describe 'bnb_blockchain_transfer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for bnb_broadcast
  # Broadcast signed BNB transaction
  # &lt;h4&gt;5 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Broadcast signed transaction to Binance blockchain. This method is used internally from Tatum Middleware or Tatum client libraries. It is possible to create custom signing mechanism and use this method only for broadcasting data to the blockchian.&lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [TransactionHash]
  describe 'bnb_broadcast test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for bnb_generate_wallet
  # Generate Binance wallet
  # &lt;h4&gt;5 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Generate BNB account. Tatum does not support HD wallet for BNB, only specific address and private key can be generated.&lt;/p&gt; 
  # @param [Hash] opts the optional parameters
  # @return [BnbWallet]
  describe 'bnb_generate_wallet test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for bnb_get_account
  # Get Binance Account
  # &lt;h4&gt;5 credits per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Get Binance Account Detail by address.&lt;/p&gt;
  # @param address Account address
  # @param [Hash] opts the optional parameters
  # @return [BnbAccount]
  describe 'bnb_get_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for bnb_get_block
  # Get Binance Transactions in Block
  # &lt;h4&gt;5 credits per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Get Transactions in block by block height.&lt;/p&gt;
  # @param height Block height
  # @param [Hash] opts the optional parameters
  # @return [BnbBlock]
  describe 'bnb_get_block test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for bnb_get_current_block
  # Get Binance current block
  # &lt;h4&gt;5 credits per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Get Binance current block number.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @return [BigDecimal]
  describe 'bnb_get_current_block test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for bnb_get_transaction
  # Get Binance Transaction
  # &lt;h4&gt;5 credits per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Get Binance Transaction by transaction hash.&lt;/p&gt;
  # @param hash Transaction hash
  # @param [Hash] opts the optional parameters
  # @return [BnbTx]
  describe 'bnb_get_transaction test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
