=begin
#Tatum API

## Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: 3.9.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.31
=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::BlockchainBitcoinApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BlockchainBitcoinApi' do
  before do
    # run before each test
    @instance = SwaggerClient::BlockchainBitcoinApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BlockchainBitcoinApi' do
    it 'should create an instance of BlockchainBitcoinApi' do
      expect(@instance).to be_instance_of(SwaggerClient::BlockchainBitcoinApi)
    end
  end

  # unit tests for btc_broadcast
  # Broadcast signed Bitcoin transaction
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Broadcasts a signed transaction to the Bitcoin blockchain. This method is used internally from Tatum KMS, Tatum Middleware or Tatum Client Libraries. It is possible to create a custom signing mechanism and only use this method for broadcasting data to the blockchain.&lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [TransactionHashKMS]
  describe 'btc_broadcast test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for btc_generate_address
  # Generate Bitcoin deposit address from Extended public key
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Generates a Bitcoin deposit address from an Extended public key. The deposit address is generated for the specific index - each extended public key can generate up to 2^31 addresses starting from index 0 until 2^31 - 1.&lt;/p&gt; 
  # @param xpub Extended public key of a wallet.
  # @param index Derivation index of the desired address to be generated.
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2003]
  describe 'btc_generate_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for btc_generate_address_private_key
  # Generate Bitcoin private key
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Generates a private key for an address from a mnemonic for a given derivation path index. The private key is generated for the specific index - each mnemonic can generate up to 2^32 private keys starting from index 0 until 2^31 - 1.&lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [PrivKey]
  describe 'btc_generate_address_private_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for btc_generate_wallet
  # Generate Bitcoin wallet
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Tatum supports BIP44 HD wallets. Because they can generate 2^31 addresses from 1 mnemonic phrase, they are very convenient and secure. A mnemonic phrase consists of 24 special words in a defined order and can restore access to all generated addresses and private keys.&lt;br/&gt;Each address is identified by 3 main values:&lt;ul&gt;&lt;li&gt;Private Key - your secret value, which should never be revealed&lt;/li&gt;&lt;li&gt;Public Key - public address to be published&lt;/li&gt;&lt;li&gt;Derivation index - index of generated address&lt;/li&gt;&lt;/ul&gt;&lt;/p&gt;&lt;p&gt;Tatum follows BIP44 specification and generates for Bitcoin wallet with derivation path m&#x27;/44&#x27;/0&#x27;/0&#x27;/0. More about BIP44 HD wallets can be found here - &lt;a target&#x3D;\&quot;_blank\&quot; href&#x3D;\&quot;https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki\&quot;&gt;https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki&lt;/a&gt;. Generate BIP44 compatible Bitcoin wallet.&lt;/p&gt; 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :mnemonic Mnemonic to use for generation of extended public and private keys.
  # @return [Wallet]
  describe 'btc_generate_wallet test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for btc_get_balance_of_address
  # Get the balance of an address
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Gets the Bitcoin balance of the address.&lt;/p&gt;
  # @param address Address
  # @param [Hash] opts the optional parameters
  # @return [BtcBasedBalance]
  describe 'btc_get_balance_of_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for btc_get_block
  # Get Block by hash or height
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Gets Bitcoin block detail by block hash or height.&lt;/p&gt;
  # @param hash Block hash or height.
  # @param [Hash] opts the optional parameters
  # @return [BtcBlock]
  describe 'btc_get_block test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for btc_get_block_chain_info
  # Get Blockchain information
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Gets Bitcoin blockchain information. Obtains basic info like the testnet / mainnet version of the chain, the current block number and its hash.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @return [BtcInfo]
  describe 'btc_get_block_chain_info test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for btc_get_block_hash
  # Get Block hash
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Gets a Bitcoin block hash. Returns the hash of the block to get the block&#x27;s details.&lt;/p&gt;
  # @param i The number of blocks preceding a particular block on a blockchain.
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2004]
  describe 'btc_get_block_hash test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for btc_get_mempool
  # Get mempool transactions
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Gets Bitcoin transaction IDs in the mempool.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @return [Array<String>]
  describe 'btc_get_mempool test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for btc_get_raw_transaction
  # Get transaction by hash
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Get Bitcoin Transaction detail by transaction hash.&lt;/p&gt;
  # @param hash Transaction hash
  # @param [Hash] opts the optional parameters
  # @return [BtcTx]
  describe 'btc_get_raw_transaction test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for btc_get_tx_by_address
  # Get transactions by address
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Gets a Bitcoin transaction by address.&lt;/p&gt;
  # @param address Address
  # @param page_size Max number of items per page is 50.
  # @param [Hash] opts the optional parameters
  # @option opts [BigDecimal] :offset Offset to obtain the next page of data.
  # @return [Array<BtcTx>]
  describe 'btc_get_tx_by_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for btc_get_utxo
  # Get UTXO of transaction
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Get the UTXO of given transaction and output index. UTXO means Unspent Transaction Output, which in blockchain terminology means assets that a user has received at a specific address and has not yet spent.&lt;br/&gt; In bitcoin-like blockchains (BTC, LTC, DOGE, BCH), every transaction is built from a list of previously unspent transactions connected to the address. If a user owns address A, and receives 10 BTC in transaction T1, they can spend a UTXO T1 with a total value of 10 BTC in the next transaction. The user can spend multiple UTXOs from different addresses in one transaction.&lt;br/&gt; If the UTXO is not spent, the data are returned, or a 404 error code is generated.&lt;/p&gt; 
  # @param hash TX Hash
  # @param index Index of tx output to check if it has been spent or not
  # @param [Hash] opts the optional parameters
  # @return [BtcUTXO]
  describe 'btc_get_utxo test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for btc_transfer_blockchain
  # Send Bitcoin to blockchain addresses
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Send Bitcoin to blockchain addresses. It is possible to build a blockchain transaction in 2 ways: &lt;ul&gt; &lt;li&gt;&lt;b&gt;fromAddress&lt;/b&gt; - assets will be sent from the list of addresses. For each of the addresses, the last 100 transactions will be scanned for any unspent UTXO to be included in the transaction.&lt;/li&gt; &lt;li&gt;&lt;b&gt;fromUTXO&lt;/b&gt; - assets will be sent from the list of unspent UTXOs. Each of the UTXOs will be included in the transaction.&lt;/li&gt; &lt;/ul&gt; In bitcoin-like blockchains, a transaction is created from the list of previously unspent UTXOs. Every UTXO contains the amount of funds that can be spent. When the UTXO is entered into the transaction, the whole amount is included and must be spent. For example, address A receives 2 transactions, T1 with 1 BTC and T2 with 2 BTC. The transaction, which will consume the UTXOs for T1 and T2, will have an available amount to spend of 3 BTC &#x3D; 1 BTC (T1) + 2 BTC(T2).&lt;br/&gt;&lt;br/&gt; There can be multiple recipients of the transactions. In the &lt;b&gt;to&lt;/b&gt; section, every recipient address has its own corresponding amount. When the amount of funds that the recipient should receive is lower than the amount of funds from the UTXOs, the difference is used as a transaction fee.&lt;br/&gt;&lt;br/&gt; This operation requires the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send their private keys to the Internet because there is a strong possibility that they will be stolen and the funds will be lost. In this method, it is possible to enter a privateKey or signatureId. The privateKey should be used only for quick development on testnet versions of blockchains when there is no risk of losing funds. In production, &lt;a href&#x3D;\&quot;https://github.com/tatumio/tatum-kms\&quot; target&#x3D;\&quot;_blank\&quot;&gt;Tatum KMS&lt;/a&gt; should be used to ensure the highest level of security, and the signatureId should be present in the request. Alternatively, it is also possible to use the Tatum Client Library for supported languages. &lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2005]
  describe 'btc_transfer_blockchain test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end