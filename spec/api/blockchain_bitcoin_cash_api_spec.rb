=begin
#Tatum API

## Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: 3.9.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.31
=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::BlockchainBitcoinCashApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BlockchainBitcoinCashApi' do
  before do
    # run before each test
    @instance = SwaggerClient::BlockchainBitcoinCashApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BlockchainBitcoinCashApi' do
    it 'should create an instance of BlockchainBitcoinCashApi' do
      expect(@instance).to be_instance_of(SwaggerClient::BlockchainBitcoinCashApi)
    end
  end

  # unit tests for bch_broadcast
  # Broadcast signed Bitcoin Cash transaction
  # &lt;h4&gt;5 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Broadcast signed transaction to Bitcoin Cash blockchain. This method is used internally from Tatum KMS, Tatum Middleware or Tatum client libraries. It is possible to create custom signing mechanism and use this method only for broadcasting data to the blockchian.&lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [TransactionHashKMS]
  describe 'bch_broadcast test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for bch_generate_address
  # Generate Bitcoin Cash deposit address from Extended public key
  # &lt;h4&gt;5 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Generate Bitcoin Cash deposit address from Extended public key. Deposit address is generated for the specific index - each extended public key can generate up to 2^31 addresses starting from index 0 until 2^31 - 1. Generates new format of address starting with bitcoincash: in case of mainnet, bchtest: in case of testnet..&lt;/p&gt; 
  # @param xpub Extended public key of wallet.
  # @param index Derivation index of desired address to be generated.
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20022]
  describe 'bch_generate_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for bch_generate_address_private_key
  # Generate Bitcoin Cash private key
  # &lt;h4&gt;5 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Generate private key for address from mnemonic for given derivation path index. Private key is generated for the specific index - each mnemonic can generate up to 2^32 private keys starting from index 0 until 2^31 - 1.&lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [PrivKey]
  describe 'bch_generate_address_private_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for bch_generate_wallet
  # Generate Bitcoin Cash wallet
  # &lt;h4&gt;5 credits per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Tatum supports BIP44 HD wallets. It is very convenient and secure, since it can generate 2^31 addresses from 1 mnemonic phrase. Mnemonic phrase consists of 24 special words in defined order and can restore access to all generated addresses and private keys.&lt;br/&gt;Each address is identified by 3 main values:&lt;ul&gt;&lt;li&gt;Private Key - your secret value, which should never be revealed&lt;/li&gt;&lt;li&gt;Public Key - public address to be published&lt;/li&gt;&lt;li&gt;Derivation index - index of generated address&lt;/li&gt;&lt;/ul&gt;&lt;/p&gt;&lt;p&gt;Tatum follows BIP44 specification and generates for Bitcoin Cash wallet with derivation path m&#x27;/44&#x27;/145&#x27;/0&#x27;/0. More about BIP44 HD wallets can be found here - &lt;a target&#x3D;\&quot;_blank\&quot; href&#x3D;\&quot;https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki\&quot;&gt;https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki&lt;/a&gt;. Generate BIP44 compatible Bitcoin Cash wallet.&lt;/p&gt; 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :mnemonic Mnemonic to use for generation of extended public and private keys.
  # @return [Wallet]
  describe 'bch_generate_wallet test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for bch_get_block
  # Get Bitcoin Cash Block by hash
  # &lt;h4&gt;5 credits per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Get Bitcoin Cash Block detail by block hash or height.&lt;/p&gt;
  # @param hash Block hash or height
  # @param [Hash] opts the optional parameters
  # @return [BchBlock]
  describe 'bch_get_block test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for bch_get_block_chain_info
  # Get Bitcoin Cash Blockchain Information
  # &lt;h4&gt;5 credits per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Get Bitcoin Cash Blockchain Information. Obtain basic info like testnet / mainnet version of the chain, current block number and it&#x27;s hash.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @return [BchInfo]
  describe 'bch_get_block_chain_info test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for bch_get_block_hash
  # Get Bitcoin Cash Block hash
  # &lt;h4&gt;5 credits per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Get Bitcoin Cash Block hash. Returns hash of the block to get the block detail.&lt;/p&gt;
  # @param i The number of blocks preceding a particular block on a block chain.
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2004]
  describe 'bch_get_block_hash test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for bch_get_raw_transaction
  # Get Bitcoin Cash Transaction by hash
  # &lt;h4&gt;5 credits per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Get Bitcoin Cash Transaction by transaction hash.&lt;/p&gt;
  # @param hash Transaction hash
  # @param [Hash] opts the optional parameters
  # @return [BchTx]
  describe 'bch_get_raw_transaction test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for bch_get_tx_by_address
  # Get Bitcoin Cash Transactions by address
  # &lt;h4&gt;5 credits per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Get Bitcoin Cash Transaction by address. Limit is 50 transaction per response.&lt;/p&gt;
  # @param address Address
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :skip Define, how much transactions should be skipped to obtain another page.
  # @return [Array<BchTx>]
  describe 'bch_get_tx_by_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for bch_transfer_blockchain
  # Send Bitcoin Cash to blockchain addresses
  # &lt;h4&gt;10 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Send Bitcoin Cash to blockchain addresses. It is possible to build a blockchain transaction in 1 way: &lt;ul&gt; &lt;li&gt;&lt;b&gt;fromUTXO&lt;/b&gt; - assets will be sent from the list of unspent UTXOs. Each of the UTXO will be included in the transaction.&lt;/li&gt; &lt;/ul&gt; In bitcoin-like blockchains, transaction is created from the list of previously not spent UTXO. Every UTXO contains amount of funds, which can be spent. When the UTXO enters into the transaction, the whole amount is included and must be spent. For example, address A receives 2 transactions, T1 with 1 BCH and T2 with 2 BCH. The transaction, which will consume UTXOs for T1 and T2, will have available amount to spent 3 BCH &#x3D; 1 BCH (T1) + 2 BCH(T2).&lt;br/&gt;&lt;br/&gt; There can be multiple recipients of the transactions, not only one. In the &lt;b&gt;to&lt;/b&gt; section, every recipient address has it&#x27;s corresponding amount. When the amount of funds, that should receive the recipient is lower than the amount of funds from the UTXOs, the difference is used as a transaction fee.&lt;br/&gt;&lt;br/&gt; This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it&#x27;s own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, &lt;a href&#x3D;\&quot;https://github.com/tatumio/tatum-kms\&quot; target&#x3D;\&quot;_blank\&quot;&gt;Tatum KMS&lt;/a&gt; should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. &lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2005]
  describe 'bch_transfer_blockchain test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
