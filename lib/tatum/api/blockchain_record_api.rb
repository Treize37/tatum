=begin
#Tatum API

## Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: 3.9.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.31
=end

module Tatum
  class BlockchainRecordApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get log record
    # <h4>1 credit per API call.</h4><br/><p>Gets log data from the Ethereum blockchain.</p>
    # @param chain The blockchain to get the log record from
    # @param id ID of the log record / transaction on the blockchain
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2001]
    def get_log(chain, id, opts = {})
      data, _status_code, _headers = get_log_with_http_info(chain, id, opts)
      data
    end

    # Get log record
    # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Gets log data from the Ethereum blockchain.&lt;/p&gt;
    # @param chain The blockchain to get the log record from
    # @param id ID of the log record / transaction on the blockchain
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2001, Integer, Hash)>] InlineResponse2001 data, response status code and response headers
    def get_log_with_http_info(chain, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BlockchainRecordApi.get_log ...'
      end
      # verify the required parameter 'chain' is set
      if @api_client.config.client_side_validation && chain.nil?
        fail ArgumentError, "Missing the required parameter 'chain' when calling BlockchainRecordApi.get_log"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['ETH'].include?(chain)
        fail ArgumentError, "invalid value for 'chain', must be one of ETH"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BlockchainRecordApi.get_log"
      end
      # resource path
      local_var_path = '/v3/record'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'chain'] = chain
      query_params[:'id'] = id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'InlineResponse2001' 

      auth_names = opts[:auth_names] || ['X-Api-Key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BlockchainRecordApi#get_log\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Store log record
    # <h4>2 credits per API call. Additional credits are debited based on the size of the stored data and the type of blockchain.</h4><br/> <p>Stores record data on blockchain. Tatum currently supports the Ethereum, CELO, MATIC, ONE, XDC, Quorum, BSC, EGLD and Hyperledger Fabric blockchain and Quorum to store data.<br/> The total cost of the transaction (in credits) on the Ethereum blockchain is dependent on the size of the data. Data are stored as a HEX string and the maximum data size is approximatelly 130 kB on mainnet, 30 kB on testnet.<br/> Every 5 characters of data costs 1 credit, so an API call with a data of length 1 kB = 1024 characters and would cost 205 credits. </p> 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [TransactionHash]
    def store_log(body, opts = {})
      data, _status_code, _headers = store_log_with_http_info(body, opts)
      data
    end

    # Store log record
    # &lt;h4&gt;2 credits per API call. Additional credits are debited based on the size of the stored data and the type of blockchain.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Stores record data on blockchain. Tatum currently supports the Ethereum, CELO, MATIC, ONE, XDC, Quorum, BSC, EGLD and Hyperledger Fabric blockchain and Quorum to store data.&lt;br/&gt; The total cost of the transaction (in credits) on the Ethereum blockchain is dependent on the size of the data. Data are stored as a HEX string and the maximum data size is approximatelly 130 kB on mainnet, 30 kB on testnet.&lt;br/&gt; Every 5 characters of data costs 1 credit, so an API call with a data of length 1 kB &#x3D; 1024 characters and would cost 205 credits. &lt;/p&gt; 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionHash, Integer, Hash)>] TransactionHash data, response status code and response headers
    def store_log_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BlockchainRecordApi.store_log ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling BlockchainRecordApi.store_log"
      end
      # resource path
      local_var_path = '/v3/record'

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
        @api_client.config.logger.debug "API called: BlockchainRecordApi#store_log\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end