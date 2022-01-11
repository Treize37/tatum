# SwaggerClient::SecurityAddressApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check_malicous_address**](SecurityAddressApi.md#check_malicous_address) | **GET** /v3/security/address/{address} | Check malicous address

# **check_malicous_address**
> InlineResponse20017 check_malicous_address(address)

Check malicous address

<h4>1 credit per API call.</h4><br/> <p>Check, if the blockchain address is malicous. Malicous address can contain assets from the DarkWeb, is connected to the scam projects or contains stolen funds.</p> 

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

api_instance = SwaggerClient::SecurityAddressApi.new
address = 'address_example' # String | Blockchain Address to check


begin
  #Check malicous address
  result = api_instance.check_malicous_address(address)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SecurityAddressApi->check_malicous_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Blockchain Address to check | 

### Return type

[**InlineResponse20017**](InlineResponse20017.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



