=begin
#Tatum API

## Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: 3.9.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.31
=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::LedgerSubscriptionApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'LedgerSubscriptionApi' do
  before do
    # run before each test
    @instance = SwaggerClient::LedgerSubscriptionApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LedgerSubscriptionApi' do
    it 'should create an instance of LedgerSubscriptionApi' do
      expect(@instance).to be_instance_of(SwaggerClient::LedgerSubscriptionApi)
    end
  end

  # unit tests for create_subscription
  # Create new subscription
  # &lt;h4&gt;2 credits for API call. Every type of subscription has different credit pricing.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Create new subscription as a HTTP Web Hook. Currently Tatum support multiple subscription types: &lt;ul&gt; &lt;li&gt;&lt;b&gt;ACCOUNT_INCOMING_BLOCKCHAIN_TRANSACTION&lt;/b&gt; - Enable HTTP POST JSON notifications on incoming blockchain transactions on off-chain accounts. This web hook will be invoked, when the transaction is credited to the ledger account. Transaction is credited, when it has sufficient amount of blockchain confirmations. For BTC, LTC, BCH, DOGE - 1 confirmation, ETH, ERC20 tokens, XLM, XRP, BNB - 1 confirmation. Request body of the POST request will be JSON object with attributes:&lt;br/&gt; &lt;pre&gt;{   \&quot;date\&quot;: 1619176527481,   \&quot;amount\&quot;: \&quot;0.005\&quot;,   \&quot;currency\&quot;: \&quot;BTC\&quot;,   \&quot;id\&quot;: \&quot;6082ab462936b4478117c6a0\&quot;,   \&quot;reference: \&quot;c9875708-4ba3-41c9-a4cd-271048b41b9a\&quot;, // ledger transaction reference   \&quot;txId\&quot;: \&quot;45af182a0ffab58e5ba32fee57b297b2260c6e23a1de5ddc76c7ee22d72dea99\&quot;,   \&quot;blockHash\&quot;: \&quot;45af182a0ffab58e5ba32fee57b297b2260c6e23a1de5ddc76c7ee22d72dea99\&quot;, // hash of the block, might not be present all the time   \&quot;blockHeight\&quot;: 12345,   \&quot;from\&quot;: \&quot;SENDER_ADDRESS\&quot;, // might not ebe present all the time, for UTXO based blockchains it&#x27;s not there   \&quot;to\&quot;: \&quot;RECIPIENT_ADDRESS_CONNECTED_TO_LEDGER_ACCOUNT\&quot;, // blockchain address of the recipient   \&quot;index\&quot;: 5 // for UTXO based chains (BTC,LTC,DOGE,BCH,ADA) this is the index of the output in the transaction }&lt;/pre&gt; 1 credit will be debited for every monitored account every day.&lt;/li&gt; &lt;li&gt;&lt;b&gt;ACCOUNT_PENDING_BLOCKCHAIN_TRANSACTION&lt;/b&gt; - Enable HTTP POST JSON notifications on incoming blockchain transactions on off-chain accounts. This web hook will be invoked, when the transaction appears for the first time in the block, but is stil not credited to the ledger account, because it does not have enough confirmations. This web hook is invoked only for BTC, LTC, DOGE and BCH accounts. Request body of the POST request will be JSON object with attributes:&lt;br/&gt; &lt;pre&gt;{   \&quot;date\&quot;: 1619176527481,   \&quot;amount\&quot;: \&quot;0.005\&quot;,   \&quot;currency\&quot;: \&quot;BTC\&quot;,   \&quot;id\&quot;: \&quot;6082ab462936b4478117c6a0\&quot;,   \&quot;reference: \&quot;c9875708-4ba3-41c9-a4cd-271048b41b9a\&quot;, // ledger transaction reference   \&quot;txId\&quot;: \&quot;45af182a0ffab58e5ba32fee57b297b2260c6e23a1de5ddc76c7ee22d72dea99\&quot;,   \&quot;blockHash\&quot;: \&quot;45af182a0ffab58e5ba32fee57b297b2260c6e23a1de5ddc76c7ee22d72dea99\&quot;, // hash of the block, might not be present all the time   \&quot;blockHeight\&quot;: 12345,   \&quot;from\&quot;: \&quot;SENDER_ADDRESS\&quot;, // might not ebe present all the time, for UTXO based blockchains it&#x27;s not there   \&quot;to\&quot;: \&quot;RECIPIENT_ADDRESS_CONNECTED_TO_LEDGER_ACCOUNT\&quot;, // blockchain address of the recipient   \&quot;index\&quot;: 5 // for UTXO based chains (BTC,LTC,DOGE,BCH,ADA) this is the index of the output in the transaction }&lt;/pre&gt; 1 credit will be debited for every monitored account every day.&lt;/li&gt; &lt;li&gt;&lt;b&gt;CUSTOMER_TRADE_MATCH&lt;/b&gt; - Enable HTTP POST JSON notifications on closed trade, which occurs on any customer account. This web hook will be invoked, when the open trade is filled and closed. Works also for the Trade Futures. If is triggered by the futures, bool field expiredWithoutMatch is present. Request body of the POST request will be JSON object with attributes:&lt;br/&gt; &lt;pre&gt;{   \&quot;created\&quot;: 1619176527481,   \&quot;amount\&quot;: \&quot;0.005\&quot;,   \&quot;price\&quot;: \&quot;0.02\&quot;,   \&quot;type\&quot;: \&quot;SELL\&quot;,   \&quot;pair\&quot;: \&quot;VC_CHF/VC_CHF3\&quot;,   \&quot;id\&quot;: \&quot;6082ab462936b4478117c6a0\&quot;, // id of the trade   \&quot;currency1AccountId\&quot;: \&quot;6082ab462936b4478117c6a0\&quot;,   \&quot;currency2AccountId\&quot;: \&quot;6082ab512936b4478117c6a2\&quot;,   \&quot;fee\&quot;: null,   \&quot;feeAccountId\&quot;: null,   \&quot;isMaker\&quot;: true,   \&quot;expiredWithoutMatch\&quot;: false }&lt;/pre&gt; 10 credits will be debited for every monitored customer every day.&lt;/li&gt; &lt;li&gt;&lt;b&gt;CUSTOMER_PARTIAL_TRADE_MATCH&lt;/b&gt; - Enable HTTP POST JSON notifications on partialy filled trade, which occurs on any customer account. This web hook will be invoked, when the open trade is partialy filled. Request body of the POST request will be JSON object with attributes:&lt;br/&gt; &lt;pre&gt;{   \&quot;created\&quot;: 1619176527481,   \&quot;amount\&quot;: \&quot;0.005\&quot;,   \&quot;price\&quot;: \&quot;0.02\&quot;,   \&quot;type\&quot;: \&quot;SELL\&quot;,   \&quot;pair\&quot;: \&quot;VC_CHF/VC_CHF3\&quot;,   \&quot;id\&quot;: \&quot;6082ab462936b4478117c6a0\&quot;, // id of the trade   \&quot;currency1AccountId\&quot;: \&quot;6082ab462936b4478117c6a0\&quot;,   \&quot;currency2AccountId\&quot;: \&quot;6082ab512936b4478117c6a2\&quot;,   \&quot;fee\&quot;: null,   \&quot;feeAccountId\&quot;: null,   \&quot;isMaker\&quot;: true,   \&quot;expiredWithoutMatch\&quot;: false }&lt;/pre&gt; 10 credits will be debited for every monitored customer every day.&lt;/li&gt; &lt;li&gt;&lt;b&gt;TRANSACTION_IN_THE_BLOCK&lt;/b&gt; - Enable HTTP POST JSON notifications on ledger &#x3D;&gt; blockchain transaction, when transaction is included in the block. This web hook will be invoked, when the outgoing transaction is included in the block. Request body of the POST request will be JSON object with attributes:&lt;br/&gt; &lt;pre&gt;   {     \&quot;txId\&quot;: \&quot;0x026f4f05b972c09279111da13dfd20d8df04eff436d7f604cd97b9ffaa690567\&quot;,     \&quot;reference\&quot;: \&quot;90270634-5b07-4fad-b17b-f82899953533\&quot;,     \&quot;accountId\&quot;: \&quot;6086ed0744c45b24d4fbd039\&quot;,     \&quot;currency\&quot;: \&quot;BSC\&quot;,     \&quot;withdrawalId\&quot;: \&quot;608fe5b73a893234ba379ab2\&quot;,     \&quot;address\&quot;: \&quot;0x8ce4e40889a13971681391AAd29E88eFAF91f784\&quot;,     \&quot;amount\&quot;: \&quot;0.1\&quot;,     \&quot;blockHeight\&quot;: 8517664   }&lt;/pre&gt; 10 credits will be debited every day, 1 credit for every included transaction notified via web hook.&lt;/li&gt; &lt;li&gt;&lt;b&gt;KMS_FAILED_TX&lt;/b&gt; - Enable HTTP POST JSON notifications on error during KMS signature process. This web hook will be invoked, when the Tatum KMS receives error during processing transactions. Request body of the POST request will be JSON object with attributes:&lt;br/&gt; &lt;pre&gt;{   \&quot;signatureId\&quot;: \&quot;6082ab462936b4478117c6a0\&quot;,   \&quot;error\&quot;: \&quot;Error message from the KMS\&quot; }&lt;/pre&gt; 10 credits will be debited every day.&lt;/li&gt; &lt;li&gt;&lt;b&gt;KMS_COMPLETED_TX&lt;/b&gt; - Enable HTTP POST JSON notifications on successful completion of KMS signature process. This web hook will be invoked, when the Tatum KMS sudessfully completes the signature during processing transactions. Request body of the POST request will be JSON object with attributes:&lt;br/&gt; &lt;pre&gt;{   \&quot;signatureId\&quot;: \&quot;6082ab462936b4478117c6a0\&quot;,   \&quot;txId\&quot;: \&quot;0x7bb7d3b90567e89f999f2e3d263bc3738a018dbbcfa9f5397678cf17cdf0235f\&quot; }&lt;/pre&gt; 10 credits will be debited every day.&lt;/li&gt; &lt;li&gt;&lt;b&gt;OFFCHAIN_WITHDRAWAL&lt;/b&gt; - Off-chain scanning of outgoing transactions for BTC, BCH, LTC, DOGE and ETH blockchains - by default addresses in registered for off-chain scanning are synchronized only against incoming transactions. By enabling this feature, off-chain accounts with connected blockchain addresses will be scanned also for outgoing transactions. This transaction wil be recorder to the ledger and account balance will be decreased - don&#x27;t use it if you perform your own transactions from the account to the blockchain.&lt;br/&gt; 5 credits will be debited for every address registered for scanning every day.&lt;/li&gt; &lt;li&gt;&lt;b&gt;ACCOUNT_BALANCE_LIMIT&lt;/b&gt; - Report with all account balances above desired limit.&lt;/li&gt; &lt;li&gt;&lt;b&gt;TRANSACTION_HISTORY_REPORT&lt;/b&gt; - Report with all ledger transactions for last X hours, where X is set by the subscription attribute as interval. Maximum number of transactions returned by this report is 20000. Transactions are obtained from the time of the invocation of the GET method to obtain report - X hours.&lt;/li&gt; &lt;/ul&gt; In case of unsuccesful web hook response status - other then 2xx - web hook is repeated 9 more times with exponential backoff. Parameters are T &#x3D; 15 * 2.7925^9, where 15 is interval in s, backoff rate is 2.7925 and 9 is current number of retries. Last web hook is fired after 24 hours approximatelly. After last failed attempt, web hook is deleted from our system. The 2xx response must be returned in 10 seconds after web hook is fired.&lt;br/&gt; Result of the operation is subscription ID, which can be used to cancel subscription or obtain additional data connected to it like reports.&lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [Id]
  describe 'create_subscription test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_subscription
  # Cancel existing subscription
  # &lt;h4&gt;1 credit for API call&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Cancel existing subscription.&lt;/p&gt;
  # @param id Subscription ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_subscription test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for disable_web_hook_hmac
  # Disable HMAC webhook digest
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Disable HMAC hash ID on the fired webhooks from Tatum API.&lt;/p&gt; 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'disable_web_hook_hmac test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for enable_web_hook_hmac
  # Enable HMAC webhook digest
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Enable HMAC hash ID on the fired webhooks from Tatum API. In order to make sure that a webhook is sent by us, we have the possibility to sign it with the HMAC Sha512 Hex algorithm.&lt;br/&gt; To verify that a webhook is sent by us &lt;ol&gt; &lt;li&gt;Get a webhook &lt;b&gt;x-payload-hash&lt;/b&gt; header value and payload as it is as a JSON file.&lt;/li&gt; &lt;li&gt;Convert the HTTP webhook body to stringify JSON without any spaces. In JavaScript, you would do it like this &lt;pre&gt;JSON.stringify(req.body)&lt;/pre&gt;&lt;/li&gt; &lt;li&gt;Perform calculations on your side to create a digest using Secret Key, webhook payload in bytes and HMAC SHA512 algorithm. JavaScript example: &lt;pre&gt;require(&#x27;crypto&#x27;).createHmac(&#x27;sha512&#x27;, hmacSecret).update(JSON.stringify(req.body)).digest(&#x27;base64&#x27;)&lt;/pre&gt;.&lt;/li&gt; &lt;li&gt;Compare x-payload-hash header value with calculated digest as a Base64 string.&lt;/li&gt;&lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'enable_web_hook_hmac test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_subscription_report
  # Obtain report for subscription
  # &lt;h4&gt;1 credit for API call. Based on the required report type, additional credits may be charged.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Obtain report from subscription based on its type. Following reports are supported: &lt;ul&gt; &lt;li&gt;&lt;b&gt;ACCOUNT_BALANCE_LIMIT&lt;/b&gt; - obtain list of all ledger accounts with account balance above the limit. 1 credit per 50 returned records is charged.&lt;/li&gt; &lt;li&gt;&lt;b&gt;TRANSACTION_HISTORY_REPORT&lt;/b&gt; - obtain list of all ledger transaction for last X hours from the time of invocation. 1 credit per 50 returned records is charged.&lt;/li&gt; &lt;/ul&gt;&lt;/p&gt; 
  # @param id Subscription ID
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20018]
  describe 'get_subscription_report test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_subscriptions
  # List all active subscriptions
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;List all active subscriptions.&lt;/p&gt;
  # @param page_size Max number of items per page is 50.
  # @param [Hash] opts the optional parameters
  # @option opts [BigDecimal] :offset Offset to obtain next page of the data.
  # @return [Array<Subscription>]
  describe 'get_subscriptions test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
