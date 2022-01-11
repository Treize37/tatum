# Tatum::LedgerVirtualCurrencyApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_currency**](LedgerVirtualCurrencyApi.md#create_currency) | **POST** /v3/ledger/virtualCurrency | Create new virtual currency
[**get_currency**](LedgerVirtualCurrencyApi.md#get_currency) | **GET** /v3/ledger/virtualCurrency/{name} | Get virtual currency
[**mint_currency**](LedgerVirtualCurrencyApi.md#mint_currency) | **PUT** /v3/ledger/virtualCurrency/mint | Create new supply of virtual currency
[**revoke_currency**](LedgerVirtualCurrencyApi.md#revoke_currency) | **PUT** /v3/ledger/virtualCurrency/revoke | Destroy supply of virtual currency
[**update_currency**](LedgerVirtualCurrencyApi.md#update_currency) | **PUT** /v3/ledger/virtualCurrency | Update virtual currency

# **create_currency**
> Account create_currency(body)

Create new virtual currency

<h4>2 credits per API call.</h4><br/> <p>Create new virtual currency with given supply stored in account. This will create Tatum internal virtual currency. Every virtual currency must be prefixed with <b>VC_</b>.<br/> Every virtual currency must be pegged to existing FIAT or supported cryptocurrency. 1 unit of virtual currency has then the same amount as 1 unit of the base currency it is pegged to. It is possible to set a custom base rate for the virtual currency. (baseRate = 2 => 1 VC unit = 2 basePair units)<br/> Tatum virtual currency acts as any other asset within Tatum. For creation of ERC20 token, see <a href=\\\"#tatum-blockchain-api-erc20\\\">ERC20 </a>.<br/> This operation returns the newly created Tatum Ledger account with an initial balance set to the virtual currency's total supply. Total supply can be changed in the future.</p> 

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

api_instance = Tatum::LedgerVirtualCurrencyApi.new
body = Tatum::VirtualCurrency.new # VirtualCurrency | 


begin
  #Create new virtual currency
  result = api_instance.create_currency(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling LedgerVirtualCurrencyApi->create_currency: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**VirtualCurrency**](VirtualCurrency.md)|  | 

### Return type

[**Account**](Account.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_currency**
> VC get_currency(name)

Get virtual currency

<h4>1 credit per API call.</h4><br/><p>Get detail of virtual currency.<p>

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

api_instance = Tatum::LedgerVirtualCurrencyApi.new
name = 'name_example' # String | 


begin
  #Get virtual currency
  result = api_instance.get_currency(name)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling LedgerVirtualCurrencyApi->get_currency: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 

### Return type

[**VC**](VC.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **mint_currency**
> TransactionResult mint_currency(body)

Create new supply of virtual currency

<h4>2 credits per API call.</h4><br/> <p>Create new supply of virtual currency linked on the given accountId. Method increases the total supply of the currency.<br/> This method creates Ledger transaction with operationType MINT with undefined counterAccountId.<p> 

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

api_instance = Tatum::LedgerVirtualCurrencyApi.new
body = Tatum::VirtualCurrencyOperation.new # VirtualCurrencyOperation | 


begin
  #Create new supply of virtual currency
  result = api_instance.mint_currency(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling LedgerVirtualCurrencyApi->mint_currency: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**VirtualCurrencyOperation**](VirtualCurrencyOperation.md)|  | 

### Return type

[**TransactionResult**](TransactionResult.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **revoke_currency**
> TransactionResult revoke_currency(body)

Destroy supply of virtual currency

<h4>2 credits per API call.</h4><br/> <p>Destroy supply of virtual currency linked on the given accountId. Method decreases the total supply of the currency.<br/> This method creates Ledger transaction with operationType REVOKE with undefined counterAccountId.</p> 

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

api_instance = Tatum::LedgerVirtualCurrencyApi.new
body = Tatum::VirtualCurrencyOperation.new # VirtualCurrencyOperation | 


begin
  #Destroy supply of virtual currency
  result = api_instance.revoke_currency(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling LedgerVirtualCurrencyApi->revoke_currency: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**VirtualCurrencyOperation**](VirtualCurrencyOperation.md)|  | 

### Return type

[**TransactionResult**](TransactionResult.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_currency**
> update_currency(body)

Update virtual currency

<h4>2 credits per API call.</h4><br/><p>Change base pair and/or base rate of existing virtual currency.</p>

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

api_instance = Tatum::LedgerVirtualCurrencyApi.new
body = Tatum::VirtualCurrencyUpdate.new # VirtualCurrencyUpdate | 


begin
  #Update virtual currency
  api_instance.update_currency(body)
rescue Tatum::ApiError => e
  puts "Exception when calling LedgerVirtualCurrencyApi->update_currency: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**VirtualCurrencyUpdate**](VirtualCurrencyUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



