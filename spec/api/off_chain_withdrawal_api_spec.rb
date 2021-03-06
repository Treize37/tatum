=begin
#Tatum API

## Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: 3.9.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.31
=end

require 'spec_helper'
require 'json'

# Unit tests for Tatum::OffChainWithdrawalApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OffChainWithdrawalApi' do
  before do
    # run before each test
    @instance = Tatum::OffChainWithdrawalApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OffChainWithdrawalApi' do
    it 'should create an instance of OffChainWithdrawalApi' do
      expect(@instance).to be_instance_of(Tatum::OffChainWithdrawalApi)
    end
  end

  # unit tests for broadcast_blockchain_transaction
  # Broadcast signed transaction and complete withdrawal
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Broadcast signed raw transaction end complete withdrawal associated with it. When broadcast succeeded but it is impossible to complete withdrawal, transaction id of transaction is returned and withdrawal must be completed manually. &lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [BroadcastResponse]
  describe 'broadcast_blockchain_transaction test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cancel_in_progress_withdrawal
  # Cancel withdrawal
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;This method is helpful if you need to cancel the withdrawal if the blockchain transaction fails or is not yet processed. This does not cancel already broadcast blockchain transaction, only Tatum internal withdrawal, and the ledger transaction, that was linked to this withdrawal.&lt;br/&gt; By default, the transaction fee is included in the reverted transaction. There are situations, like sending ERC20 on ETH, TRC token on TRON, XLM or XRP based assets, when the fee should not be reverted, because e.g. the fee is in calculated in Ethereum and transaction was in ERC20 currency. In this situation, only the transaction amount should be reverted, not the fee. &lt;/p&gt; 
  # @param id ID of created withdrawal
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :revert Defines whether fee should be reverted to account balance as well as amount. Defaults to true. Revert true would be typically used when withdrawal was not broadcast to blockchain. False is used usually for Ethereum based currencies when gas was consumed but transaction was reverted.
  # @return [nil]
  describe 'cancel_in_progress_withdrawal test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for complete_withdrawal
  # Complete withdrawal
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Invoke complete withdrawal as soon as blockchain transaction ID is available. All other withdrawals for the same currency will be pending unless the last one is processed and marked as completed.&lt;/p&gt; 
  # @param id ID of created withdrawal
  # @param tx_id Blockchain transaction ID of created withdrawal
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'complete_withdrawal test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_withdrawals
  # Get withdrawals
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Get withdrawals.&lt;/p&gt;
  # @param page_size Max number of items per page is 50.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :currency Currency of the withdrawal
  # @option opts [String] :status Status of the withdrawal
  # @option opts [BigDecimal] :offset Offset to obtain next page of the data.
  # @return [Array<WithdrawalObject>]
  describe 'get_withdrawals test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for store_withdrawal
  # Store withdrawal
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt; &lt;p&gt;Create a withdrawal from Tatum Ledger account to the blockchain.&lt;br/&gt;   &lt;h4&gt;BTC, LTC, DOGE, BCH&lt;/h4&gt;   &lt;p&gt;     When withdrawal from Tatum is executed, all deposits, which are not processed yet are used as an input and     change is moved to pool address 0 of wallet for defined account&#x27;s xpub. If there are no unspent deposits, only last pool address 0 UTXO is used.     If balance of wallet is not sufficient, it is impossible to perform withdrawal from this account -&gt; funds were transferred to another     linked wallet within system or outside of Tatum visibility.&lt;br/&gt;     For the first time of withdrawal from wallet, there must be some deposit made and funds are obtained from that. Since     there is no withdrawal, there was no transfer to pool address 0 and thus it is not present in vIn. Pool transfer is identified by missing data.address property in response.     When last not cancelled withdrawal is not completed and thus there is no tx id of output transaction given,     we cannot perform next withdrawal.   &lt;/p&gt;   &lt;h4&gt;ETH&lt;/h4&gt;   &lt;p&gt;     Withdrawal from Tatum can be processed only from 1 account. In Ethereum Blockchain, each address is recognized as an account and only funds from that account can be sent in 1 transaction.     Example: Account A has 0.5 ETH, Account B has 0.3 ETH. Account A is linked to Tatum Account 1, Account B is linked to Tatum Account 2. Tatum Account 1 has balance 0.7 Ethereum and     Tatum Account 2 has 0.1 ETH. Withdrawal from Tatum Account 1 can be at most 0.5 ETH, even though balance in Tatum Private Ledger is 0.7 ETH.     Because of this Ethereum Blockchain limitation, withdrawal request should always contain sourceAddress, from which withdrawal will be made. To get available balances for Ethereum wallet accounts, use hint endpoint.   &lt;/p&gt;   &lt;h4&gt;XRP&lt;/h4&gt;   &lt;p&gt;     XRP withdrawal can contain DestinationTag except of address, which is placed in attr parameter of withdrawal request. SourceTag of the blockchain transaction should be withdrawal ID for autocomplete purposes of withdrawals.   &lt;/p&gt;   &lt;h4&gt;XLM&lt;/h4&gt;   &lt;p&gt;     XLM withdrawal can contain memo except of address, which is placed in attr parameter of withdrawal request. XLM blockchain does not have possibility to enter source account information.     It is possible to create memo in format &#x27;destination|source&#x27;, which is supported way of memo in Tatum and also there is information about the sender account in the blockchain.   &lt;/p&gt; &lt;br/&gt; When withdrawal is created, all other withdrawals with the same currency are pending, unless the current one is marked as complete or cancelled.&lt;br/&gt; Tatum ledger transaction is created for every withdrawal request with operation type WITHDRAWAL. The value of the transaction is the withdrawal amount + blockchain fee, which should be paid. In the situation, when there is withdrawal for ERC20, XLM, or XRP based custom assets, the fee is not included in the transaction because it is paid in different assets than the withdrawal itself. &lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [WithdrawalResponse]
  describe 'store_withdrawal test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
