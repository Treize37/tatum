=begin
#Tatum API

## Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: 3.9.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.31
=end

require 'spec_helper'
require 'json'

# Unit tests for Tatum::OffChainAccountApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OffChainAccountApi' do
  before do
    # run before each test
    @instance = Tatum::OffChainAccountApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OffChainAccountApi' do
    it 'should create an instance of OffChainAccountApi' do
      expect(@instance).to be_instance_of(Tatum::OffChainAccountApi)
    end
  end

  # unit tests for address_exists
  # Check, if deposit address is assigned
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Check, whether blockchain address for given currency is registered within Tatum and assigned to Tatum Account. Returns account this address belongs to, otherwise throws an error.&lt;/p&gt; 
  # @param currency Currency
  # @param address Blockchain Address to check
  # @param [Hash] opts the optional parameters
  # @option opts [BigDecimal] :index In case of XLM or XRP, this is a memo or DestinationTag to search for.
  # @return [Account]
  describe 'address_exists test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for assign_address
  # Assign address for account
  # &lt;h4&gt;2 credits for API call and 5 credits for each address registered for scanning every day.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;This method is used when the account has no default xpub assigned, and addresses are handled manually. It is possible to pair any number of blockchain address to the account.&lt;/p&gt; 
  # @param id Account ID
  # @param address Blockchain address
  # @param [Hash] opts the optional parameters
  # @option opts [BigDecimal] :index Destination tag or memo attribute for XRP or XLM addresses
  # @return [Address]
  describe 'assign_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for generate_deposit_address
  # Create new deposit address
  # &lt;h4&gt;2 credits per API call and 5 credits for each address registered for scanning every day. If address is FLOW or FUSD, additional 3000 credits are consumed - see &lt;a href&#x3D;\&quot;#operation/FlowGenerateAddress\&quot;&gt;Flow address generation.&lt;/a&gt;&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Create a new deposit address for the account. This method associates public blockchain&#x27;s ledger address with the account on Tatum&#x27;s private ledger.&lt;br/&gt; It is possible to generate multiple blockchain addresses for the same ledger account. By this, it is possible to aggregate various blockchain transactions from different addresses into the same account. Depending on the currency of an account, this method will either generate a public address for Bitcoin, Bitcoin Cash, Litecoin or Ethereum, DestinationTag in case of XRP or message in case of XLM. More information about supported blockchains and address types can be found &lt;a href&#x3D;\&quot;#operation/createAccount\&quot;&gt;here&lt;/a&gt;.&lt;br/&gt; Addresses are generated in the natural order of the Extended public key provided in the account. Derivation index is the representation of that order - starts from 0 and ends at 2^31. When a new address is generated, the last not used index is used to generate an address. It is possible to skip some of the addresses to the different index, which means all the skipped addresses will no longer be used. &lt;/p&gt; 
  # @param id Account ID
  # @param [Hash] opts the optional parameters
  # @option opts [BigDecimal] :index &lt;p&gt;Derivation path index for specific address. If not present, last used index for given xpub of account + 1 is used. We recommend not to pass this value manually, since when some of the indexes are skipped, it is not possible to use them lately to generate address from it.&lt;/p&gt;
  # @return [Address]
  describe 'generate_deposit_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for generate_deposit_addresses_batch
  # Create new deposit addresses in a batch call
  # &lt;h4&gt;2 credits per API call, 1 credit for every address created and 5 credits for each address registered for scanning every day. If address is FLOW or FUSD, additional 3000 credits are consumed for each address - see &lt;a href&#x3D;\&quot;#operation/FlowGenerateAddress\&quot;&gt;Flow address generation.&lt;a/&gt;&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Create new deposit addressess for the account. This method associates public blockchain&#x27;s ledger address with the account on Tatum&#x27;s private ledger.&lt;br/&gt; It is possible to generate multiple blockchain addresses for the same ledger account. By this, it is possible to aggregate various blockchain transactions from different addresses into the same account. Depending on the currency of an account, this method will either generate a public address for Bitcoin, Bitcoin Cash, Litecoin or Ethereum, DestinationTag in case of XRP or message in case of XLM. More information about supported blockchains and address types can be found &lt;a href&#x3D;\&quot;#operation/createAccount\&quot;&gt;here&lt;/a&gt;.&lt;br/&gt; Addresses are generated in the natural order of the Extended public key provided in the account. Derivation index is the representation of that order - starts from 0 and ends at 2^31. When a new address is generated, the last not used index is used to generate an address. It is possible to skip some of the addresses to the different index, which means all the skipped addresses will no longer be used. &lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [Array<Address>]
  describe 'generate_deposit_addresses_batch test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_deposit_addresses
  # Get all deposit addresses for account
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Get all deposit addresses generated for account. It is possible to deposit funds from another blockchain address to any of associated addresses and they will be credited on the Tatum Ledger account connected to the address.&lt;/p&gt; 
  # @param id Account ID
  # @param [Hash] opts the optional parameters
  # @return [Array<Address>]
  describe 'get_all_deposit_addresses test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_address
  # Remove address for account
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Remove blockchain address from the Ledger account. Tatum will not check for any incoming deposits on this address for this account. It will not be possible to generate the address in the future anymore.&lt;/p&gt; 
  # @param id Account ID
  # @param address Blockchain address
  # @param [Hash] opts the optional parameters
  # @option opts [BigDecimal] :index Destination tag or memo attribute for XRP or XLM addresses
  # @return [nil]
  describe 'remove_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
