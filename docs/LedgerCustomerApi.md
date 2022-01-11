# SwaggerClient::LedgerCustomerApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activate_customer**](LedgerCustomerApi.md#activate_customer) | **PUT** /v3/ledger/customer/{id}/activate | Activate customer
[**deactivate_customer**](LedgerCustomerApi.md#deactivate_customer) | **PUT** /v3/ledger/customer/{id}/deactivate | Deactivate customer
[**disable_customer**](LedgerCustomerApi.md#disable_customer) | **PUT** /v3/ledger/customer/{id}/disable | Disable customer
[**enable_customer**](LedgerCustomerApi.md#enable_customer) | **PUT** /v3/ledger/customer/{id}/enable | Enable customer
[**find_all_customers**](LedgerCustomerApi.md#find_all_customers) | **GET** /v3/ledger/customer | List all customers
[**get_customer_by_external_or_internal_id**](LedgerCustomerApi.md#get_customer_by_external_or_internal_id) | **GET** /v3/ledger/customer/{id} | Get customer details
[**update_customer**](LedgerCustomerApi.md#update_customer) | **PUT** /v3/ledger/customer/{id} | Update customer

# **activate_customer**
> activate_customer(id)

Activate customer

<h4>2 credits per API call.</h4><br/><p>Activated customer is able to do any operation.</p>

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

api_instance = SwaggerClient::LedgerCustomerApi.new
id = 'id_example' # String | Customer internal ID


begin
  #Activate customer
  api_instance.activate_customer(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LedgerCustomerApi->activate_customer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Customer internal ID | 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **deactivate_customer**
> deactivate_customer(id)

Deactivate customer

<h4>2 credits per API call.</h4><br/><p>Deactivate customer is not able to do any operation. Customer can be deactivated only when all their accounts are already deactivated.</p>

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

api_instance = SwaggerClient::LedgerCustomerApi.new
id = 'id_example' # String | Customer internal ID


begin
  #Deactivate customer
  api_instance.deactivate_customer(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LedgerCustomerApi->deactivate_customer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Customer internal ID | 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **disable_customer**
> disable_customer(id)

Disable customer

<h4>2 credits per API call.</h4><br/><p>Disabled customer cannot perform end-user operations, such as create new accounts or send transactions. Available balance on all accounts is set to 0. Account balance will stay untouched.</p>

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

api_instance = SwaggerClient::LedgerCustomerApi.new
id = 'id_example' # String | Customer internal ID


begin
  #Disable customer
  api_instance.disable_customer(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LedgerCustomerApi->disable_customer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Customer internal ID | 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **enable_customer**
> enable_customer(id)

Enable customer

<h4>2 credits per API call.</h4><br/><p>Enabled customer can perform all operations. By default all customers are enabled. All previously blocked account balances will be unblocked.</p>

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

api_instance = SwaggerClient::LedgerCustomerApi.new
id = 'id_example' # String | Customer internal ID


begin
  #Enable customer
  api_instance.enable_customer(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LedgerCustomerApi->enable_customer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Customer internal ID | 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **find_all_customers**
> Array&lt;Customer&gt; find_all_customers(page_size, opts)

List all customers

<h4>1 credit per API call.</h4><br/> <p>List of all customers. Also inactive an disabled customers are present.</p> 

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

api_instance = SwaggerClient::LedgerCustomerApi.new
page_size = SwaggerClient::BigDecimal.new # BigDecimal | Max number of items per page is 50.
opts = { 
  offset: SwaggerClient::BigDecimal.new # BigDecimal | Offset to obtain next page of the data.
}

begin
  #List all customers
  result = api_instance.find_all_customers(page_size, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LedgerCustomerApi->find_all_customers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_size** | **BigDecimal**| Max number of items per page is 50. | 
 **offset** | **BigDecimal**| Offset to obtain next page of the data. | [optional] 

### Return type

[**Array&lt;Customer&gt;**](Customer.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_customer_by_external_or_internal_id**
> Customer get_customer_by_external_or_internal_id(id)

Get customer details

<h4>1 credit per API call.</h4><br/><p>Using anonymized external ID or internal customer ID you can access customer detail information. Internal ID is needed to call other customer related methods.</p>

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

api_instance = SwaggerClient::LedgerCustomerApi.new
id = 'id_example' # String | Customer external or internal ID


begin
  #Get customer details
  result = api_instance.get_customer_by_external_or_internal_id(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LedgerCustomerApi->get_customer_by_external_or_internal_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Customer external or internal ID | 

### Return type

[**Customer**](Customer.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_customer**
> Customer update_customer(bodyid)

Update customer

<h4>2 credits per API call.</h4><br/><p>This method is helpful in case your primary system will change ID's or customer will change the country he/she is supposed to be in compliance with.</p>

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

api_instance = SwaggerClient::LedgerCustomerApi.new
body = SwaggerClient::CustomerUpdate.new # CustomerUpdate | 
id = 'id_example' # String | Customer internal ID


begin
  #Update customer
  result = api_instance.update_customer(bodyid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LedgerCustomerApi->update_customer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CustomerUpdate**](CustomerUpdate.md)|  | 
 **id** | **String**| Customer internal ID | 

### Return type

[**Customer**](Customer.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



