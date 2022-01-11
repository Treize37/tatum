# Tatum::BlockchainSolanaApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**solana_blockchain_transfer**](BlockchainSolanaApi.md#solana_blockchain_transfer) | **POST** /v3/solana/transaction | Send SOL from account to account
[**solana_generate_wallet**](BlockchainSolanaApi.md#solana_generate_wallet) | **GET** /v3/solana/wallet | Generate Solana wallet
[**solana_get_balance**](BlockchainSolanaApi.md#solana_get_balance) | **GET** /v3/solana/account/balance/{address} | Get Solana Account balance
[**solana_get_block**](BlockchainSolanaApi.md#solana_get_block) | **GET** /v3/solana/block/{height} | Get Solana block by number
[**solana_get_current_block**](BlockchainSolanaApi.md#solana_get_current_block) | **GET** /v3/solana/block/current | Get current block number
[**solana_get_transaction**](BlockchainSolanaApi.md#solana_get_transaction) | **GET** /v3/solana/transaction/{hash} | Get Solana Transaction
[**solana_web3_driver**](BlockchainSolanaApi.md#solana_web3_driver) | **POST** /v3/solana/web3/{xApiKey} | JSON RPC HTTP driver

# **solana_blockchain_transfer**
> InlineResponse2005 solana_blockchain_transfer(body)

Send SOL from account to account

<h4>2 credits per API call.</h4><br/> <p>Send SOL from account to account.<br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = Tatum::BlockchainSolanaApi.new
body = Tatum::SolanaTransactionBody.new # SolanaTransactionBody | 


begin
  #Send SOL from account to account
  result = api_instance.solana_blockchain_transfer(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainSolanaApi->solana_blockchain_transfer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SolanaTransactionBody**](SolanaTransactionBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **solana_generate_wallet**
> InlineResponse20047 solana_generate_wallet

Generate Solana wallet

<h4>1 credit per API call.</h4><br/> <p>Generate Solana private key and account address.</p> 

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

api_instance = Tatum::BlockchainSolanaApi.new

begin
  #Generate Solana wallet
  result = api_instance.solana_generate_wallet
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainSolanaApi->solana_generate_wallet: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20047**](InlineResponse20047.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **solana_get_balance**
> InlineResponse20048 solana_get_balance(address)

Get Solana Account balance

<h4>1 credit per API call.</h4><br/><p>Get Solana account balance in SOL. This method does not prints any balance of the SLP or NFT tokens on the account.</p>

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

api_instance = Tatum::BlockchainSolanaApi.new
address = 'address_example' # String | Account address


begin
  #Get Solana Account balance
  result = api_instance.solana_get_balance(address)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainSolanaApi->solana_get_balance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Account address | 

### Return type

[**InlineResponse20048**](InlineResponse20048.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **solana_get_block**
> SolanaBlock solana_get_block(height)

Get Solana block by number

<h4>1 credit per API call.</h4><br/> <p>Get Solana block by block hash or block number. <br/> You can find full data description here - <a target=\"blank\" href=\"https://docs.solana.com/developing/clients/jsonrpc-api#getblock\">https://docs.solana.com/developing/clients/jsonrpc-api#getblock</a> </p> 

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

api_instance = Tatum::BlockchainSolanaApi.new
height = Tatum::BigDecimal.new # BigDecimal | Block number


begin
  #Get Solana block by number
  result = api_instance.solana_get_block(height)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainSolanaApi->solana_get_block: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **height** | **BigDecimal**| Block number | 

### Return type

[**SolanaBlock**](SolanaBlock.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **solana_get_current_block**
> BigDecimal solana_get_current_block

Get current block number

<h4>1 credit per API call.</h4><br/><p>Get Solana current block number. This is the number of the latest block in the blockchain.</p>

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

api_instance = Tatum::BlockchainSolanaApi.new

begin
  #Get current block number
  result = api_instance.solana_get_current_block
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainSolanaApi->solana_get_current_block: #{e}"
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



# **solana_get_transaction**
> SolanaTx solana_get_transaction(hash)

Get Solana Transaction

<h4>2 credit per API call.</h4><br/><p>Get Solana transaction by transaction hash.<br/> You can find full data description here - <a target=\"blank\" href=\"https://docs.solana.com/developing/clients/jsonrpc-api#gettransaction\">https://docs.solana.com/developing/clients/jsonrpc-api#gettransaction</a> </p> 

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

api_instance = Tatum::BlockchainSolanaApi.new
hash = 'hash_example' # String | Transaction hash


begin
  #Get Solana Transaction
  result = api_instance.solana_get_transaction(hash)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainSolanaApi->solana_get_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Transaction hash | 

### Return type

[**SolanaTx**](SolanaTx.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **solana_web3_driver**
> Object solana_web3_driver(bodyx_api_key)

JSON RPC HTTP driver

<h4>2 credits per API call.</h4><br/> <p>Use this endpoint URL as a http-based JSON RPC driver to connect directly to the Solana node provided by Tatum. To learn more about Solana JSON RPC, please visit <a href=\"https://docs.solana.com/developing/clients/jsonrpc-api\" target=\"_blank\">Solana developer's guide.</a></p> 

### Example
```ruby
# load the gem
require 'tatum'

api_instance = Tatum::BlockchainSolanaApi.new
body = nil # Object | 
x_api_key = 'x_api_key_example' # String | Tatum X-API-Key used for authorization.


begin
  #JSON RPC HTTP driver
  result = api_instance.solana_web3_driver(bodyx_api_key)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainSolanaApi->solana_web3_driver: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Object**](Object.md)|  | 
 **x_api_key** | **String**| Tatum X-API-Key used for authorization. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



