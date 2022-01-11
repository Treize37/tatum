=begin
#Tatum API

## Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: 3.9.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.31
=end

module Tatum
  class BlockchainQuorumApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Send Quorum transaction
    # <h4>2 credits per API call.</h4><br/> <p>Send Quorum transaction account to account.<br/><br/> This operation can be used to send native assets between two accounts or to store data into the blockchain.</p> 
    # @param body 
    # @param x_quorum_endpoint URL of the Quorum network
    # @param [Hash] opts the optional parameters
    # @return [TransactionHash]
    def quorum_blockchain_transfer(body, x_quorum_endpoint, opts = {})
      data, _status_code, _headers = quorum_blockchain_transfer_with_http_info(body, x_quorum_endpoint, opts)
      data
    end

    # Send Quorum transaction
    # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Send Quorum transaction account to account.&lt;br/&gt;&lt;br/&gt; This operation can be used to send native assets between two accounts or to store data into the blockchain.&lt;/p&gt; 
    # @param body 
    # @param x_quorum_endpoint URL of the Quorum network
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionHash, Integer, Hash)>] TransactionHash data, response status code and response headers
    def quorum_blockchain_transfer_with_http_info(body, x_quorum_endpoint, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BlockchainQuorumApi.quorum_blockchain_transfer ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling BlockchainQuorumApi.quorum_blockchain_transfer"
      end
      # verify the required parameter 'x_quorum_endpoint' is set
      if @api_client.config.client_side_validation && x_quorum_endpoint.nil?
        fail ArgumentError, "Missing the required parameter 'x_quorum_endpoint' when calling BlockchainQuorumApi.quorum_blockchain_transfer"
      end
      # resource path
      local_var_path = '/v3/quorum/transaction'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'x-quorum-endpoint'] = x_quorum_endpoint

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'TransactionHash' 

      auth_names = opts[:auth_names] || ['X-Api-Key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BlockchainQuorumApi#quorum_blockchain_transfer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Generate Quorum Account
    # <h4>2 credit per API call.</h4><br/> <p>Generate address account. Account must be protected with the password. To start using account, it must be unlocked via <a href=\"#operation/QuorumUnlockAccount\" target=\"_blank\">Unlock Quorum Account method</a>.</p> 
    # @param body 
    # @param x_quorum_endpoint URL of the Quorum network
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20078]
    def quorum_generate_account(body, x_quorum_endpoint, opts = {})
      data, _status_code, _headers = quorum_generate_account_with_http_info(body, x_quorum_endpoint, opts)
      data
    end

    # Generate Quorum Account
    # &lt;h4&gt;2 credit per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Generate address account. Account must be protected with the password. To start using account, it must be unlocked via &lt;a href&#x3D;\&quot;#operation/QuorumUnlockAccount\&quot; target&#x3D;\&quot;_blank\&quot;&gt;Unlock Quorum Account method&lt;/a&gt;.&lt;/p&gt; 
    # @param body 
    # @param x_quorum_endpoint URL of the Quorum network
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20078, Integer, Hash)>] InlineResponse20078 data, response status code and response headers
    def quorum_generate_account_with_http_info(body, x_quorum_endpoint, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BlockchainQuorumApi.quorum_generate_account ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling BlockchainQuorumApi.quorum_generate_account"
      end
      # verify the required parameter 'x_quorum_endpoint' is set
      if @api_client.config.client_side_validation && x_quorum_endpoint.nil?
        fail ArgumentError, "Missing the required parameter 'x_quorum_endpoint' when calling BlockchainQuorumApi.quorum_generate_account"
      end
      # resource path
      local_var_path = '/v3/quorum/account'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'x-quorum-endpoint'] = x_quorum_endpoint

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'InlineResponse20078' 

      auth_names = opts[:auth_names] || ['X-Api-Key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BlockchainQuorumApi#quorum_generate_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Quorum block by hash
    # <h4>1 credit per API call.</h4><br/><p>Get Quorum block by block hash or block number.</p>
    # @param x_quorum_endpoint URL of the Quorum network
    # @param hash Block hash or block number
    # @param [Hash] opts the optional parameters
    # @return [QuorumBlock]
    def quorum_get_block(x_quorum_endpoint, hash, opts = {})
      data, _status_code, _headers = quorum_get_block_with_http_info(x_quorum_endpoint, hash, opts)
      data
    end

    # Get Quorum block by hash
    # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Get Quorum block by block hash or block number.&lt;/p&gt;
    # @param x_quorum_endpoint URL of the Quorum network
    # @param hash Block hash or block number
    # @param [Hash] opts the optional parameters
    # @return [Array<(QuorumBlock, Integer, Hash)>] QuorumBlock data, response status code and response headers
    def quorum_get_block_with_http_info(x_quorum_endpoint, hash, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BlockchainQuorumApi.quorum_get_block ...'
      end
      # verify the required parameter 'x_quorum_endpoint' is set
      if @api_client.config.client_side_validation && x_quorum_endpoint.nil?
        fail ArgumentError, "Missing the required parameter 'x_quorum_endpoint' when calling BlockchainQuorumApi.quorum_get_block"
      end
      # verify the required parameter 'hash' is set
      if @api_client.config.client_side_validation && hash.nil?
        fail ArgumentError, "Missing the required parameter 'hash' when calling BlockchainQuorumApi.quorum_get_block"
      end
      # resource path
      local_var_path = '/v3/quorum/block/{hash}'.sub('{' + 'hash' + '}', hash.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'x-quorum-endpoint'] = x_quorum_endpoint

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'QuorumBlock' 

      auth_names = opts[:auth_names] || ['X-Api-Key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BlockchainQuorumApi#quorum_get_block\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get current block number
    # <h4>1 credit per API call.</h4><br/><p>Get Quorum current block number. This is the number of the latest block in the blockchain.</p>
    # @param x_quorum_endpoint URL of the Quorum network
    # @param [Hash] opts the optional parameters
    # @return [BigDecimal]
    def quorum_get_current_block(x_quorum_endpoint, opts = {})
      data, _status_code, _headers = quorum_get_current_block_with_http_info(x_quorum_endpoint, opts)
      data
    end

    # Get current block number
    # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Get Quorum current block number. This is the number of the latest block in the blockchain.&lt;/p&gt;
    # @param x_quorum_endpoint URL of the Quorum network
    # @param [Hash] opts the optional parameters
    # @return [Array<(BigDecimal, Integer, Hash)>] BigDecimal data, response status code and response headers
    def quorum_get_current_block_with_http_info(x_quorum_endpoint, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BlockchainQuorumApi.quorum_get_current_block ...'
      end
      # verify the required parameter 'x_quorum_endpoint' is set
      if @api_client.config.client_side_validation && x_quorum_endpoint.nil?
        fail ArgumentError, "Missing the required parameter 'x_quorum_endpoint' when calling BlockchainQuorumApi.quorum_get_current_block"
      end
      # resource path
      local_var_path = '/v3/quorum/block/current'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'x-quorum-endpoint'] = x_quorum_endpoint

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'BigDecimal' 

      auth_names = opts[:auth_names] || ['X-Api-Key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BlockchainQuorumApi#quorum_get_current_block\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Quorum Transaction
    # <h4>1 credit per API call.</h4><br/><p>Get Quorum transaction by transaction hash.</p>
    # @param x_quorum_endpoint URL of the Quorum network
    # @param hash Transaction hash
    # @param [Hash] opts the optional parameters
    # @return [QuorumTx]
    def quorum_get_transaction(x_quorum_endpoint, hash, opts = {})
      data, _status_code, _headers = quorum_get_transaction_with_http_info(x_quorum_endpoint, hash, opts)
      data
    end

    # Get Quorum Transaction
    # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Get Quorum transaction by transaction hash.&lt;/p&gt;
    # @param x_quorum_endpoint URL of the Quorum network
    # @param hash Transaction hash
    # @param [Hash] opts the optional parameters
    # @return [Array<(QuorumTx, Integer, Hash)>] QuorumTx data, response status code and response headers
    def quorum_get_transaction_with_http_info(x_quorum_endpoint, hash, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BlockchainQuorumApi.quorum_get_transaction ...'
      end
      # verify the required parameter 'x_quorum_endpoint' is set
      if @api_client.config.client_side_validation && x_quorum_endpoint.nil?
        fail ArgumentError, "Missing the required parameter 'x_quorum_endpoint' when calling BlockchainQuorumApi.quorum_get_transaction"
      end
      # verify the required parameter 'hash' is set
      if @api_client.config.client_side_validation && hash.nil?
        fail ArgumentError, "Missing the required parameter 'hash' when calling BlockchainQuorumApi.quorum_get_transaction"
      end
      # resource path
      local_var_path = '/v3/quorum/transaction/{hash}'.sub('{' + 'hash' + '}', hash.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'x-quorum-endpoint'] = x_quorum_endpoint

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'QuorumTx' 

      auth_names = opts[:auth_names] || ['X-Api-Key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BlockchainQuorumApi#quorum_get_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Quorum transaction receipt
    # <h4>1 credit per API call.</h4><br/> <p>Get Quorum Transaction Receipt by transaction hash. Transaction receipt is available only after transaction is included in the block and contains information about paid fee or created contract address and much more.</p> 
    # @param x_quorum_endpoint URL of the Quorum network
    # @param hash Transaction hash
    # @param [Hash] opts the optional parameters
    # @return [QuorumTx]
    def quorum_get_transaction_receipt(x_quorum_endpoint, hash, opts = {})
      data, _status_code, _headers = quorum_get_transaction_receipt_with_http_info(x_quorum_endpoint, hash, opts)
      data
    end

    # Get Quorum transaction receipt
    # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Get Quorum Transaction Receipt by transaction hash. Transaction receipt is available only after transaction is included in the block and contains information about paid fee or created contract address and much more.&lt;/p&gt; 
    # @param x_quorum_endpoint URL of the Quorum network
    # @param hash Transaction hash
    # @param [Hash] opts the optional parameters
    # @return [Array<(QuorumTx, Integer, Hash)>] QuorumTx data, response status code and response headers
    def quorum_get_transaction_receipt_with_http_info(x_quorum_endpoint, hash, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BlockchainQuorumApi.quorum_get_transaction_receipt ...'
      end
      # verify the required parameter 'x_quorum_endpoint' is set
      if @api_client.config.client_side_validation && x_quorum_endpoint.nil?
        fail ArgumentError, "Missing the required parameter 'x_quorum_endpoint' when calling BlockchainQuorumApi.quorum_get_transaction_receipt"
      end
      # verify the required parameter 'hash' is set
      if @api_client.config.client_side_validation && hash.nil?
        fail ArgumentError, "Missing the required parameter 'hash' when calling BlockchainQuorumApi.quorum_get_transaction_receipt"
      end
      # resource path
      local_var_path = '/v3/quorum/transaction/{hash}/receipt'.sub('{' + 'hash' + '}', hash.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'x-quorum-endpoint'] = x_quorum_endpoint

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'QuorumTx' 

      auth_names = opts[:auth_names] || ['X-Api-Key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BlockchainQuorumApi#quorum_get_transaction_receipt\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Unlock Quorum Account
    # <h4>2 credit per API call.</h4><br/> <p>Unlock account.</p> 
    # @param body 
    # @param x_quorum_endpoint URL of the Quorum network
    # @param address Account address
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20079]
    def quorum_unlock_account(body, x_quorum_endpoint, address, opts = {})
      data, _status_code, _headers = quorum_unlock_account_with_http_info(body, x_quorum_endpoint, address, opts)
      data
    end

    # Unlock Quorum Account
    # &lt;h4&gt;2 credit per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Unlock account.&lt;/p&gt; 
    # @param body 
    # @param x_quorum_endpoint URL of the Quorum network
    # @param address Account address
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20079, Integer, Hash)>] InlineResponse20079 data, response status code and response headers
    def quorum_unlock_account_with_http_info(body, x_quorum_endpoint, address, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BlockchainQuorumApi.quorum_unlock_account ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling BlockchainQuorumApi.quorum_unlock_account"
      end
      # verify the required parameter 'x_quorum_endpoint' is set
      if @api_client.config.client_side_validation && x_quorum_endpoint.nil?
        fail ArgumentError, "Missing the required parameter 'x_quorum_endpoint' when calling BlockchainQuorumApi.quorum_unlock_account"
      end
      # verify the required parameter 'address' is set
      if @api_client.config.client_side_validation && address.nil?
        fail ArgumentError, "Missing the required parameter 'address' when calling BlockchainQuorumApi.quorum_unlock_account"
      end
      # resource path
      local_var_path = '/v3/quorum/account/{address}/unlock'.sub('{' + 'address' + '}', address.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'x-quorum-endpoint'] = x_quorum_endpoint

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'InlineResponse20079' 

      auth_names = opts[:auth_names] || ['X-Api-Key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BlockchainQuorumApi#quorum_unlock_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Web3 HTTP driver
    # <h4>2 credits per API call.</h4><br/> <p>Use this endpoint URL as a http-based web3 driver to connect directly to the Quorum node. To learn more about Quorum Web3, please visit <a href=\"https://ethereum.org/en/developers/\" target=\"_blank\">Ethereum developer's guide.</a></p> 
    # @param body 
    # @param x_quorum_endpoint URL of the Quorum network
    # @param x_api_key Tatum X-API-Key used for authorization.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def quorum_web3_driver(body, x_quorum_endpoint, x_api_key, opts = {})
      data, _status_code, _headers = quorum_web3_driver_with_http_info(body, x_quorum_endpoint, x_api_key, opts)
      data
    end

    # Web3 HTTP driver
    # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Use this endpoint URL as a http-based web3 driver to connect directly to the Quorum node. To learn more about Quorum Web3, please visit &lt;a href&#x3D;\&quot;https://ethereum.org/en/developers/\&quot; target&#x3D;\&quot;_blank\&quot;&gt;Ethereum developer&#x27;s guide.&lt;/a&gt;&lt;/p&gt; 
    # @param body 
    # @param x_quorum_endpoint URL of the Quorum network
    # @param x_api_key Tatum X-API-Key used for authorization.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def quorum_web3_driver_with_http_info(body, x_quorum_endpoint, x_api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BlockchainQuorumApi.quorum_web3_driver ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling BlockchainQuorumApi.quorum_web3_driver"
      end
      # verify the required parameter 'x_quorum_endpoint' is set
      if @api_client.config.client_side_validation && x_quorum_endpoint.nil?
        fail ArgumentError, "Missing the required parameter 'x_quorum_endpoint' when calling BlockchainQuorumApi.quorum_web3_driver"
      end
      # verify the required parameter 'x_api_key' is set
      if @api_client.config.client_side_validation && x_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_api_key' when calling BlockchainQuorumApi.quorum_web3_driver"
      end
      # resource path
      local_var_path = '/v3/quorum/web3/{xApiKey}'.sub('{' + 'xApiKey' + '}', x_api_key.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'x-quorum-endpoint'] = x_quorum_endpoint

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'Object' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BlockchainQuorumApi#quorum_web3_driver\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end