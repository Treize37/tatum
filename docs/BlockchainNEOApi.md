# SwaggerClient::BlockchainNEOApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**neo_account_detail**](BlockchainNEOApi.md#neo_account_detail) | **GET** /v3/neo/account/balance/{address} | Get NEO Account balance
[**neo_account_tx**](BlockchainNEOApi.md#neo_account_tx) | **GET** /v3/neo/account/tx/{address} | Get NEO Account transactions
[**neo_asset**](BlockchainNEOApi.md#neo_asset) | **GET** /v3/neo/asset/{asset} | Get Neo Asset details
[**neo_broadcast**](BlockchainNEOApi.md#neo_broadcast) | **POST** /v3/neo/broadcast | Broadcast NEO transaction
[**neo_claim_gas**](BlockchainNEOApi.md#neo_claim_gas) | **POST** /v3/neo/claim | Claim GAS
[**neo_contract_detail**](BlockchainNEOApi.md#neo_contract_detail) | **GET** /v3/neo/contract/{scriptHash} | Get NEO contract details
[**neo_generate_wallet**](BlockchainNEOApi.md#neo_generate_wallet) | **GET** /v3/neo/wallet | Generate NEO account
[**neo_get_block**](BlockchainNEOApi.md#neo_get_block) | **GET** /v3/neo/block/{hash} | Get NEO block
[**neo_get_current_block**](BlockchainNEOApi.md#neo_get_current_block) | **GET** /v3/neo/block/current | Get current NEO block
[**neo_get_transaction**](BlockchainNEOApi.md#neo_get_transaction) | **GET** /v3/neo/transaction/{hash} | Get NEO transaction by hash
[**neo_invoke_smart**](BlockchainNEOApi.md#neo_invoke_smart) | **POST** /v3/neo/invoke | Send NEO smart contract tokens
[**neo_transfer**](BlockchainNEOApi.md#neo_transfer) | **POST** /v3/neo/transaction | Send NEO assets
[**neo_tx_out**](BlockchainNEOApi.md#neo_tx_out) | **GET** /v3/neo/transaction/out/{txId}/{index} | Get NEO unspent transaction outputs

# **neo_account_detail**
> NeoAccount neo_account_detail(address)

Get NEO Account balance

<h4>5 credits per API call.</h4><br/><p>Get Balance of all assets (NEO, GAS, etc.) and tokens for the Account.</p>

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

api_instance = SwaggerClient::BlockchainNEOApi.new
address = 'address_example' # String | Address to get balance


begin
  #Get NEO Account balance
  result = api_instance.neo_account_detail(address)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainNEOApi->neo_account_detail: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Address to get balance | 

### Return type

[**NeoAccount**](NeoAccount.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **neo_account_tx**
> Array&lt;NeoAccountTx&gt; neo_account_tx(address)

Get NEO Account transactions

<h4>5 credits per API call.</h4><br/><p>Get NEO Account transactions.</p>

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

api_instance = SwaggerClient::BlockchainNEOApi.new
address = 'address_example' # String | 


begin
  #Get NEO Account transactions
  result = api_instance.neo_account_tx(address)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainNEOApi->neo_account_tx: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**|  | 

### Return type

[**Array&lt;NeoAccountTx&gt;**](NeoAccountTx.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **neo_asset**
> NeoAsset neo_asset(asset)

Get Neo Asset details

<h4>5 credits per API call.</h4><br/><p>Get information about asset.</p>

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

api_instance = SwaggerClient::BlockchainNEOApi.new
asset = 'asset_example' # String | Asset ID


begin
  #Get Neo Asset details
  result = api_instance.neo_asset(asset)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainNEOApi->neo_asset: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset** | **String**| Asset ID | 

### Return type

[**NeoAsset**](NeoAsset.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **neo_broadcast**
> TransactionHash neo_broadcast(body)

Broadcast NEO transaction

<h4>5 credits per API call.</h4><br/> <p>Broadcast NEO transaction. This method is used internally from Tatum Middleware or Tatum client libraries. It is possible to create custom signing mechanism and use this method only for broadcasting data to the blockchian.</p> 

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

api_instance = SwaggerClient::BlockchainNEOApi.new
body = SwaggerClient::Broadcast.new # Broadcast | 


begin
  #Broadcast NEO transaction
  result = api_instance.neo_broadcast(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainNEOApi->neo_broadcast: #{e}"
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



# **neo_claim_gas**
> TransactionHash neo_claim_gas(body)

Claim GAS

<h4>5 credits per API call.</h4><br/> <p>Claim GAS for NEO account. Every account owner can claim for the GAS, which is produced for owning NEO on the address.<br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, it is possible to use the Tatum client library for supported languages. </p> 

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

api_instance = SwaggerClient::BlockchainNEOApi.new
body = SwaggerClient::NeoClaimGas.new # NeoClaimGas | 


begin
  #Claim GAS
  result = api_instance.neo_claim_gas(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainNEOApi->neo_claim_gas: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**NeoClaimGas**](NeoClaimGas.md)|  | 

### Return type

[**TransactionHash**](TransactionHash.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **neo_contract_detail**
> NeoContract neo_contract_detail(script_hash)

Get NEO contract details

<h4>5 credits per API call.</h4><br/><p>Get NEO contract details.</p>

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

api_instance = SwaggerClient::BlockchainNEOApi.new
script_hash = 'script_hash_example' # String | Hash of smart contract


begin
  #Get NEO contract details
  result = api_instance.neo_contract_detail(script_hash)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainNEOApi->neo_contract_detail: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **script_hash** | **String**| Hash of smart contract | 

### Return type

[**NeoContract**](NeoContract.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **neo_generate_wallet**
> NeoWallet neo_generate_wallet

Generate NEO account

<h4>5 credits per API call.</h4><br/> <p>Generate NEO account. Tatum does not support HD wallet for NEO, only specific address and private key can be generated.</p> 

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

api_instance = SwaggerClient::BlockchainNEOApi.new

begin
  #Generate NEO account
  result = api_instance.neo_generate_wallet
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainNEOApi->neo_generate_wallet: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NeoWallet**](NeoWallet.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **neo_get_block**
> NeoBlock neo_get_block(hash)

Get NEO block

<h4>5 credits per API call.</h4><br/><p>Get NEO block by hash or height.</p>

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

api_instance = SwaggerClient::BlockchainNEOApi.new
hash = 'hash_example' # String | Block hash or height.


begin
  #Get NEO block
  result = api_instance.neo_get_block(hash)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainNEOApi->neo_get_block: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Block hash or height. | 

### Return type

[**NeoBlock**](NeoBlock.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **neo_get_current_block**
> BigDecimal neo_get_current_block

Get current NEO block

<h4>5 credits per API call.</h4><br/><p>Get current NEO block.</p>

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

api_instance = SwaggerClient::BlockchainNEOApi.new

begin
  #Get current NEO block
  result = api_instance.neo_get_current_block
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainNEOApi->neo_get_current_block: #{e}"
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



# **neo_get_transaction**
> NeoTx neo_get_transaction(hash)

Get NEO transaction by hash

<h4>5 credits per API call.</h4><br/><p>Get NEO transaction by hash.</p>

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

api_instance = SwaggerClient::BlockchainNEOApi.new
hash = 'hash_example' # String | Transaction hash.


begin
  #Get NEO transaction by hash
  result = api_instance.neo_get_transaction(hash)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainNEOApi->neo_get_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Transaction hash. | 

### Return type

[**NeoTx**](NeoTx.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **neo_invoke_smart**
> TransactionHash neo_invoke_smart(body)

Send NEO smart contract tokens

<h4>5 credits per API call.</h4><br/> <p>Send NEO smart contract tokens. It is possible to transfer custom NEO-based tokens to another account.<br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, it is possible to use the Tatum client library for supported languages. </p> 

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

api_instance = SwaggerClient::BlockchainNEOApi.new
body = SwaggerClient::NeoInvokeSmart.new # NeoInvokeSmart | 


begin
  #Send NEO smart contract tokens
  result = api_instance.neo_invoke_smart(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainNEOApi->neo_invoke_smart: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**NeoInvokeSmart**](NeoInvokeSmart.md)|  | 

### Return type

[**TransactionHash**](TransactionHash.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **neo_transfer**
> TransactionHash neo_transfer(body)

Send NEO assets

<h4>5 credits per API call.</h4><br/> <p>Send NEO assets from address to address. It is possible to send NEO and GAS in the same transaction.<br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, it is possible to use the Tatum client library for supported languages. </p> 

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

api_instance = SwaggerClient::BlockchainNEOApi.new
body = SwaggerClient::TransferNeoBlockchain.new # TransferNeoBlockchain | 


begin
  #Send NEO assets
  result = api_instance.neo_transfer(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainNEOApi->neo_transfer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TransferNeoBlockchain**](TransferNeoBlockchain.md)|  | 

### Return type

[**TransactionHash**](TransactionHash.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **neo_tx_out**
> NeoTxOut neo_tx_out(tx_id, index)

Get NEO unspent transaction outputs

<h4>5 credits per API call.</h4><br/><p>Get NEO unspent transaction outputs.</p>

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

api_instance = SwaggerClient::BlockchainNEOApi.new
tx_id = 'tx_id_example' # String | Transaction ID.
index = SwaggerClient::BigDecimal.new # BigDecimal | Index of output.


begin
  #Get NEO unspent transaction outputs
  result = api_instance.neo_tx_out(tx_id, index)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainNEOApi->neo_tx_out: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tx_id** | **String**| Transaction ID. | 
 **index** | **BigDecimal**| Index of output. | 

### Return type

[**NeoTxOut**](NeoTxOut.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



