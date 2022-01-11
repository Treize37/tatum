=begin
#Tatum API

## Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: 3.9.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.31
=end

module SwaggerClient
  class StorageIPFSApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get file from IPFS
    # <h4>1 credit per API call.</h4><br/><p>Gets data from the IPFS.</p>
    # @param id IPFS CID of the file
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_ipfs_data(id, opts = {})
      data, _status_code, _headers = get_ipfs_data_with_http_info(id, opts)
      data
    end

    # Get file from IPFS
    # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Gets data from the IPFS.&lt;/p&gt;
    # @param id IPFS CID of the file
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def get_ipfs_data_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StorageIPFSApi.get_ipfs_data ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling StorageIPFSApi.get_ipfs_data"
      end
      # resource path
      local_var_path = '/v3/ipfs/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*', 'application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'String' 

      auth_names = opts[:auth_names] || ['X-Api-Key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StorageIPFSApi#get_ipfs_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Store data to IPFS
    # <h4>2 credits per API call. Only files up to 50MB are available for storing.</h4><br/> <p>Stores file on the IPFS. We are leveraging <a href=\"https://nft.storage/\" target=\"_blank\">nft.storage</a> from <a href=\"https://protocol.ai/\" target=\"_blank\">Protocol Labs</a> for free storage on the IPFS.</p> 
    # @param file 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2002]
    def store_ipfs(file, opts = {})
      data, _status_code, _headers = store_ipfs_with_http_info(file, opts)
      data
    end

    # Store data to IPFS
    # &lt;h4&gt;2 credits per API call. Only files up to 50MB are available for storing.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Stores file on the IPFS. We are leveraging &lt;a href&#x3D;\&quot;https://nft.storage/\&quot; target&#x3D;\&quot;_blank\&quot;&gt;nft.storage&lt;/a&gt; from &lt;a href&#x3D;\&quot;https://protocol.ai/\&quot; target&#x3D;\&quot;_blank\&quot;&gt;Protocol Labs&lt;/a&gt; for free storage on the IPFS.&lt;/p&gt; 
    # @param file 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2002, Integer, Hash)>] InlineResponse2002 data, response status code and response headers
    def store_ipfs_with_http_info(file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StorageIPFSApi.store_ipfs ...'
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling StorageIPFSApi.store_ipfs"
      end
      # resource path
      local_var_path = '/v3/ipfs'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['file'] = file

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'InlineResponse2002' 

      auth_names = opts[:auth_names] || ['X-Api-Key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StorageIPFSApi#store_ipfs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
