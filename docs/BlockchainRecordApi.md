# SwaggerClient::BlockchainRecordApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_log**](BlockchainRecordApi.md#get_log) | **GET** /v3/record | Get log record
[**store_log**](BlockchainRecordApi.md#store_log) | **POST** /v3/record | Store log record

# **get_log**
> InlineResponse2001 get_log(chain, id)

Get log record

<h4>1 credit per API call.</h4><br/><p>Gets log data from the Ethereum blockchain.</p>

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

api_instance = SwaggerClient::BlockchainRecordApi.new
chain = 'chain_example' # String | The blockchain to get the log record from
id = 'id_example' # String | ID of the log record / transaction on the blockchain


begin
  #Get log record
  result = api_instance.get_log(chain, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainRecordApi->get_log: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain** | **String**| The blockchain to get the log record from | 
 **id** | **String**| ID of the log record / transaction on the blockchain | 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **store_log**
> TransactionHash store_log(body)

Store log record

<h4>2 credits per API call. Additional credits are debited based on the size of the stored data and the type of blockchain.</h4><br/> <p>Stores record data on blockchain. Tatum currently supports the Ethereum, CELO, MATIC, ONE, XDC, Quorum, BSC, EGLD and Hyperledger Fabric blockchain and Quorum to store data.<br/> The total cost of the transaction (in credits) on the Ethereum blockchain is dependent on the size of the data. Data are stored as a HEX string and the maximum data size is approximatelly 130 kB on mainnet, 30 kB on testnet.<br/> Every 5 characters of data costs 1 credit, so an API call with a data of length 1 kB = 1024 characters and would cost 205 credits. </p> 

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

api_instance = SwaggerClient::BlockchainRecordApi.new
body = SwaggerClient::V3RecordBody.new # V3RecordBody | 


begin
  #Store log record
  result = api_instance.store_log(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainRecordApi->store_log: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V3RecordBody**](V3RecordBody.md)|  | 

### Return type

[**TransactionHash**](TransactionHash.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



