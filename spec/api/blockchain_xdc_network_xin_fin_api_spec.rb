=begin
#Tatum API

## Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: 3.9.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.31
=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::BlockchainXDCNetworkXinFinApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BlockchainXDCNetworkXinFinApi' do
  before do
    # run before each test
    @instance = SwaggerClient::BlockchainXDCNetworkXinFinApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BlockchainXDCNetworkXinFinApi' do
    it 'should create an instance of BlockchainXDCNetworkXinFinApi' do
      expect(@instance).to be_instance_of(SwaggerClient::BlockchainXDCNetworkXinFinApi)
    end
  end

  # unit tests for xdc_blockchain_smart_contract_invocation
  # Invoke Smart Contract method
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Invoke any method on an existing Smart Contract. It is possible to call read or write method on the Smart Contract defined via contractAddress. For read operations, data is returned, for write operations, transaction Id of the associated transaction is returned.&lt;br/&gt; This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it&#x27;s own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, &lt;a href&#x3D;\&quot;https://github.com/tatumio/tatum-kms\&quot; target&#x3D;\&quot;_blank\&quot;&gt;Tatum KMS&lt;/a&gt; should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages.&lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20016]
  describe 'xdc_blockchain_smart_contract_invocation test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for xdc_blockchain_transfer
  # Send XDC / ERC20 from account to account
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Send XDC or Tatum supported ERC20 token from account to account.&lt;br/&gt;&lt;br/&gt; This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it&#x27;s own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, &lt;a href&#x3D;\&quot;https://github.com/tatumio/tatum-kms\&quot; target&#x3D;\&quot;_blank\&quot;&gt;Tatum KMS&lt;/a&gt; should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. &lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2005]
  describe 'xdc_blockchain_transfer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for xdc_broadcast
  # Broadcast signed XDC transaction
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Broadcast signed transaction to XDC blockchain. This method is used internally from Tatum KMS or Tatum client libraries. It is possible to create custom signing mechanism and use this method only for broadcasting data to the blockchian.&lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [TransactionHashKMS]
  describe 'xdc_broadcast test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for xdc_estimate_gas
  # Estimate XDC transaction fees
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Estimate gasLimit and gasPrice of the XDC transaction. Gas price is obtained from &lt;a href&#x3D;\&quot;https://rpc.xinfin.network/gasPrice\&quot; target&#x3D;\&quot;_blank\&quot;&gt;https://rpc.xinfin.network/gasPrice&lt;/a&gt;. &lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20072]
  describe 'xdc_estimate_gas test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for xdc_generate_address
  # Generate XDC account address from Extended public key
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Generate XDC account deposit address from Extended public key. Deposit address is generated for the specific index - each extended public key can generate up to 2^31 addresses starting from index 0 until 2^31.&lt;/p&gt; 
  # @param xpub Extended public key of wallet.
  # @param index Derivation index of desired address to be generated.
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20070]
  describe 'xdc_generate_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for xdc_generate_address_private_key
  # Generate XDC private key
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Generate private key of address from mnemonic for given derivation path index. Private key is generated for the specific index - each mnemonic can generate up to 2^31 private keys starting from index 0 until 2^31.&lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [PrivKey]
  describe 'xdc_generate_address_private_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for xdc_generate_wallet
  # Generate XDC wallet
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Tatum supports BIP44 HD wallets. It is very convenient and secure, since it can generate 2^31 addresses from 1 mnemonic phrase. Mnemonic phrase consists of 24 special words in defined order and can restore access to all generated addresses and private keys. &lt;br/&gt; Each address is identified by 3 main values: &lt;ul&gt;&lt;li&gt;Private Key - your secret value, which should never be revealed&lt;/li&gt; &lt;li&gt;Public Key - public address to be published&lt;/li&gt; &lt;li&gt;Derivation index - index of generated address&lt;/li&gt;&lt;/ul&gt; &lt;/p&gt; &lt;p&gt;Tatum follows BIP44 specification and generates for XDC wallet with derivation path m&#x27;/44&#x27;/550&#x27;/0&#x27;/0. More about BIP44 HD wallets can be found here - &lt;a target&#x3D;\&quot;_blank\&quot; href&#x3D;\&quot;https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki\&quot;&gt;https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki&lt;/a&gt;. Generate BIP44 compatible XDC wallet.&lt;/p&gt; 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :mnemonic Mnemonic to use for generation of extended public and private keys.
  # @return [Wallet]
  describe 'xdc_generate_wallet test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for xdc_get_balance
  # Get XDC Account balance
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Get account balance in XDC. This method does not prints any balance of the ERC20 or ERC721 tokens on the account.&lt;/p&gt;
  # @param address Account address
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20071]
  describe 'xdc_get_balance test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for xdc_get_block
  # Get XDC block by hash
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Get XDC block by block hash or block number.&lt;/p&gt;
  # @param hash Block hash or block number
  # @param [Hash] opts the optional parameters
  # @return [XdcBlock]
  describe 'xdc_get_block test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for xdc_get_current_block
  # Get current block number
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Get XDC current block number. This is the number of the latest block in the blockchain.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @return [BigDecimal]
  describe 'xdc_get_current_block test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for xdc_get_transaction
  # Get XDC Transaction
  # &lt;h4&gt;2 credit per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Get XDC transaction by transaction hash.&lt;/p&gt;
  # @param hash Transaction hash
  # @param [Hash] opts the optional parameters
  # @return [XdcTx]
  describe 'xdc_get_transaction test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for xdc_get_transaction_count
  # Get count of outgoing XDC transactions
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Get a number of outgoing XDC transactions for the address. When a transaction is sent, there can be multiple outgoing transactions, which are not yet processed by the blockchain. To distinguish between them, there is a counter called a nonce, which represents the order of the transaction in the list of outgoing transactions.&lt;/p&gt; 
  # @param address address
  # @param [Hash] opts the optional parameters
  # @return [BigDecimal]
  describe 'xdc_get_transaction_count test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for xdc_web3_driver
  # Web3 HTTP driver
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Use this endpoint URL as a http-based web3 driver to connect directly to the XDC node provided by Tatum. To learn more about XDC Web3, please visit &lt;a href&#x3D;\&quot;https://howto.xinfin.org/\&quot; target&#x3D;\&quot;_blank\&quot;&gt;XDC developer&#x27;s guide.&lt;/a&gt;&lt;/p&gt; 
  # @param body 
  # @param x_api_key Tatum X-API-Key used for authorization.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'xdc_web3_driver test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
