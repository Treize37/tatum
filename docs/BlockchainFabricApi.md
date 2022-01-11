# SwaggerClient::BlockchainFabricApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fabric_generate_account**](BlockchainFabricApi.md#fabric_generate_account) | **POST** /v3/fabric/data | Store data
[**fabric_get_data**](BlockchainFabricApi.md#fabric_get_data) | **GET** /v3/fabric/data/{key} | Gat data

# **fabric_generate_account**
> InlineResponse20080 fabric_generate_account(bodyx_fabric_endpoint)

Store data

<h4>2 credit per API call.</h4><br/> <p>Store data on the Hyperledger under the key.</p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::BlockchainFabricApi.new
body = SwaggerClient::FabricDataBody.new # FabricDataBody | 
x_fabric_endpoint = 'x_fabric_endpoint_example' # String | URL of the Fabric network


begin
  #Store data
  result = api_instance.fabric_generate_account(bodyx_fabric_endpoint)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainFabricApi->fabric_generate_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**FabricDataBody**](FabricDataBody.md)|  | 
 **x_fabric_endpoint** | **String**| URL of the Fabric network | 

### Return type

[**InlineResponse20080**](InlineResponse20080.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **fabric_get_data**
> InlineResponse20081 fabric_get_data(x_fabric_endpoint, key)

Gat data

<h4>1 credit per API call.</h4><br/> <p>Get data from Fabroc</p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::BlockchainFabricApi.new
x_fabric_endpoint = 'x_fabric_endpoint_example' # String | URL of the Fabric network
key = 'key_example' # String | Key to obtain data.


begin
  #Gat data
  result = api_instance.fabric_get_data(x_fabric_endpoint, key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainFabricApi->fabric_get_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_fabric_endpoint** | **String**| URL of the Fabric network | 
 **key** | **String**| Key to obtain data. | 

### Return type

[**InlineResponse20081**](InlineResponse20081.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



