=begin
#Tatum API

## Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: 3.9.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.31
=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::BlockchainRecordApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BlockchainRecordApi' do
  before do
    # run before each test
    @instance = SwaggerClient::BlockchainRecordApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BlockchainRecordApi' do
    it 'should create an instance of BlockchainRecordApi' do
      expect(@instance).to be_instance_of(SwaggerClient::BlockchainRecordApi)
    end
  end

  # unit tests for get_log
  # Get log record
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Gets log data from the Ethereum blockchain.&lt;/p&gt;
  # @param chain The blockchain to get the log record from
  # @param id ID of the log record / transaction on the blockchain
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2001]
  describe 'get_log test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for store_log
  # Store log record
  # &lt;h4&gt;2 credits per API call. Additional credits are debited based on the size of the stored data and the type of blockchain.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Stores record data on blockchain. Tatum currently supports the Ethereum, CELO, MATIC, ONE, XDC, Quorum, BSC, EGLD and Hyperledger Fabric blockchain and Quorum to store data.&lt;br/&gt; The total cost of the transaction (in credits) on the Ethereum blockchain is dependent on the size of the data. Data are stored as a HEX string and the maximum data size is approximatelly 130 kB on mainnet, 30 kB on testnet.&lt;br/&gt; Every 5 characters of data costs 1 credit, so an API call with a data of length 1 kB &#x3D; 1024 characters and would cost 205 credits. &lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [TransactionHash]
  describe 'store_log test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
