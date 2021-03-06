=begin
#Tatum API

## Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: 3.9.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.31
=end

module Tatum
  class BlockchainBinanceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Send Binance / Binance Token from account to account
    # <h4>10 credits per API call.</h4><br/> <p>Send Binance or Binance Token token from account to account.<br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production,  <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request.  Alternatively, using the Tatum client library for supported languages. </p> 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [TransactionHash]
    def bnb_blockchain_transfer(body, opts = {})
      data, _status_code, _headers = bnb_blockchain_transfer_with_http_info(body, opts)
      data
    end

    # Send Binance / Binance Token from account to account
    # &lt;h4&gt;10 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Send Binance or Binance Token token from account to account.&lt;br/&gt;&lt;br/&gt; This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it&#x27;s own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production,  &lt;a href&#x3D;\&quot;https://github.com/tatumio/tatum-kms\&quot; target&#x3D;\&quot;_blank\&quot;&gt;Tatum KMS&lt;/a&gt; should be used for the highest security standards, and signatureId should be present in the request.  Alternatively, using the Tatum client library for supported languages. &lt;/p&gt; 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionHash, Integer, Hash)>] TransactionHash data, response status code and response headers
    def bnb_blockchain_transfer_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BlockchainBinanceApi.bnb_blockchain_transfer ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling BlockchainBinanceApi.bnb_blockchain_transfer"
      end
      # resource path
      local_var_path = '/v3/bnb/transaction'

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
        @api_client.config.logger.debug "API called: BlockchainBinanceApi#bnb_blockchain_transfer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Broadcast signed BNB transaction
    # <h4>5 credits per API call.</h4><br/> <p>Broadcast signed transaction to Binance blockchain. This method is used internally from Tatum Middleware or Tatum client libraries. It is possible to create custom signing mechanism and use this method only for broadcasting data to the blockchian.</p> 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [TransactionHash]
    def bnb_broadcast(body, opts = {})
      data, _status_code, _headers = bnb_broadcast_with_http_info(body, opts)
      data
    end

    # Broadcast signed BNB transaction
    # &lt;h4&gt;5 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Broadcast signed transaction to Binance blockchain. This method is used internally from Tatum Middleware or Tatum client libraries. It is possible to create custom signing mechanism and use this method only for broadcasting data to the blockchian.&lt;/p&gt; 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionHash, Integer, Hash)>] TransactionHash data, response status code and response headers
    def bnb_broadcast_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BlockchainBinanceApi.bnb_broadcast ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling BlockchainBinanceApi.bnb_broadcast"
      end
      # resource path
      local_var_path = '/v3/bnb/broadcast'

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
        @api_client.config.logger.debug "API called: BlockchainBinanceApi#bnb_broadcast\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Generate Binance wallet
    # <h4>5 credits per API call.</h4><br/> <p>Generate BNB account. Tatum does not support HD wallet for BNB, only specific address and private key can be generated.</p> 
    # @param [Hash] opts the optional parameters
    # @return [BnbWallet]
    def bnb_generate_wallet(opts = {})
      data, _status_code, _headers = bnb_generate_wallet_with_http_info(opts)
      data
    end

    # Generate Binance wallet
    # &lt;h4&gt;5 credits per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Generate BNB account. Tatum does not support HD wallet for BNB, only specific address and private key can be generated.&lt;/p&gt; 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BnbWallet, Integer, Hash)>] BnbWallet data, response status code and response headers
    def bnb_generate_wallet_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BlockchainBinanceApi.bnb_generate_wallet ...'
      end
      # resource path
      local_var_path = '/v3/bnb/account'

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

      return_type = opts[:return_type] || 'BnbWallet' 

      auth_names = opts[:auth_names] || ['X-Api-Key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BlockchainBinanceApi#bnb_generate_wallet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Binance Account
    # <h4>5 credits per API call.</h4><br/><p>Get Binance Account Detail by address.</p>
    # @param address Account address
    # @param [Hash] opts the optional parameters
    # @return [BnbAccount]
    def bnb_get_account(address, opts = {})
      data, _status_code, _headers = bnb_get_account_with_http_info(address, opts)
      data
    end

    # Get Binance Account
    # &lt;h4&gt;5 credits per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Get Binance Account Detail by address.&lt;/p&gt;
    # @param address Account address
    # @param [Hash] opts the optional parameters
    # @return [Array<(BnbAccount, Integer, Hash)>] BnbAccount data, response status code and response headers
    def bnb_get_account_with_http_info(address, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BlockchainBinanceApi.bnb_get_account ...'
      end
      # verify the required parameter 'address' is set
      if @api_client.config.client_side_validation && address.nil?
        fail ArgumentError, "Missing the required parameter 'address' when calling BlockchainBinanceApi.bnb_get_account"
      end
      # resource path
      local_var_path = '/v3/bnb/account/{address}'.sub('{' + 'address' + '}', address.to_s)

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

      return_type = opts[:return_type] || 'BnbAccount' 

      auth_names = opts[:auth_names] || ['X-Api-Key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BlockchainBinanceApi#bnb_get_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Binance Transactions in Block
    # <h4>5 credits per API call.</h4><br/><p>Get Transactions in block by block height.</p>
    # @param height Block height
    # @param [Hash] opts the optional parameters
    # @return [BnbBlock]
    def bnb_get_block(height, opts = {})
      data, _status_code, _headers = bnb_get_block_with_http_info(height, opts)
      data
    end

    # Get Binance Transactions in Block
    # &lt;h4&gt;5 credits per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Get Transactions in block by block height.&lt;/p&gt;
    # @param height Block height
    # @param [Hash] opts the optional parameters
    # @return [Array<(BnbBlock, Integer, Hash)>] BnbBlock data, response status code and response headers
    def bnb_get_block_with_http_info(height, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BlockchainBinanceApi.bnb_get_block ...'
      end
      # verify the required parameter 'height' is set
      if @api_client.config.client_side_validation && height.nil?
        fail ArgumentError, "Missing the required parameter 'height' when calling BlockchainBinanceApi.bnb_get_block"
      end
      # resource path
      local_var_path = '/v3/bnb/block/{height}'.sub('{' + 'height' + '}', height.to_s)

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

      return_type = opts[:return_type] || 'BnbBlock' 

      auth_names = opts[:auth_names] || ['X-Api-Key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BlockchainBinanceApi#bnb_get_block\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Binance current block
    # <h4>5 credits per API call.</h4><br/><p>Get Binance current block number.</p>
    # @param [Hash] opts the optional parameters
    # @return [BigDecimal]
    def bnb_get_current_block(opts = {})
      data, _status_code, _headers = bnb_get_current_block_with_http_info(opts)
      data
    end

    # Get Binance current block
    # &lt;h4&gt;5 credits per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Get Binance current block number.&lt;/p&gt;
    # @param [Hash] opts the optional parameters
    # @return [Array<(BigDecimal, Integer, Hash)>] BigDecimal data, response status code and response headers
    def bnb_get_current_block_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BlockchainBinanceApi.bnb_get_current_block ...'
      end
      # resource path
      local_var_path = '/v3/bnb/block/current'

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
        @api_client.config.logger.debug "API called: BlockchainBinanceApi#bnb_get_current_block\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Binance Transaction
    # <h4>5 credits per API call.</h4><br/><p>Get Binance Transaction by transaction hash.</p>
    # @param hash Transaction hash
    # @param [Hash] opts the optional parameters
    # @return [BnbTx]
    def bnb_get_transaction(hash, opts = {})
      data, _status_code, _headers = bnb_get_transaction_with_http_info(hash, opts)
      data
    end

    # Get Binance Transaction
    # &lt;h4&gt;5 credits per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Get Binance Transaction by transaction hash.&lt;/p&gt;
    # @param hash Transaction hash
    # @param [Hash] opts the optional parameters
    # @return [Array<(BnbTx, Integer, Hash)>] BnbTx data, response status code and response headers
    def bnb_get_transaction_with_http_info(hash, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BlockchainBinanceApi.bnb_get_transaction ...'
      end
      # verify the required parameter 'hash' is set
      if @api_client.config.client_side_validation && hash.nil?
        fail ArgumentError, "Missing the required parameter 'hash' when calling BlockchainBinanceApi.bnb_get_transaction"
      end
      # resource path
      local_var_path = '/v3/bnb/transaction/{hash}'.sub('{' + 'hash' + '}', hash.to_s)

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

      return_type = opts[:return_type] || 'BnbTx' 

      auth_names = opts[:auth_names] || ['X-Api-Key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BlockchainBinanceApi#bnb_get_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
