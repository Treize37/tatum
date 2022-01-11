# SwaggerClient::OffChainAccountApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**address_exists**](OffChainAccountApi.md#address_exists) | **GET** /v3/offchain/account/address/{address}/{currency} | Check, if deposit address is assigned
[**assign_address**](OffChainAccountApi.md#assign_address) | **POST** /v3/offchain/account/{id}/address/{address} | Assign address for account
[**generate_deposit_address**](OffChainAccountApi.md#generate_deposit_address) | **POST** /v3/offchain/account/{id}/address | Create new deposit address
[**generate_deposit_addresses_batch**](OffChainAccountApi.md#generate_deposit_addresses_batch) | **POST** /v3/offchain/account/address/batch | Create new deposit addresses in a batch call
[**get_all_deposit_addresses**](OffChainAccountApi.md#get_all_deposit_addresses) | **GET** /v3/offchain/account/{id}/address | Get all deposit addresses for account
[**remove_address**](OffChainAccountApi.md#remove_address) | **DELETE** /v3/offchain/account/{id}/address/{address} | Remove address for account

# **address_exists**
> Account address_exists(currency, address, opts)

Check, if deposit address is assigned

<h4>1 credit per API call.</h4><br/> <p>Check, whether blockchain address for given currency is registered within Tatum and assigned to Tatum Account. Returns account this address belongs to, otherwise throws an error.</p> 

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

api_instance = SwaggerClient::OffChainAccountApi.new
currency = 'currency_example' # String | Currency
address = 'address_example' # String | Blockchain Address to check
opts = { 
  index: SwaggerClient::BigDecimal.new # BigDecimal | In case of XLM or XRP, this is a memo or DestinationTag to search for.
}

begin
  #Check, if deposit address is assigned
  result = api_instance.address_exists(currency, address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainAccountApi->address_exists: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **String**| Currency | 
 **address** | **String**| Blockchain Address to check | 
 **index** | **BigDecimal**| In case of XLM or XRP, this is a memo or DestinationTag to search for. | [optional] 

### Return type

[**Account**](Account.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **assign_address**
> Address assign_address(id, address, opts)

Assign address for account

<h4>2 credits for API call and 5 credits for each address registered for scanning every day.</h4><br/> <p>This method is used when the account has no default xpub assigned, and addresses are handled manually. It is possible to pair any number of blockchain address to the account.</p> 

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

api_instance = SwaggerClient::OffChainAccountApi.new
id = 'id_example' # String | Account ID
address = 'address_example' # String | Blockchain address
opts = { 
  index: SwaggerClient::BigDecimal.new # BigDecimal | Destination tag or memo attribute for XRP or XLM addresses
}

begin
  #Assign address for account
  result = api_instance.assign_address(id, address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainAccountApi->assign_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Account ID | 
 **address** | **String**| Blockchain address | 
 **index** | **BigDecimal**| Destination tag or memo attribute for XRP or XLM addresses | [optional] 

### Return type

[**Address**](Address.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **generate_deposit_address**
> Address generate_deposit_address(id, opts)

Create new deposit address

<h4>2 credits per API call and 5 credits for each address registered for scanning every day. If address is FLOW or FUSD, additional 3000 credits are consumed - see <a href=\"#operation/FlowGenerateAddress\">Flow address generation.</a></h4><br/> <p>Create a new deposit address for the account. This method associates public blockchain's ledger address with the account on Tatum's private ledger.<br/> It is possible to generate multiple blockchain addresses for the same ledger account. By this, it is possible to aggregate various blockchain transactions from different addresses into the same account. Depending on the currency of an account, this method will either generate a public address for Bitcoin, Bitcoin Cash, Litecoin or Ethereum, DestinationTag in case of XRP or message in case of XLM. More information about supported blockchains and address types can be found <a href=\"#operation/createAccount\">here</a>.<br/> Addresses are generated in the natural order of the Extended public key provided in the account. Derivation index is the representation of that order - starts from 0 and ends at 2^31. When a new address is generated, the last not used index is used to generate an address. It is possible to skip some of the addresses to the different index, which means all the skipped addresses will no longer be used. </p> 

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

api_instance = SwaggerClient::OffChainAccountApi.new
id = 'id_example' # String | Account ID
opts = { 
  index: SwaggerClient::BigDecimal.new # BigDecimal | <p>Derivation path index for specific address. If not present, last used index for given xpub of account + 1 is used. We recommend not to pass this value manually, since when some of the indexes are skipped, it is not possible to use them lately to generate address from it.</p>
}

begin
  #Create new deposit address
  result = api_instance.generate_deposit_address(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainAccountApi->generate_deposit_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Account ID | 
 **index** | **BigDecimal**| &lt;p&gt;Derivation path index for specific address. If not present, last used index for given xpub of account + 1 is used. We recommend not to pass this value manually, since when some of the indexes are skipped, it is not possible to use them lately to generate address from it.&lt;/p&gt; | [optional] 

### Return type

[**Address**](Address.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **generate_deposit_addresses_batch**
> Array&lt;Address&gt; generate_deposit_addresses_batch(body)

Create new deposit addresses in a batch call

<h4>2 credits per API call, 1 credit for every address created and 5 credits for each address registered for scanning every day. If address is FLOW or FUSD, additional 3000 credits are consumed for each address - see <a href=\"#operation/FlowGenerateAddress\">Flow address generation.<a/></h4><br/> <p>Create new deposit addressess for the account. This method associates public blockchain's ledger address with the account on Tatum's private ledger.<br/> It is possible to generate multiple blockchain addresses for the same ledger account. By this, it is possible to aggregate various blockchain transactions from different addresses into the same account. Depending on the currency of an account, this method will either generate a public address for Bitcoin, Bitcoin Cash, Litecoin or Ethereum, DestinationTag in case of XRP or message in case of XLM. More information about supported blockchains and address types can be found <a href=\"#operation/createAccount\">here</a>.<br/> Addresses are generated in the natural order of the Extended public key provided in the account. Derivation index is the representation of that order - starts from 0 and ends at 2^31. When a new address is generated, the last not used index is used to generate an address. It is possible to skip some of the addresses to the different index, which means all the skipped addresses will no longer be used. </p> 

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

api_instance = SwaggerClient::OffChainAccountApi.new
body = SwaggerClient::OffchainAddresses.new # OffchainAddresses | 


begin
  #Create new deposit addresses in a batch call
  result = api_instance.generate_deposit_addresses_batch(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainAccountApi->generate_deposit_addresses_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**OffchainAddresses**](OffchainAddresses.md)|  | 

### Return type

[**Array&lt;Address&gt;**](Address.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_all_deposit_addresses**
> Array&lt;Address&gt; get_all_deposit_addresses(id)

Get all deposit addresses for account

<h4>1 credit per API call.</h4><br/> <p>Get all deposit addresses generated for account. It is possible to deposit funds from another blockchain address to any of associated addresses and they will be credited on the Tatum Ledger account connected to the address.</p> 

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

api_instance = SwaggerClient::OffChainAccountApi.new
id = 'id_example' # String | Account ID


begin
  #Get all deposit addresses for account
  result = api_instance.get_all_deposit_addresses(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainAccountApi->get_all_deposit_addresses: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Account ID | 

### Return type

[**Array&lt;Address&gt;**](Address.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **remove_address**
> remove_address(id, address, opts)

Remove address for account

<h4>1 credit per API call.</h4><br/> <p>Remove blockchain address from the Ledger account. Tatum will not check for any incoming deposits on this address for this account. It will not be possible to generate the address in the future anymore.</p> 

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

api_instance = SwaggerClient::OffChainAccountApi.new
id = 'id_example' # String | Account ID
address = 'address_example' # String | Blockchain address
opts = { 
  index: SwaggerClient::BigDecimal.new # BigDecimal | Destination tag or memo attribute for XRP or XLM addresses
}

begin
  #Remove address for account
  api_instance.remove_address(id, address, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainAccountApi->remove_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Account ID | 
 **address** | **String**| Blockchain address | 
 **index** | **BigDecimal**| Destination tag or memo attribute for XRP or XLM addresses | [optional] 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



