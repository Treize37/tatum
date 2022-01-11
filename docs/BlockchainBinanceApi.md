# Tatum::BlockchainBinanceApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bnb_blockchain_transfer**](BlockchainBinanceApi.md#bnb_blockchain_transfer) | **POST** /v3/bnb/transaction | Send Binance / Binance Token from account to account
[**bnb_broadcast**](BlockchainBinanceApi.md#bnb_broadcast) | **POST** /v3/bnb/broadcast | Broadcast signed BNB transaction
[**bnb_generate_wallet**](BlockchainBinanceApi.md#bnb_generate_wallet) | **GET** /v3/bnb/account | Generate Binance wallet
[**bnb_get_account**](BlockchainBinanceApi.md#bnb_get_account) | **GET** /v3/bnb/account/{address} | Get Binance Account
[**bnb_get_block**](BlockchainBinanceApi.md#bnb_get_block) | **GET** /v3/bnb/block/{height} | Get Binance Transactions in Block
[**bnb_get_current_block**](BlockchainBinanceApi.md#bnb_get_current_block) | **GET** /v3/bnb/block/current | Get Binance current block
[**bnb_get_transaction**](BlockchainBinanceApi.md#bnb_get_transaction) | **GET** /v3/bnb/transaction/{hash} | Get Binance Transaction

# **bnb_blockchain_transfer**
> TransactionHash bnb_blockchain_transfer(body)

Send Binance / Binance Token from account to account

<h4>10 credits per API call.</h4><br/> <p>Send Binance or Binance Token token from account to account.<br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production,  <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request.  Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = Tatum::BlockchainBinanceApi.new
body = Tatum::BnbTransactionBody.new # BnbTransactionBody | 


begin
  #Send Binance / Binance Token from account to account
  result = api_instance.bnb_blockchain_transfer(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainBinanceApi->bnb_blockchain_transfer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BnbTransactionBody**](BnbTransactionBody.md)|  | 

### Return type

[**TransactionHash**](TransactionHash.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **bnb_broadcast**
> TransactionHash bnb_broadcast(body)

Broadcast signed BNB transaction

<h4>5 credits per API call.</h4><br/> <p>Broadcast signed transaction to Binance blockchain. This method is used internally from Tatum Middleware or Tatum client libraries. It is possible to create custom signing mechanism and use this method only for broadcasting data to the blockchian.</p> 

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

api_instance = Tatum::BlockchainBinanceApi.new
body = Tatum::Broadcast.new # Broadcast | 


begin
  #Broadcast signed BNB transaction
  result = api_instance.bnb_broadcast(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainBinanceApi->bnb_broadcast: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Broadcast**](Broadcast.md)|  | 

### Return type

[**TransactionHash**](TransactionHash.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **bnb_generate_wallet**
> BnbWallet bnb_generate_wallet

Generate Binance wallet

<h4>5 credits per API call.</h4><br/> <p>Generate BNB account. Tatum does not support HD wallet for BNB, only specific address and private key can be generated.</p> 

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

api_instance = Tatum::BlockchainBinanceApi.new

begin
  #Generate Binance wallet
  result = api_instance.bnb_generate_wallet
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainBinanceApi->bnb_generate_wallet: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BnbWallet**](BnbWallet.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **bnb_get_account**
> BnbAccount bnb_get_account(address)

Get Binance Account

<h4>5 credits per API call.</h4><br/><p>Get Binance Account Detail by address.</p>

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

api_instance = Tatum::BlockchainBinanceApi.new
address = 'address_example' # String | Account address


begin
  #Get Binance Account
  result = api_instance.bnb_get_account(address)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainBinanceApi->bnb_get_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Account address | 

### Return type

[**BnbAccount**](BnbAccount.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **bnb_get_block**
> BnbBlock bnb_get_block(height)

Get Binance Transactions in Block

<h4>5 credits per API call.</h4><br/><p>Get Transactions in block by block height.</p>

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

api_instance = Tatum::BlockchainBinanceApi.new
height = Tatum::BigDecimal.new # BigDecimal | Block height


begin
  #Get Binance Transactions in Block
  result = api_instance.bnb_get_block(height)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainBinanceApi->bnb_get_block: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **height** | **BigDecimal**| Block height | 

### Return type

[**BnbBlock**](BnbBlock.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **bnb_get_current_block**
> BigDecimal bnb_get_current_block

Get Binance current block

<h4>5 credits per API call.</h4><br/><p>Get Binance current block number.</p>

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

api_instance = Tatum::BlockchainBinanceApi.new

begin
  #Get Binance current block
  result = api_instance.bnb_get_current_block
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainBinanceApi->bnb_get_current_block: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BigDecimal**](BigDecimal.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **bnb_get_transaction**
> BnbTx bnb_get_transaction(hash)

Get Binance Transaction

<h4>5 credits per API call.</h4><br/><p>Get Binance Transaction by transaction hash.</p>

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

api_instance = Tatum::BlockchainBinanceApi.new
hash = 'hash_example' # String | Transaction hash


begin
  #Get Binance Transaction
  result = api_instance.bnb_get_transaction(hash)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainBinanceApi->bnb_get_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Transaction hash | 

### Return type

[**BnbTx**](BnbTx.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



