=begin
#Tatum API

## Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: 3.9.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.31
=end

module SwaggerClient
  class LedgerSubscriptionApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create new subscription
    # <h4>2 credits for API call. Every type of subscription has different credit pricing.</h4><br/> <p>Create new subscription as a HTTP Web Hook. Currently Tatum support multiple subscription types: <ul> <li><b>ACCOUNT_INCOMING_BLOCKCHAIN_TRANSACTION</b> - Enable HTTP POST JSON notifications on incoming blockchain transactions on off-chain accounts. This web hook will be invoked, when the transaction is credited to the ledger account. Transaction is credited, when it has sufficient amount of blockchain confirmations. For BTC, LTC, BCH, DOGE - 1 confirmation, ETH, ERC20 tokens, XLM, XRP, BNB - 1 confirmation. Request body of the POST request will be JSON object with attributes:<br/> <pre>{   \"date\": 1619176527481,   \"amount\": \"0.005\",   \"currency\": \"BTC\",   \"id\": \"6082ab462936b4478117c6a0\",   \"reference: \"c9875708-4ba3-41c9-a4cd-271048b41b9a\", // ledger transaction reference   \"txId\": \"45af182a0ffab58e5ba32fee57b297b2260c6e23a1de5ddc76c7ee22d72dea99\",   \"blockHash\": \"45af182a0ffab58e5ba32fee57b297b2260c6e23a1de5ddc76c7ee22d72dea99\", // hash of the block, might not be present all the time   \"blockHeight\": 12345,   \"from\": \"SENDER_ADDRESS\", // might not ebe present all the time, for UTXO based blockchains it's not there   \"to\": \"RECIPIENT_ADDRESS_CONNECTED_TO_LEDGER_ACCOUNT\", // blockchain address of the recipient   \"index\": 5 // for UTXO based chains (BTC,LTC,DOGE,BCH,ADA) this is the index of the output in the transaction }</pre> 1 credit will be debited for every monitored account every day.</li> <li><b>ACCOUNT_PENDING_BLOCKCHAIN_TRANSACTION</b> - Enable HTTP POST JSON notifications on incoming blockchain transactions on off-chain accounts. This web hook will be invoked, when the transaction appears for the first time in the block, but is stil not credited to the ledger account, because it does not have enough confirmations. This web hook is invoked only for BTC, LTC, DOGE and BCH accounts. Request body of the POST request will be JSON object with attributes:<br/> <pre>{   \"date\": 1619176527481,   \"amount\": \"0.005\",   \"currency\": \"BTC\",   \"id\": \"6082ab462936b4478117c6a0\",   \"reference: \"c9875708-4ba3-41c9-a4cd-271048b41b9a\", // ledger transaction reference   \"txId\": \"45af182a0ffab58e5ba32fee57b297b2260c6e23a1de5ddc76c7ee22d72dea99\",   \"blockHash\": \"45af182a0ffab58e5ba32fee57b297b2260c6e23a1de5ddc76c7ee22d72dea99\", // hash of the block, might not be present all the time   \"blockHeight\": 12345,   \"from\": \"SENDER_ADDRESS\", // might not ebe present all the time, for UTXO based blockchains it's not there   \"to\": \"RECIPIENT_ADDRESS_CONNECTED_TO_LEDGER_ACCOUNT\", // blockchain address of the recipient   \"index\": 5 // for UTXO based chains (BTC,LTC,DOGE,BCH,ADA) this is the index of the output in the transaction }</pre> 1 credit will be debited for every monitored account every day.</li> <li><b>CUSTOMER_TRADE_MATCH</b> - Enable HTTP POST JSON notifications on closed trade, which occurs on any customer account. This web hook will be invoked, when the open trade is filled and closed. Works also for the Trade Futures. If is triggered by the futures, bool field expiredWithoutMatch is present. Request body of the POST request will be JSON object with attributes:<br/> <pre>{   \"created\": 1619176527481,   \"amount\": \"0.005\",   \"price\": \"0.02\",   \"type\": \"SELL\",   \"pair\": \"VC_CHF/VC_CHF3\",   \"id\": \"6082ab462936b4478117c6a0\", // id of the trade   \"currency1AccountId\": \"6082ab462936b4478117c6a0\",   \"currency2AccountId\": \"6082ab512936b4478117c6a2\",   \"fee\": null,   \"feeAccountId\": null,   \"isMaker\": true,   \"expiredWithoutMatch\": false }</pre> 10 credits will be debited for every monitored customer every day.</li> <li><b>CUSTOMER_PARTIAL_TRADE_MATCH</b> - Enable HTTP POST JSON notifications on partialy filled trade, which occurs on any customer account. This web hook will be invoked, when the open trade is partialy filled. Request body of the POST request will be JSON object with attributes:<br/> <pre>{   \"created\": 1619176527481,   \"amount\": \"0.005\",   \"price\": \"0.02\",   \"type\": \"SELL\",   \"pair\": \"VC_CHF/VC_CHF3\",   \"id\": \"6082ab462936b4478117c6a0\", // id of the trade   \"currency1AccountId\": \"6082ab462936b4478117c6a0\",   \"currency2AccountId\": \"6082ab512936b4478117c6a2\",   \"fee\": null,   \"feeAccountId\": null,   \"isMaker\": true,   \"expiredWithoutMatch\": false }</pre> 10 credits will be debited for every monitored customer every day.</li> <li><b>TRANSACTION_IN_THE_BLOCK</b> - Enable HTTP POST JSON notifications on ledger => blockchain transaction, when transaction is included in the block. This web hook will be invoked, when the outgoing transaction is included in the block. Request body of the POST request will be JSON object with attributes:<br/> <pre>   {     \"txId\": \"0x026f4f05b972c09279111da13dfd20d8df04eff436d7f604cd97b9ffaa690567\",     \"reference\": \"90270634-5b07-4fad-b17b-f82899953533\",     \"accountId\": \"6086ed0744c45b24d4fbd039\",     \"currency\": \"BSC\",     \"withdrawalId\": \"608fe5b73a893234ba379ab2\",     \"address\": \"0x8ce4e40889a13971681391AAd29E88eFAF91f784\",     \"amount\": \"0.1\",     \"blockHeight\": 8517664   }</pre> 10 credits will be debited every day, 1 credit for every included transaction notified via web hook.</li> <li><b>KMS_FAILED_TX</b> - Enable HTTP POST JSON notifications on error during KMS signature process. This web hook will be invoked, when the Tatum KMS receives error during processing transactions. Request body of the POST request will be JSON object with attributes:<br/> <pre>{   \"signatureId\": \"6082ab462936b4478117c6a0\",   \"error\": \"Error message from the KMS\" }</pre> 10 credits will be debited every day.</li> <li><b>KMS_COMPLETED_TX</b> - Enable HTTP POST JSON notifications on successful completion of KMS signature process. This web hook will be invoked, when the Tatum KMS sudessfully completes the signature during processing transactions. Request body of the POST request will be JSON object with attributes:<br/> <pre>{   \"signatureId\": \"6082ab462936b4478117c6a0\",   \"txId\": \"0x7bb7d3b90567e89f999f2e3d263bc3738a018dbbcfa9f5397678cf17cdf0235f\" }</pre> 10 credits will be debited every day.</li> <li><b>OFFCHAIN_WITHDRAWAL</b> - Off-chain scanning of outgoing transactions for BTC, BCH, LTC, DOGE and ETH blockchains - by default addresses in registered for off-chain scanning are synchronized only against incoming transactions. By enabling this feature, off-chain accounts with connected blockchain addresses will be scanned also for outgoing transactions. This transaction wil be recorder to the ledger and account balance will be decreased - don't use it if you perform your own transactions from the account to the blockchain.<br/> 5 credits will be debited for every address registered for scanning every day.</li> <li><b>ACCOUNT_BALANCE_LIMIT</b> - Report with all account balances above desired limit.</li> <li><b>TRANSACTION_HISTORY_REPORT</b> - Report with all ledger transactions for last X hours, where X is set by the subscription attribute as interval. Maximum number of transactions returned by this report is 20000. Transactions are obtained from the time of the invocation of the GET method to obtain report - X hours.</li> </ul> In case of unsuccesful web hook response status - other then 2xx - web hook is repeated 9 more times with exponential backoff. Parameters are T = 15 * 2.7925^9, where 15 is interval in s, backoff rate is 2.7925 and 9 is current number of retries. Last web hook is fired after 24 hours approximatelly. After last failed attempt, web hook is deleted from our system. The 2xx response must be returned in 10 seconds after web hook is fired.<br/> Result of the operation is subscription ID, which can be used to cancel subscription or obtain additional data connected to it like reports.</p> 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Id]
    def create_subscription(body, opts = {})
      data, _status_code, _headers = create_subscription_with_http_info(body, opts)
      data
    end

    # Create new subscription
    # &lt;h4&gt;2 credits for API call. Every type of subscription has different credit pricing.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Create new subscription as a HTTP Web Hook. Currently Tatum support multiple subscription types: &lt;ul&gt; &lt;li&gt;&lt;b&gt;ACCOUNT_INCOMING_BLOCKCHAIN_TRANSACTION&lt;/b&gt; - Enable HTTP POST JSON notifications on incoming blockchain transactions on off-chain accounts. This web hook will be invoked, when the transaction is credited to the ledger account. Transaction is credited, when it has sufficient amount of blockchain confirmations. For BTC, LTC, BCH, DOGE - 1 confirmation, ETH, ERC20 tokens, XLM, XRP, BNB - 1 confirmation. Request body of the POST request will be JSON object with attributes:&lt;br/&gt; &lt;pre&gt;{   \&quot;date\&quot;: 1619176527481,   \&quot;amount\&quot;: \&quot;0.005\&quot;,   \&quot;currency\&quot;: \&quot;BTC\&quot;,   \&quot;id\&quot;: \&quot;6082ab462936b4478117c6a0\&quot;,   \&quot;reference: \&quot;c9875708-4ba3-41c9-a4cd-271048b41b9a\&quot;, // ledger transaction reference   \&quot;txId\&quot;: \&quot;45af182a0ffab58e5ba32fee57b297b2260c6e23a1de5ddc76c7ee22d72dea99\&quot;,   \&quot;blockHash\&quot;: \&quot;45af182a0ffab58e5ba32fee57b297b2260c6e23a1de5ddc76c7ee22d72dea99\&quot;, // hash of the block, might not be present all the time   \&quot;blockHeight\&quot;: 12345,   \&quot;from\&quot;: \&quot;SENDER_ADDRESS\&quot;, // might not ebe present all the time, for UTXO based blockchains it&#x27;s not there   \&quot;to\&quot;: \&quot;RECIPIENT_ADDRESS_CONNECTED_TO_LEDGER_ACCOUNT\&quot;, // blockchain address of the recipient   \&quot;index\&quot;: 5 // for UTXO based chains (BTC,LTC,DOGE,BCH,ADA) this is the index of the output in the transaction }&lt;/pre&gt; 1 credit will be debited for every monitored account every day.&lt;/li&gt; &lt;li&gt;&lt;b&gt;ACCOUNT_PENDING_BLOCKCHAIN_TRANSACTION&lt;/b&gt; - Enable HTTP POST JSON notifications on incoming blockchain transactions on off-chain accounts. This web hook will be invoked, when the transaction appears for the first time in the block, but is stil not credited to the ledger account, because it does not have enough confirmations. This web hook is invoked only for BTC, LTC, DOGE and BCH accounts. Request body of the POST request will be JSON object with attributes:&lt;br/&gt; &lt;pre&gt;{   \&quot;date\&quot;: 1619176527481,   \&quot;amount\&quot;: \&quot;0.005\&quot;,   \&quot;currency\&quot;: \&quot;BTC\&quot;,   \&quot;id\&quot;: \&quot;6082ab462936b4478117c6a0\&quot;,   \&quot;reference: \&quot;c9875708-4ba3-41c9-a4cd-271048b41b9a\&quot;, // ledger transaction reference   \&quot;txId\&quot;: \&quot;45af182a0ffab58e5ba32fee57b297b2260c6e23a1de5ddc76c7ee22d72dea99\&quot;,   \&quot;blockHash\&quot;: \&quot;45af182a0ffab58e5ba32fee57b297b2260c6e23a1de5ddc76c7ee22d72dea99\&quot;, // hash of the block, might not be present all the time   \&quot;blockHeight\&quot;: 12345,   \&quot;from\&quot;: \&quot;SENDER_ADDRESS\&quot;, // might not ebe present all the time, for UTXO based blockchains it&#x27;s not there   \&quot;to\&quot;: \&quot;RECIPIENT_ADDRESS_CONNECTED_TO_LEDGER_ACCOUNT\&quot;, // blockchain address of the recipient   \&quot;index\&quot;: 5 // for UTXO based chains (BTC,LTC,DOGE,BCH,ADA) this is the index of the output in the transaction }&lt;/pre&gt; 1 credit will be debited for every monitored account every day.&lt;/li&gt; &lt;li&gt;&lt;b&gt;CUSTOMER_TRADE_MATCH&lt;/b&gt; - Enable HTTP POST JSON notifications on closed trade, which occurs on any customer account. This web hook will be invoked, when the open trade is filled and closed. Works also for the Trade Futures. If is triggered by the futures, bool field expiredWithoutMatch is present. Request body of the POST request will be JSON object with attributes:&lt;br/&gt; &lt;pre&gt;{   \&quot;created\&quot;: 1619176527481,   \&quot;amount\&quot;: \&quot;0.005\&quot;,   \&quot;price\&quot;: \&quot;0.02\&quot;,   \&quot;type\&quot;: \&quot;SELL\&quot;,   \&quot;pair\&quot;: \&quot;VC_CHF/VC_CHF3\&quot;,   \&quot;id\&quot;: \&quot;6082ab462936b4478117c6a0\&quot;, // id of the trade   \&quot;currency1AccountId\&quot;: \&quot;6082ab462936b4478117c6a0\&quot;,   \&quot;currency2AccountId\&quot;: \&quot;6082ab512936b4478117c6a2\&quot;,   \&quot;fee\&quot;: null,   \&quot;feeAccountId\&quot;: null,   \&quot;isMaker\&quot;: true,   \&quot;expiredWithoutMatch\&quot;: false }&lt;/pre&gt; 10 credits will be debited for every monitored customer every day.&lt;/li&gt; &lt;li&gt;&lt;b&gt;CUSTOMER_PARTIAL_TRADE_MATCH&lt;/b&gt; - Enable HTTP POST JSON notifications on partialy filled trade, which occurs on any customer account. This web hook will be invoked, when the open trade is partialy filled. Request body of the POST request will be JSON object with attributes:&lt;br/&gt; &lt;pre&gt;{   \&quot;created\&quot;: 1619176527481,   \&quot;amount\&quot;: \&quot;0.005\&quot;,   \&quot;price\&quot;: \&quot;0.02\&quot;,   \&quot;type\&quot;: \&quot;SELL\&quot;,   \&quot;pair\&quot;: \&quot;VC_CHF/VC_CHF3\&quot;,   \&quot;id\&quot;: \&quot;6082ab462936b4478117c6a0\&quot;, // id of the trade   \&quot;currency1AccountId\&quot;: \&quot;6082ab462936b4478117c6a0\&quot;,   \&quot;currency2AccountId\&quot;: \&quot;6082ab512936b4478117c6a2\&quot;,   \&quot;fee\&quot;: null,   \&quot;feeAccountId\&quot;: null,   \&quot;isMaker\&quot;: true,   \&quot;expiredWithoutMatch\&quot;: false }&lt;/pre&gt; 10 credits will be debited for every monitored customer every day.&lt;/li&gt; &lt;li&gt;&lt;b&gt;TRANSACTION_IN_THE_BLOCK&lt;/b&gt; - Enable HTTP POST JSON notifications on ledger &#x3D;&gt; blockchain transaction, when transaction is included in the block. This web hook will be invoked, when the outgoing transaction is included in the block. Request body of the POST request will be JSON object with attributes:&lt;br/&gt; &lt;pre&gt;   {     \&quot;txId\&quot;: \&quot;0x026f4f05b972c09279111da13dfd20d8df04eff436d7f604cd97b9ffaa690567\&quot;,     \&quot;reference\&quot;: \&quot;90270634-5b07-4fad-b17b-f82899953533\&quot;,     \&quot;accountId\&quot;: \&quot;6086ed0744c45b24d4fbd039\&quot;,     \&quot;currency\&quot;: \&quot;BSC\&quot;,     \&quot;withdrawalId\&quot;: \&quot;608fe5b73a893234ba379ab2\&quot;,     \&quot;address\&quot;: \&quot;0x8ce4e40889a13971681391AAd29E88eFAF91f784\&quot;,     \&quot;amount\&quot;: \&quot;0.1\&quot;,     \&quot;blockHeight\&quot;: 8517664   }&lt;/pre&gt; 10 credits will be debited every day, 1 credit for every included transaction notified via web hook.&lt;/li&gt; &lt;li&gt;&lt;b&gt;KMS_FAILED_TX&lt;/b&gt; - Enable HTTP POST JSON notifications on error during KMS signature process. This web hook will be invoked, when the Tatum KMS receives error during processing transactions. Request body of the POST request will be JSON object with attributes:&lt;br/&gt; &lt;pre&gt;{   \&quot;signatureId\&quot;: \&quot;6082ab462936b4478117c6a0\&quot;,   \&quot;error\&quot;: \&quot;Error message from the KMS\&quot; }&lt;/pre&gt; 10 credits will be debited every day.&lt;/li&gt; &lt;li&gt;&lt;b&gt;KMS_COMPLETED_TX&lt;/b&gt; - Enable HTTP POST JSON notifications on successful completion of KMS signature process. This web hook will be invoked, when the Tatum KMS sudessfully completes the signature during processing transactions. Request body of the POST request will be JSON object with attributes:&lt;br/&gt; &lt;pre&gt;{   \&quot;signatureId\&quot;: \&quot;6082ab462936b4478117c6a0\&quot;,   \&quot;txId\&quot;: \&quot;0x7bb7d3b90567e89f999f2e3d263bc3738a018dbbcfa9f5397678cf17cdf0235f\&quot; }&lt;/pre&gt; 10 credits will be debited every day.&lt;/li&gt; &lt;li&gt;&lt;b&gt;OFFCHAIN_WITHDRAWAL&lt;/b&gt; - Off-chain scanning of outgoing transactions for BTC, BCH, LTC, DOGE and ETH blockchains - by default addresses in registered for off-chain scanning are synchronized only against incoming transactions. By enabling this feature, off-chain accounts with connected blockchain addresses will be scanned also for outgoing transactions. This transaction wil be recorder to the ledger and account balance will be decreased - don&#x27;t use it if you perform your own transactions from the account to the blockchain.&lt;br/&gt; 5 credits will be debited for every address registered for scanning every day.&lt;/li&gt; &lt;li&gt;&lt;b&gt;ACCOUNT_BALANCE_LIMIT&lt;/b&gt; - Report with all account balances above desired limit.&lt;/li&gt; &lt;li&gt;&lt;b&gt;TRANSACTION_HISTORY_REPORT&lt;/b&gt; - Report with all ledger transactions for last X hours, where X is set by the subscription attribute as interval. Maximum number of transactions returned by this report is 20000. Transactions are obtained from the time of the invocation of the GET method to obtain report - X hours.&lt;/li&gt; &lt;/ul&gt; In case of unsuccesful web hook response status - other then 2xx - web hook is repeated 9 more times with exponential backoff. Parameters are T &#x3D; 15 * 2.7925^9, where 15 is interval in s, backoff rate is 2.7925 and 9 is current number of retries. Last web hook is fired after 24 hours approximatelly. After last failed attempt, web hook is deleted from our system. The 2xx response must be returned in 10 seconds after web hook is fired.&lt;br/&gt; Result of the operation is subscription ID, which can be used to cancel subscription or obtain additional data connected to it like reports.&lt;/p&gt; 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Id, Integer, Hash)>] Id data, response status code and response headers
    def create_subscription_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LedgerSubscriptionApi.create_subscription ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling LedgerSubscriptionApi.create_subscription"
      end
      # resource path
      local_var_path = '/v3/subscription'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'Id' 

      auth_names = opts[:auth_names] || ['X-Api-Key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LedgerSubscriptionApi#create_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Cancel existing subscription
    # <h4>1 credit for API call</h4><br/><p>Cancel existing subscription.</p>
    # @param id Subscription ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_subscription(id, opts = {})
      delete_subscription_with_http_info(id, opts)
      nil
    end

    # Cancel existing subscription
    # &lt;h4&gt;1 credit for API call&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Cancel existing subscription.&lt;/p&gt;
    # @param id Subscription ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_subscription_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LedgerSubscriptionApi.delete_subscription ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling LedgerSubscriptionApi.delete_subscription"
      end
      # resource path
      local_var_path = '/v3/subscription/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || ['X-Api-Key']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LedgerSubscriptionApi#delete_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Disable HMAC webhook digest
    # <h4>2 credits per API call.</h4><br/><p>Disable HMAC hash ID on the fired webhooks from Tatum API.</p> 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def disable_web_hook_hmac(opts = {})
      disable_web_hook_hmac_with_http_info(opts)
      nil
    end

    # Disable HMAC webhook digest
    # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Disable HMAC hash ID on the fired webhooks from Tatum API.&lt;/p&gt; 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def disable_web_hook_hmac_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LedgerSubscriptionApi.disable_web_hook_hmac ...'
      end
      # resource path
      local_var_path = '/v3/subscription'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || ['X-Api-Key']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LedgerSubscriptionApi#disable_web_hook_hmac\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Enable HMAC webhook digest
    # <h4>2 credits per API call.</h4><br/><p>Enable HMAC hash ID on the fired webhooks from Tatum API. In order to make sure that a webhook is sent by us, we have the possibility to sign it with the HMAC Sha512 Hex algorithm.<br/> To verify that a webhook is sent by us <ol> <li>Get a webhook <b>x-payload-hash</b> header value and payload as it is as a JSON file.</li> <li>Convert the HTTP webhook body to stringify JSON without any spaces. In JavaScript, you would do it like this <pre>JSON.stringify(req.body)</pre></li> <li>Perform calculations on your side to create a digest using Secret Key, webhook payload in bytes and HMAC SHA512 algorithm. JavaScript example: <pre>require('crypto').createHmac('sha512', hmacSecret).update(JSON.stringify(req.body)).digest('base64')</pre>.</li> <li>Compare x-payload-hash header value with calculated digest as a Base64 string.</li></p> 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def enable_web_hook_hmac(body, opts = {})
      enable_web_hook_hmac_with_http_info(body, opts)
      nil
    end

    # Enable HMAC webhook digest
    # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Enable HMAC hash ID on the fired webhooks from Tatum API. In order to make sure that a webhook is sent by us, we have the possibility to sign it with the HMAC Sha512 Hex algorithm.&lt;br/&gt; To verify that a webhook is sent by us &lt;ol&gt; &lt;li&gt;Get a webhook &lt;b&gt;x-payload-hash&lt;/b&gt; header value and payload as it is as a JSON file.&lt;/li&gt; &lt;li&gt;Convert the HTTP webhook body to stringify JSON without any spaces. In JavaScript, you would do it like this &lt;pre&gt;JSON.stringify(req.body)&lt;/pre&gt;&lt;/li&gt; &lt;li&gt;Perform calculations on your side to create a digest using Secret Key, webhook payload in bytes and HMAC SHA512 algorithm. JavaScript example: &lt;pre&gt;require(&#x27;crypto&#x27;).createHmac(&#x27;sha512&#x27;, hmacSecret).update(JSON.stringify(req.body)).digest(&#x27;base64&#x27;)&lt;/pre&gt;.&lt;/li&gt; &lt;li&gt;Compare x-payload-hash header value with calculated digest as a Base64 string.&lt;/li&gt;&lt;/p&gt; 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def enable_web_hook_hmac_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LedgerSubscriptionApi.enable_web_hook_hmac ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling LedgerSubscriptionApi.enable_web_hook_hmac"
      end
      # resource path
      local_var_path = '/v3/subscription'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || ['X-Api-Key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LedgerSubscriptionApi#enable_web_hook_hmac\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Obtain report for subscription
    # <h4>1 credit for API call. Based on the required report type, additional credits may be charged.</h4><br/> <p>Obtain report from subscription based on its type. Following reports are supported: <ul> <li><b>ACCOUNT_BALANCE_LIMIT</b> - obtain list of all ledger accounts with account balance above the limit. 1 credit per 50 returned records is charged.</li> <li><b>TRANSACTION_HISTORY_REPORT</b> - obtain list of all ledger transaction for last X hours from the time of invocation. 1 credit per 50 returned records is charged.</li> </ul></p> 
    # @param id Subscription ID
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20018]
    def get_subscription_report(id, opts = {})
      data, _status_code, _headers = get_subscription_report_with_http_info(id, opts)
      data
    end

    # Obtain report for subscription
    # &lt;h4&gt;1 credit for API call. Based on the required report type, additional credits may be charged.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Obtain report from subscription based on its type. Following reports are supported: &lt;ul&gt; &lt;li&gt;&lt;b&gt;ACCOUNT_BALANCE_LIMIT&lt;/b&gt; - obtain list of all ledger accounts with account balance above the limit. 1 credit per 50 returned records is charged.&lt;/li&gt; &lt;li&gt;&lt;b&gt;TRANSACTION_HISTORY_REPORT&lt;/b&gt; - obtain list of all ledger transaction for last X hours from the time of invocation. 1 credit per 50 returned records is charged.&lt;/li&gt; &lt;/ul&gt;&lt;/p&gt; 
    # @param id Subscription ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20018, Integer, Hash)>] InlineResponse20018 data, response status code and response headers
    def get_subscription_report_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LedgerSubscriptionApi.get_subscription_report ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling LedgerSubscriptionApi.get_subscription_report"
      end
      # resource path
      local_var_path = '/v3/subscription/report/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'InlineResponse20018' 

      auth_names = opts[:auth_names] || ['X-Api-Key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LedgerSubscriptionApi#get_subscription_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List all active subscriptions
    # <h4>1 credit per API call.</h4><br/><p>List all active subscriptions.</p>
    # @param page_size Max number of items per page is 50.
    # @param [Hash] opts the optional parameters
    # @option opts [BigDecimal] :offset Offset to obtain next page of the data.
    # @return [Array<Subscription>]
    def get_subscriptions(page_size, opts = {})
      data, _status_code, _headers = get_subscriptions_with_http_info(page_size, opts)
      data
    end

    # List all active subscriptions
    # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;List all active subscriptions.&lt;/p&gt;
    # @param page_size Max number of items per page is 50.
    # @param [Hash] opts the optional parameters
    # @option opts [BigDecimal] :offset Offset to obtain next page of the data.
    # @return [Array<(Array<Subscription>, Integer, Hash)>] Array<Subscription> data, response status code and response headers
    def get_subscriptions_with_http_info(page_size, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LedgerSubscriptionApi.get_subscriptions ...'
      end
      # verify the required parameter 'page_size' is set
      if @api_client.config.client_side_validation && page_size.nil?
        fail ArgumentError, "Missing the required parameter 'page_size' when calling LedgerSubscriptionApi.get_subscriptions"
      end
      # resource path
      local_var_path = '/v3/subscription'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'pageSize'] = page_size
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Array<Subscription>' 

      auth_names = opts[:auth_names] || ['X-Api-Key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LedgerSubscriptionApi#get_subscriptions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
