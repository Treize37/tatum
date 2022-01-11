# SwaggerClient::BlockchainQuorumApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**quorum_blockchain_transfer**](BlockchainQuorumApi.md#quorum_blockchain_transfer) | **POST** /v3/quorum/transaction | Send Quorum transaction
[**quorum_generate_account**](BlockchainQuorumApi.md#quorum_generate_account) | **POST** /v3/quorum/account | Generate Quorum Account
[**quorum_get_block**](BlockchainQuorumApi.md#quorum_get_block) | **GET** /v3/quorum/block/{hash} | Get Quorum block by hash
[**quorum_get_current_block**](BlockchainQuorumApi.md#quorum_get_current_block) | **GET** /v3/quorum/block/current | Get current block number
[**quorum_get_transaction**](BlockchainQuorumApi.md#quorum_get_transaction) | **GET** /v3/quorum/transaction/{hash} | Get Quorum Transaction
[**quorum_get_transaction_receipt**](BlockchainQuorumApi.md#quorum_get_transaction_receipt) | **GET** /v3/quorum/transaction/{hash}/receipt | Get Quorum transaction receipt
[**quorum_unlock_account**](BlockchainQuorumApi.md#quorum_unlock_account) | **POST** /v3/quorum/account/{address}/unlock | Unlock Quorum Account
[**quorum_web3_driver**](BlockchainQuorumApi.md#quorum_web3_driver) | **POST** /v3/quorum/web3/{xApiKey} | Web3 HTTP driver

# **quorum_blockchain_transfer**
> TransactionHash quorum_blockchain_transfer(bodyx_quorum_endpoint)

Send Quorum transaction

<h4>2 credits per API call.</h4><br/> <p>Send Quorum transaction account to account.<br/><br/> This operation can be used to send native assets between two accounts or to store data into the blockchain.</p> 

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

api_instance = SwaggerClient::BlockchainQuorumApi.new
body = SwaggerClient::TransferQuorum.new # TransferQuorum | 
x_quorum_endpoint = 'x_quorum_endpoint_example' # String | URL of the Quorum network


begin
  #Send Quorum transaction
  result = api_instance.quorum_blockchain_transfer(bodyx_quorum_endpoint)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainQuorumApi->quorum_blockchain_transfer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TransferQuorum**](TransferQuorum.md)|  | 
 **x_quorum_endpoint** | **String**| URL of the Quorum network | 

### Return type

[**TransactionHash**](TransactionHash.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **quorum_generate_account**
> InlineResponse20078 quorum_generate_account(bodyx_quorum_endpoint)

Generate Quorum Account

<h4>2 credit per API call.</h4><br/> <p>Generate address account. Account must be protected with the password. To start using account, it must be unlocked via <a href=\"#operation/QuorumUnlockAccount\" target=\"_blank\">Unlock Quorum Account method</a>.</p> 

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

api_instance = SwaggerClient::BlockchainQuorumApi.new
body = SwaggerClient::QuorumAccountBody.new # QuorumAccountBody | 
x_quorum_endpoint = 'x_quorum_endpoint_example' # String | URL of the Quorum network


begin
  #Generate Quorum Account
  result = api_instance.quorum_generate_account(bodyx_quorum_endpoint)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainQuorumApi->quorum_generate_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**QuorumAccountBody**](QuorumAccountBody.md)|  | 
 **x_quorum_endpoint** | **String**| URL of the Quorum network | 

### Return type

[**InlineResponse20078**](InlineResponse20078.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **quorum_get_block**
> QuorumBlock quorum_get_block(x_quorum_endpoint, hash)

Get Quorum block by hash

<h4>1 credit per API call.</h4><br/><p>Get Quorum block by block hash or block number.</p>

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

api_instance = SwaggerClient::BlockchainQuorumApi.new
x_quorum_endpoint = 'x_quorum_endpoint_example' # String | URL of the Quorum network
hash = 'hash_example' # String | Block hash or block number


begin
  #Get Quorum block by hash
  result = api_instance.quorum_get_block(x_quorum_endpoint, hash)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainQuorumApi->quorum_get_block: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_quorum_endpoint** | **String**| URL of the Quorum network | 
 **hash** | **String**| Block hash or block number | 

### Return type

[**QuorumBlock**](QuorumBlock.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **quorum_get_current_block**
> BigDecimal quorum_get_current_block(x_quorum_endpoint)

Get current block number

<h4>1 credit per API call.</h4><br/><p>Get Quorum current block number. This is the number of the latest block in the blockchain.</p>

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

api_instance = SwaggerClient::BlockchainQuorumApi.new
x_quorum_endpoint = 'x_quorum_endpoint_example' # String | URL of the Quorum network


begin
  #Get current block number
  result = api_instance.quorum_get_current_block(x_quorum_endpoint)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainQuorumApi->quorum_get_current_block: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_quorum_endpoint** | **String**| URL of the Quorum network | 

### Return type

[**BigDecimal**](BigDecimal.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **quorum_get_transaction**
> QuorumTx quorum_get_transaction(x_quorum_endpoint, hash)

Get Quorum Transaction

<h4>1 credit per API call.</h4><br/><p>Get Quorum transaction by transaction hash.</p>

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

api_instance = SwaggerClient::BlockchainQuorumApi.new
x_quorum_endpoint = 'x_quorum_endpoint_example' # String | URL of the Quorum network
hash = 'hash_example' # String | Transaction hash


begin
  #Get Quorum Transaction
  result = api_instance.quorum_get_transaction(x_quorum_endpoint, hash)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainQuorumApi->quorum_get_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_quorum_endpoint** | **String**| URL of the Quorum network | 
 **hash** | **String**| Transaction hash | 

### Return type

[**QuorumTx**](QuorumTx.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **quorum_get_transaction_receipt**
> QuorumTx quorum_get_transaction_receipt(x_quorum_endpoint, hash)

Get Quorum transaction receipt

<h4>1 credit per API call.</h4><br/> <p>Get Quorum Transaction Receipt by transaction hash. Transaction receipt is available only after transaction is included in the block and contains information about paid fee or created contract address and much more.</p> 

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

api_instance = SwaggerClient::BlockchainQuorumApi.new
x_quorum_endpoint = 'x_quorum_endpoint_example' # String | URL of the Quorum network
hash = 'hash_example' # String | Transaction hash


begin
  #Get Quorum transaction receipt
  result = api_instance.quorum_get_transaction_receipt(x_quorum_endpoint, hash)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainQuorumApi->quorum_get_transaction_receipt: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_quorum_endpoint** | **String**| URL of the Quorum network | 
 **hash** | **String**| Transaction hash | 

### Return type

[**QuorumTx**](QuorumTx.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **quorum_unlock_account**
> InlineResponse20079 quorum_unlock_account(bodyx_quorum_endpointaddress)

Unlock Quorum Account

<h4>2 credit per API call.</h4><br/> <p>Unlock account.</p> 

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

api_instance = SwaggerClient::BlockchainQuorumApi.new
body = SwaggerClient::AddressUnlockBody.new # AddressUnlockBody | 
x_quorum_endpoint = 'x_quorum_endpoint_example' # String | URL of the Quorum network
address = 'address_example' # String | Account address


begin
  #Unlock Quorum Account
  result = api_instance.quorum_unlock_account(bodyx_quorum_endpointaddress)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainQuorumApi->quorum_unlock_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AddressUnlockBody**](AddressUnlockBody.md)|  | 
 **x_quorum_endpoint** | **String**| URL of the Quorum network | 
 **address** | **String**| Account address | 

### Return type

[**InlineResponse20079**](InlineResponse20079.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **quorum_web3_driver**
> Object quorum_web3_driver(bodyx_quorum_endpointx_api_key)

Web3 HTTP driver

<h4>2 credits per API call.</h4><br/> <p>Use this endpoint URL as a http-based web3 driver to connect directly to the Quorum node. To learn more about Quorum Web3, please visit <a href=\"https://ethereum.org/en/developers/\" target=\"_blank\">Ethereum developer's guide.</a></p> 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BlockchainQuorumApi.new
body = nil # Object | 
x_quorum_endpoint = 'x_quorum_endpoint_example' # String | URL of the Quorum network
x_api_key = 'x_api_key_example' # String | Tatum X-API-Key used for authorization.


begin
  #Web3 HTTP driver
  result = api_instance.quorum_web3_driver(bodyx_quorum_endpointx_api_key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainQuorumApi->quorum_web3_driver: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Object**](Object.md)|  | 
 **x_quorum_endpoint** | **String**| URL of the Quorum network | 
 **x_api_key** | **String**| Tatum X-API-Key used for authorization. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



