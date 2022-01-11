# SwaggerClient::BlockchainXRPApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**xrp_account_settings**](BlockchainXRPApi.md#xrp_account_settings) | **POST** /v3/xrp/account/settings | Modify XRP account
[**xrp_broadcast**](BlockchainXRPApi.md#xrp_broadcast) | **POST** /v3/xrp/broadcast | Broadcast signed XRP transaction
[**xrp_get_account_balance**](BlockchainXRPApi.md#xrp_get_account_balance) | **GET** /v3/xrp/account/{account}/balance | Get Account Balance
[**xrp_get_account_info**](BlockchainXRPApi.md#xrp_get_account_info) | **GET** /v3/xrp/account/{account} | Get Account info
[**xrp_get_account_tx**](BlockchainXRPApi.md#xrp_get_account_tx) | **GET** /v3/xrp/account/tx/{account} | Get Account transactions
[**xrp_get_fee**](BlockchainXRPApi.md#xrp_get_fee) | **GET** /v3/xrp/fee | Get actual Blockchain fee
[**xrp_get_last_closed_ledger**](BlockchainXRPApi.md#xrp_get_last_closed_ledger) | **GET** /v3/xrp/info | Get XRP Blockchain Information
[**xrp_get_ledger**](BlockchainXRPApi.md#xrp_get_ledger) | **GET** /v3/xrp/ledger/{i} | Get Ledger
[**xrp_get_transaction**](BlockchainXRPApi.md#xrp_get_transaction) | **GET** /v3/xrp/transaction/{hash} | Get XRP Transaction by hash
[**xrp_transfer_blockchain**](BlockchainXRPApi.md#xrp_transfer_blockchain) | **POST** /v3/xrp/transaction | Send XRP from address to address
[**xrp_trust_line_blockchain**](BlockchainXRPApi.md#xrp_trust_line_blockchain) | **POST** /v3/xrp/trust | Create / Update / Delete XRP trust line
[**xrp_wallet**](BlockchainXRPApi.md#xrp_wallet) | **GET** /v3/xrp/account | Generate XRP account

# **xrp_account_settings**
> InlineResponse2005 xrp_account_settings(body)

Modify XRP account

<h4>10 credits per API call.</h4><br/><p> <p>Modify XRP account settings. If an XRP account should be an issuer of the custom asset, this accounts should have rippling enabled to true. In order to support off-chain processing, required destination tag should be set on the account.<br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = SwaggerClient::BlockchainXRPApi.new
body = SwaggerClient::AccountSettingsBody.new # AccountSettingsBody | 


begin
  #Modify XRP account
  result = api_instance.xrp_account_settings(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainXRPApi->xrp_account_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AccountSettingsBody**](AccountSettingsBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **xrp_broadcast**
> TransactionHashKMS xrp_broadcast(body)

Broadcast signed XRP transaction

<h4>5 credits per API call.</h4><br/> <p>Broadcast signed transaction to XRP blockchain. This method is used internally from Tatum KMS, Tatum Middleware or Tatum client libraries. It is possible to create custom signing mechanism and use this method only for broadcasting data to the blockchian.</p> 

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

api_instance = SwaggerClient::BlockchainXRPApi.new
body = SwaggerClient::BroadcastKMS.new # BroadcastKMS | 


begin
  #Broadcast signed XRP transaction
  result = api_instance.xrp_broadcast(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainXRPApi->xrp_broadcast: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BroadcastKMS**](BroadcastKMS.md)|  | 

### Return type

[**TransactionHashKMS**](TransactionHashKMS.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **xrp_get_account_balance**
> XrpAccountBalance xrp_get_account_balance(account)

Get Account Balance

<h4>5 credits per API call.</h4><br/><p>Get XRP Account Balance. Obtain balance of the XRP and other assets on the account.</p>

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

api_instance = SwaggerClient::BlockchainXRPApi.new
account = 'account_example' # String | Account address


begin
  #Get Account Balance
  result = api_instance.xrp_get_account_balance(account)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainXRPApi->xrp_get_account_balance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account** | **String**| Account address | 

### Return type

[**XrpAccountBalance**](XrpAccountBalance.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **xrp_get_account_info**
> XrpAccount xrp_get_account_info(account)

Get Account info

<h4>5 credits per API call.</h4><br/><p>Get XRP Account info.</p>

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

api_instance = SwaggerClient::BlockchainXRPApi.new
account = 'account_example' # String | Account address


begin
  #Get Account info
  result = api_instance.xrp_get_account_info(account)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainXRPApi->xrp_get_account_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account** | **String**| Account address | 

### Return type

[**XrpAccount**](XrpAccount.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **xrp_get_account_tx**
> XrpAccountTx xrp_get_account_tx(account, opts)

Get Account transactions

<h4>5 credits per API call.</h4><br/><p>List all Account transactions.</p>

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

api_instance = SwaggerClient::BlockchainXRPApi.new
account = 'account_example' # String | Address of XRP account.
opts = { 
  min: SwaggerClient::BigDecimal.new, # BigDecimal | Ledger version to start scanning for transactions from.
  marker: 'marker_example' # String | Marker from the last paginated request. It is stringified JSON from previous response.
}

begin
  #Get Account transactions
  result = api_instance.xrp_get_account_tx(account, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainXRPApi->xrp_get_account_tx: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account** | **String**| Address of XRP account. | 
 **min** | **BigDecimal**| Ledger version to start scanning for transactions from. | [optional] 
 **marker** | **String**| Marker from the last paginated request. It is stringified JSON from previous response. | [optional] 

### Return type

[**XrpAccountTx**](XrpAccountTx.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **xrp_get_fee**
> XrpFee xrp_get_fee

Get actual Blockchain fee

<h4>5 credits per API call.</h4><br/> <p>Get XRP Blockchain fee. Standard fee for the transaction is available in the drops.base_fee section and is 10 XRP drops by default. When there is a heavy traffic on the blockchain, fees are increasing according to current traffic.</p> 

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

api_instance = SwaggerClient::BlockchainXRPApi.new

begin
  #Get actual Blockchain fee
  result = api_instance.xrp_get_fee
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainXRPApi->xrp_get_fee: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**XrpFee**](XrpFee.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **xrp_get_last_closed_ledger**
> XrpInfo xrp_get_last_closed_ledger

Get XRP Blockchain Information

<h4>5 credits per API call.</h4><br/><p>Get XRP Blockchain last closed ledger index and hash.</p>

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

api_instance = SwaggerClient::BlockchainXRPApi.new

begin
  #Get XRP Blockchain Information
  result = api_instance.xrp_get_last_closed_ledger
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainXRPApi->xrp_get_last_closed_ledger: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**XrpInfo**](XrpInfo.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **xrp_get_ledger**
> XrpLedger xrp_get_ledger(i)

Get Ledger

<h4>5 credits per API call.</h4><br/><p>Get ledger by sequence.</p>

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

api_instance = SwaggerClient::BlockchainXRPApi.new
i = SwaggerClient::BigDecimal.new # BigDecimal | Sequence of XRP ledger.


begin
  #Get Ledger
  result = api_instance.xrp_get_ledger(i)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainXRPApi->xrp_get_ledger: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **i** | **BigDecimal**| Sequence of XRP ledger. | 

### Return type

[**XrpLedger**](XrpLedger.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **xrp_get_transaction**
> XrpTx xrp_get_transaction(hash)

Get XRP Transaction by hash

<h4>5 credits per API call.</h4><br/><p>Get XRP Transaction by transaction hash.</p>

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

api_instance = SwaggerClient::BlockchainXRPApi.new
hash = 'hash_example' # String | Transaction hash


begin
  #Get XRP Transaction by hash
  result = api_instance.xrp_get_transaction(hash)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainXRPApi->xrp_get_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Transaction hash | 

### Return type

[**XrpTx**](XrpTx.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **xrp_transfer_blockchain**
> InlineResponse2005 xrp_transfer_blockchain(body)

Send XRP from address to address

<h4>10 credits per API call.</h4><br/> <p>Send XRP from account to account.<br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = SwaggerClient::BlockchainXRPApi.new
body = SwaggerClient::XrpTransactionBody.new # XrpTransactionBody | 


begin
  #Send XRP from address to address
  result = api_instance.xrp_transfer_blockchain(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainXRPApi->xrp_transfer_blockchain: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**XrpTransactionBody**](XrpTransactionBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **xrp_trust_line_blockchain**
> InlineResponse2005 xrp_trust_line_blockchain(body)

Create / Update / Delete XRP trust line

<h4>10 credits per API call.</h4><br/><p> <p>Create / Update / Delete XRP trust line between accounts to transfer private assets. By creating trustline for the first time, the asset is created automatically and can be used in the transactions.<br/> Account setting rippling must be enabled on the issuer account before the trust line creation to asset work correctly. Creating a trust line will cause an additional 5 XRP to be blocked on the account.<br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages.</p> 

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

api_instance = SwaggerClient::BlockchainXRPApi.new
body = SwaggerClient::XrpTrustBody.new # XrpTrustBody | 


begin
  #Create / Update / Delete XRP trust line
  result = api_instance.xrp_trust_line_blockchain(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainXRPApi->xrp_trust_line_blockchain: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**XrpTrustBody**](XrpTrustBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **xrp_wallet**
> XrpWallet xrp_wallet

Generate XRP account

<h4>5 credits per API call.</h4><br/> <p>Generate XRP account. Tatum does not support HD wallet for XRP, only specific address and private key can be generated.</p> 

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

api_instance = SwaggerClient::BlockchainXRPApi.new

begin
  #Generate XRP account
  result = api_instance.xrp_wallet
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainXRPApi->xrp_wallet: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**XrpWallet**](XrpWallet.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



