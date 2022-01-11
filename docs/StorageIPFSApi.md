# Tatum::StorageIPFSApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_ipfs_data**](StorageIPFSApi.md#get_ipfs_data) | **GET** /v3/ipfs/{id} | Get file from IPFS
[**store_ipfs**](StorageIPFSApi.md#store_ipfs) | **POST** /v3/ipfs | Store data to IPFS

# **get_ipfs_data**
> String get_ipfs_data(id)

Get file from IPFS

<h4>1 credit per API call.</h4><br/><p>Gets data from the IPFS.</p>

### Example
```ruby
# load the gem
require 'tatum'
# setup authorization
Tatum.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = Tatum::StorageIPFSApi.new
id = 'id_example' # String | IPFS CID of the file


begin
  #Get file from IPFS
  result = api_instance.get_ipfs_data(id)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling StorageIPFSApi->get_ipfs_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| IPFS CID of the file | 

### Return type

**String**

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: *, application/json



# **store_ipfs**
> InlineResponse2002 store_ipfs(file)

Store data to IPFS

<h4>2 credits per API call. Only files up to 50MB are available for storing.</h4><br/> <p>Stores file on the IPFS. We are leveraging <a href=\"https://nft.storage/\" target=\"_blank\">nft.storage</a> from <a href=\"https://protocol.ai/\" target=\"_blank\">Protocol Labs</a> for free storage on the IPFS.</p> 

### Example
```ruby
# load the gem
require 'tatum'
# setup authorization
Tatum.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = Tatum::StorageIPFSApi.new
file = 'file_example' # String | 


begin
  #Store data to IPFS
  result = api_instance.store_ipfs(file)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling StorageIPFSApi->store_ipfs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **String**|  | 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



