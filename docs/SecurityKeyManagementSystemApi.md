# SwaggerClient::SecurityKeyManagementSystemApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**complete_pending_signature**](SecurityKeyManagementSystemApi.md#complete_pending_signature) | **PUT** /v3/kms/{id}/{txId} | Complete pending transaction to sign
[**delete_pending_transaction_to_sign**](SecurityKeyManagementSystemApi.md#delete_pending_transaction_to_sign) | **DELETE** /v3/kms/{id} | Delete transaction
[**get_pending_transaction_to_sign**](SecurityKeyManagementSystemApi.md#get_pending_transaction_to_sign) | **GET** /v3/kms/{id} | Get transaction details
[**get_pending_transactions_to_sign**](SecurityKeyManagementSystemApi.md#get_pending_transactions_to_sign) | **GET** /v3/kms/pending/{chain} | Get pending transactions to sign

# **complete_pending_signature**
> complete_pending_signature(id, tx_id)

Complete pending transaction to sign

<h4>2 credits per API call.</h4><br/> <p>Mark pending transaction to sign as a complete and update it with a transactionID from the blockchain.</p> 

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

api_instance = SwaggerClient::SecurityKeyManagementSystemApi.new
id = 'id_example' # String | ID of pending transaction
tx_id = 'tx_id_example' # String | transaction ID of blockchain transaction


begin
  #Complete pending transaction to sign
  api_instance.complete_pending_signature(id, tx_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SecurityKeyManagementSystemApi->complete_pending_signature: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of pending transaction | 
 **tx_id** | **String**| transaction ID of blockchain transaction | 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_pending_transaction_to_sign**
> delete_pending_transaction_to_sign(id, opts)

Delete transaction

<h4>2 credits per API call.</h4><br/><p>Delete transaction to be signed. When deleting offchain transaction, linked withdrawal will be cancelled automatically.</p>

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

api_instance = SwaggerClient::SecurityKeyManagementSystemApi.new
id = 'id_example' # String | ID of transaction
opts = { 
  revert: true # BOOLEAN | Defines whether fee should be reverted to account balance as well as amount. Defaults to true. Revert true would be typically used when withdrawal was not broadcast to blockchain. False is used usually for Ethereum ERC20 based currencies.
}

begin
  #Delete transaction
  api_instance.delete_pending_transaction_to_sign(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SecurityKeyManagementSystemApi->delete_pending_transaction_to_sign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of transaction | 
 **revert** | **BOOLEAN**| Defines whether fee should be reverted to account balance as well as amount. Defaults to true. Revert true would be typically used when withdrawal was not broadcast to blockchain. False is used usually for Ethereum ERC20 based currencies. | [optional] [default to true]

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pending_transaction_to_sign**
> PendingTransaction get_pending_transaction_to_sign(id)

Get transaction details

<h4>1 credit per API call.</h4><br/><p>Get detail of transaction to be signed / that was already signed and contains transactionId.</p>

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

api_instance = SwaggerClient::SecurityKeyManagementSystemApi.new
id = 'id_example' # String | ID of transaction


begin
  #Get transaction details
  result = api_instance.get_pending_transaction_to_sign(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SecurityKeyManagementSystemApi->get_pending_transaction_to_sign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of transaction | 

### Return type

[**PendingTransaction**](PendingTransaction.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pending_transactions_to_sign**
> PendingTransaction get_pending_transactions_to_sign(chain, opts)

Get pending transactions to sign

<h4>1 credit per API call.</h4><br/><p>Get list of pending transaction to be signed and broadcast using Tatum KMS.</p>

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

api_instance = SwaggerClient::SecurityKeyManagementSystemApi.new
chain = 'chain_example' # String | Blockchain to get pending transactions for.
opts = { 
  signatures: 'signatures_example' # String | Signature IDs of the KMS which invokes this endpoint. If multiple, they should be separated by comma.
}

begin
  #Get pending transactions to sign
  result = api_instance.get_pending_transactions_to_sign(chain, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SecurityKeyManagementSystemApi->get_pending_transactions_to_sign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain** | **String**| Blockchain to get pending transactions for. | 
 **signatures** | **String**| Signature IDs of the KMS which invokes this endpoint. If multiple, they should be separated by comma. | [optional] 

### Return type

[**PendingTransaction**](PendingTransaction.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



