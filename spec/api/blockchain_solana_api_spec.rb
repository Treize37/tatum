=begin
#Tatum API

## Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: 3.9.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.31
=end

require 'spec_helper'
require 'json'

# Unit tests for Tatum::BlockchainSolanaApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BlockchainSolanaApi' do
  before do
    # run before each test
    @instance = Tatum::BlockchainSolanaApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BlockchainSolanaApi' do
    it 'should create an instance of BlockchainSolanaApi' do
      expect(@instance).to be_instance_of(Tatum::BlockchainSolanaApi)
    end
  end

  # unit tests for solana_blockchain_transfer
  # Send SOL from account to account
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Send SOL from account to account.&lt;br/&gt;&lt;br/&gt; This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it&#x27;s own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, &lt;a href&#x3D;\&quot;https://github.com/tatumio/tatum-kms\&quot; target&#x3D;\&quot;_blank\&quot;&gt;Tatum KMS&lt;/a&gt; should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. &lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2005]
  describe 'solana_blockchain_transfer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for solana_generate_wallet
  # Generate Solana wallet
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Generate Solana private key and account address.&lt;/p&gt; 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20047]
  describe 'solana_generate_wallet test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for solana_get_balance
  # Get Solana Account balance
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Get Solana account balance in SOL. This method does not prints any balance of the SLP or NFT tokens on the account.&lt;/p&gt;
  # @param address Account address
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20048]
  describe 'solana_get_balance test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for solana_get_block
  # Get Solana block by number
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Get Solana block by block hash or block number. &lt;br/&gt; You can find full data description here - &lt;a target&#x3D;\&quot;blank\&quot; href&#x3D;\&quot;https://docs.solana.com/developing/clients/jsonrpc-api#getblock\&quot;&gt;https://docs.solana.com/developing/clients/jsonrpc-api#getblock&lt;/a&gt; &lt;/p&gt; 
  # @param height Block number
  # @param [Hash] opts the optional parameters
  # @return [SolanaBlock]
  describe 'solana_get_block test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for solana_get_current_block
  # Get current block number
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Get Solana current block number. This is the number of the latest block in the blockchain.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @return [BigDecimal]
  describe 'solana_get_current_block test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for solana_get_transaction
  # Get Solana Transaction
  # &lt;h4&gt;2 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Get Solana transaction by transaction hash.&lt;br/&gt; You can find full data description here - &lt;a target&#x3D;\&quot;blank\&quot; href&#x3D;\&quot;https://docs.solana.com/developing/clients/jsonrpc-api#gettransaction\&quot;&gt;https://docs.solana.com/developing/clients/jsonrpc-api#gettransaction&lt;/a&gt; &lt;/p&gt; 
  # @param hash Transaction hash
  # @param [Hash] opts the optional parameters
  # @return [SolanaTx]
  describe 'solana_get_transaction test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for solana_web3_driver
  # JSON RPC HTTP driver
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Use this endpoint URL as a http-based JSON RPC driver to connect directly to the Solana node provided by Tatum. To learn more about Solana JSON RPC, please visit &lt;a href&#x3D;\&quot;https://docs.solana.com/developing/clients/jsonrpc-api\&quot; target&#x3D;\&quot;_blank\&quot;&gt;Solana developer&#x27;s guide.&lt;/a&gt;&lt;/p&gt; 
  # @param body 
  # @param x_api_key Tatum X-API-Key used for authorization.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'solana_web3_driver test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
