=begin
#Tatum API

## Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: 3.9.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.31
=end

require 'spec_helper'
require 'json'

# Unit tests for Tatum::BlockchainFungibleTokenApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BlockchainFungibleTokenApi' do
  before do
    # run before each test
    @instance = Tatum::BlockchainFungibleTokenApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BlockchainFungibleTokenApi' do
    it 'should create an instance of BlockchainFungibleTokenApi' do
      expect(@instance).to be_instance_of(Tatum::BlockchainFungibleTokenApi)
    end
  end

  # unit tests for erc20_approve
  # Approve spending of ERC20
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Approve ERC20 Fungible Tokens to be spendable by someone else. This method allows new address to transfer/burn ERC20 tokens on behalf of the owner. &lt;br/&gt;&lt;br/&gt; This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it&#x27;s own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, &lt;a href&#x3D;\&quot;https://github.com/tatumio/tatum-kms\&quot; target&#x3D;\&quot;_blank\&quot;&gt;Tatum KMS&lt;/a&gt; should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. &lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_testnet_type Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations.
  # @return [InlineResponse2005]
  describe 'erc20_approve test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for erc20_burn
  # Burn ERC20
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Burn ERC20 Fungible Tokens. This method destroys ERC20 tokens from smart contract defined in contractAddress. &lt;br/&gt;&lt;br/&gt; This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it&#x27;s own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, &lt;a href&#x3D;\&quot;https://github.com/tatumio/tatum-kms\&quot; target&#x3D;\&quot;_blank\&quot;&gt;Tatum KMS&lt;/a&gt; should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. &lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_testnet_type Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations.
  # @return [InlineResponse2005]
  describe 'erc20_burn test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for erc20_deploy
  # Deploy ERC20 Smart Contract.
  # &lt;p&gt;Deploy ERC20 Smart Contract. This method creates new ERC20 (Fungible Tokens) Smart Contract on the blockchain. Smart contract is standardized and audited. It is possible to mint and burn tokens. It is possible to see the code of the deployed contract &lt;a href&#x3D;\&quot;https://github.com/tatumio/tatum-middleware/blob/master/src/contracts/token.sol\&quot; target&#x3D;\&quot;_blank\&quot;&gt;here&lt;/a&gt;. Whole predefined supply of the tokens will be transferred to the chosen address. &lt;br/&gt;&lt;br/&gt; This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it&#x27;s own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, &lt;a href&#x3D;\&quot;https://github.com/tatumio/tatum-kms\&quot; target&#x3D;\&quot;_blank\&quot;&gt;Tatum KMS&lt;/a&gt; should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. &lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_testnet_type Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations.
  # @return [InlineResponse2005]
  describe 'erc20_deploy test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for erc20_get_balance
  # Get ERC20 Account balance
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Get ERC20 Account balance. Returns number of tokens Account holds.&lt;/p&gt;
  # @param chain Network name
  # @param address Account address
  # @param contract_address ERC20 contract address
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_testnet_type Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations.
  # @return [InlineResponse20043]
  describe 'erc20_get_balance test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for erc20_get_transaction_by_address
  # Get ERC20 transactions by address
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Get ERC20 transactions by address. This includes incoming and outgoing transactions for the address.&lt;/p&gt;
  # @param chain Blockchain to work with
  # @param address Account address
  # @param token_address Token address
  # @param page_size Max number of items per page is 50.
  # @param [Hash] opts the optional parameters
  # @option opts [BigDecimal] :offset Offset to obtain next page of the data.
  # @option opts [BigDecimal] :from Transactions from this block onwords will be included.
  # @option opts [BigDecimal] :to Transactions up to this block will be included.
  # @option opts [String] :sort Sorting of the data. ASC - oldest first, DESC - newest first.
  # @return [Array<null>]
  describe 'erc20_get_transaction_by_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for erc20_mint
  # Mint ERC20
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Create new ERC20 Fungible Tokens and transfer it to destination account. Tokens can be created only if current supply is lower then total supply. Create and transfer any ERC20 tokens from smart contract defined in contractAddress. &lt;br/&gt;&lt;br/&gt; This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it&#x27;s own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, &lt;a href&#x3D;\&quot;https://github.com/tatumio/tatum-kms\&quot; target&#x3D;\&quot;_blank\&quot;&gt;Tatum KMS&lt;/a&gt; should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. &lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_testnet_type Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations.
  # @return [InlineResponse2005]
  describe 'erc20_mint test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for erc20_transfer
  # Transfer ERC20 Token
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Transfer ERC20 Fungible Tokens from account to account. Transfer any ERC20 tokens from smart contract defined in contractAddress. This method invokes ERC20 method transfer() to transfer tokens. &lt;br/&gt;&lt;br/&gt; This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it&#x27;s own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, &lt;a href&#x3D;\&quot;https://github.com/tatumio/tatum-kms\&quot; target&#x3D;\&quot;_blank\&quot;&gt;Tatum KMS&lt;/a&gt; should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. Algorand is unique a way that the receiving account should be ready before sending the FT(Erc20) asset. To perform this, the receiving account should transfer the FT(Erc20) asset with 0 amount to itself. During the process, it&#x27;s using the same API as the main transaction: the only difference is that the \&quot;fromPrivateKey\&quot; should be the privateKey of the receiving account. &lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_testnet_type Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations.
  # @return [InlineResponse2005]
  describe 'erc20_transfer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
