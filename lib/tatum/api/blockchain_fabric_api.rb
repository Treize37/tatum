=begin
#Tatum API

## Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: 3.9.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.31
=end

module Tatum
  class BlockchainFabricApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Store data
    # <h4>2 credit per API call.</h4><br/> <p>Store data on the Hyperledger under the key.</p> 
    # @param body 
    # @param x_fabric_endpoint URL of the Fabric network
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20080]
    def fabric_generate_account(body, x_fabric_endpoint, opts = {})
      data, _status_code, _headers = fabric_generate_account_with_http_info(body, x_fabric_endpoint, opts)
      data
    end

    # Store data
    # &lt;h4&gt;2 credit per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Store data on the Hyperledger under the key.&lt;/p&gt; 
    # @param body 
    # @param x_fabric_endpoint URL of the Fabric network
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20080, Integer, Hash)>] InlineResponse20080 data, response status code and response headers
    def fabric_generate_account_with_http_info(body, x_fabric_endpoint, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BlockchainFabricApi.fabric_generate_account ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling BlockchainFabricApi.fabric_generate_account"
      end
      # verify the required parameter 'x_fabric_endpoint' is set
      if @api_client.config.client_side_validation && x_fabric_endpoint.nil?
        fail ArgumentError, "Missing the required parameter 'x_fabric_endpoint' when calling BlockchainFabricApi.fabric_generate_account"
      end
      # resource path
      local_var_path = '/v3/fabric/data'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'x-fabric-endpoint'] = x_fabric_endpoint

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'InlineResponse20080' 

      auth_names = opts[:auth_names] || ['X-Api-Key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BlockchainFabricApi#fabric_generate_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Gat data
    # <h4>1 credit per API call.</h4><br/> <p>Get data from Fabroc</p> 
    # @param x_fabric_endpoint URL of the Fabric network
    # @param key Key to obtain data.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20081]
    def fabric_get_data(x_fabric_endpoint, key, opts = {})
      data, _status_code, _headers = fabric_get_data_with_http_info(x_fabric_endpoint, key, opts)
      data
    end

    # Gat data
    # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Get data from Fabroc&lt;/p&gt; 
    # @param x_fabric_endpoint URL of the Fabric network
    # @param key Key to obtain data.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20081, Integer, Hash)>] InlineResponse20081 data, response status code and response headers
    def fabric_get_data_with_http_info(x_fabric_endpoint, key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BlockchainFabricApi.fabric_get_data ...'
      end
      # verify the required parameter 'x_fabric_endpoint' is set
      if @api_client.config.client_side_validation && x_fabric_endpoint.nil?
        fail ArgumentError, "Missing the required parameter 'x_fabric_endpoint' when calling BlockchainFabricApi.fabric_get_data"
      end
      # verify the required parameter 'key' is set
      if @api_client.config.client_side_validation && key.nil?
        fail ArgumentError, "Missing the required parameter 'key' when calling BlockchainFabricApi.fabric_get_data"
      end
      # resource path
      local_var_path = '/v3/fabric/data/{key}'.sub('{' + 'key' + '}', key.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'x-fabric-endpoint'] = x_fabric_endpoint

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'InlineResponse20081' 

      auth_names = opts[:auth_names] || ['X-Api-Key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BlockchainFabricApi#fabric_get_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
