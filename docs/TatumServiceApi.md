# SwaggerClient::TatumServiceApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**freeze_api_key**](TatumServiceApi.md#freeze_api_key) | **PUT** /v3/tatum/freeze | Freeze API Key
[**get_credits**](TatumServiceApi.md#get_credits) | **GET** /v3/tatum/usage | List credit consumption for last month
[**get_exchange_rate**](TatumServiceApi.md#get_exchange_rate) | **GET** /v3/tatum/rate/{currency} | Get currenct exchange rate of the supported FIAT / crypto asset
[**get_version**](TatumServiceApi.md#get_version) | **GET** /v3/tatum/version | Get API version
[**unfreeze_api_key**](TatumServiceApi.md#unfreeze_api_key) | **DELETE** /v3/tatum/freeze | Unfreeze API Key

# **freeze_api_key**
> freeze_api_key

Freeze API Key

<h4>2 credits per API call.</h4><br/><p>Freeze the API Key. It's not possible to perform sensitive operations like send ledger transaction, send off-chain transaction, send blockchain transaction, broadcast blockchain transaction, perform Order book trade or create blockage. Only read operations are permitted.</p> 

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

api_instance = SwaggerClient::TatumServiceApi.new

begin
  #Freeze API Key
  api_instance.freeze_api_key
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TatumServiceApi->freeze_api_key: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_credits**
> Array&lt;Consumption&gt; get_credits

List credit consumption for last month

<h4>1 credit per API call.</h4><br/><p>List usage information of credits.</p>

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

api_instance = SwaggerClient::TatumServiceApi.new

begin
  #List credit consumption for last month
  result = api_instance.get_credits
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TatumServiceApi->get_credits: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Consumption&gt;**](Consumption.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_exchange_rate**
> ExchangeRate get_exchange_rate(currency, opts)

Get currenct exchange rate of the supported FIAT / crypto asset

<h4>1 credit per API call.</h4><br/> <p>Get currenct exchange rate of the supported FIAT / crypto asset. Base pair is EUR by default. E.g. to obtain exchange rate for the Bitcoin, response value for the API call will be expressed as 1 BTC = 10,000 EUR.</p> 

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

api_instance = SwaggerClient::TatumServiceApi.new
currency = 'currency_example' # String | FIAT or crypto asset
opts = { 
  base_pair: 'base_pair_example' # String | FIAT to convert as a basePair
}

begin
  #Get currenct exchange rate of the supported FIAT / crypto asset
  result = api_instance.get_exchange_rate(currency, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TatumServiceApi->get_exchange_rate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **String**| FIAT or crypto asset | 
 **base_pair** | **String**| FIAT to convert as a basePair | [optional] 

### Return type

[**ExchangeRate**](ExchangeRate.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_version**
> InlineResponse20034 get_version

Get API version

<h4>1 credit per API call.</h4><br/><p>Get current version of the API.</p>

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

api_instance = SwaggerClient::TatumServiceApi.new

begin
  #Get API version
  result = api_instance.get_version
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TatumServiceApi->get_version: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20034**](InlineResponse20034.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **unfreeze_api_key**
> unfreeze_api_key

Unfreeze API Key

<h4>2 credits per API call.</h4><br/><p>Unfreeze the API Key. It's possible to perform sensitive operations like send ledger transaction, send off-chain transaction, send blockchain transaction, broadcast blockchain transaction, perform Order book trade or create blockage again.</p> 

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

api_instance = SwaggerClient::TatumServiceApi.new

begin
  #Unfreeze API Key
  api_instance.unfreeze_api_key
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TatumServiceApi->unfreeze_api_key: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



