# SwaggerClient::BlockchainElrondNetworkEGLDApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**e_gld_get_current_block**](BlockchainElrondNetworkEGLDApi.md#e_gld_get_current_block) | **GET** /v3/egld/block/current | Get current block number
[**egld_blockchain_transfer**](BlockchainElrondNetworkEGLDApi.md#egld_blockchain_transfer) | **POST** /v3/egld/transaction | Send EGLD from account to account
[**egld_broadcast**](BlockchainElrondNetworkEGLDApi.md#egld_broadcast) | **POST** /v3/egld/broadcast | Broadcast signed EGLD transaction
[**egld_generate_address**](BlockchainElrondNetworkEGLDApi.md#egld_generate_address) | **GET** /v3/egld/address/{mnemonic}/{index} | Generate EGLD account address from mnemonic
[**egld_generate_address_private_key**](BlockchainElrondNetworkEGLDApi.md#egld_generate_address_private_key) | **POST** /v3/egld/wallet/priv | Generate EGLD private key
[**egld_generate_wallet**](BlockchainElrondNetworkEGLDApi.md#egld_generate_wallet) | **GET** /v3/egld/wallet | Generate EGLD wallet
[**egld_get_balance**](BlockchainElrondNetworkEGLDApi.md#egld_get_balance) | **GET** /v3/egld/account/balance/{address} | Get EGLD Account balance
[**egld_get_block**](BlockchainElrondNetworkEGLDApi.md#egld_get_block) | **GET** /v3/egld/block/{hash} | Get EGLD block by hash
[**egld_get_transaction**](BlockchainElrondNetworkEGLDApi.md#egld_get_transaction) | **GET** /v3/egld/transaction/{hash} | Get EGLD Transaction
[**egld_get_transaction_address**](BlockchainElrondNetworkEGLDApi.md#egld_get_transaction_address) | **GET** /v3/egld/transaction/address/{address} | Get count of outgoing EGLD transactions
[**egld_get_transaction_count**](BlockchainElrondNetworkEGLDApi.md#egld_get_transaction_count) | **GET** /v3/egld/transaction/count/{address} | Get count of outgoing EGLD transactions
[**egld_node_get**](BlockchainElrondNetworkEGLDApi.md#egld_node_get) | **GET** /v3/egld/node/{xApiKey}/* | Node HTTP driver
[**egld_node_post**](BlockchainElrondNetworkEGLDApi.md#egld_node_post) | **POST** /v3/egld/node/{xApiKey}/* | Node HTTP driver

# **e_gld_get_current_block**
> BigDecimal e_gld_get_current_block

Get current block number

<h4>1 credit per API call.</h4><br/> <p>Get EGLD current block number. This is the number of the latest block in the blockchain.</p>

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

api_instance = SwaggerClient::BlockchainElrondNetworkEGLDApi.new

begin
  #Get current block number
  result = api_instance.e_gld_get_current_block
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainElrondNetworkEGLDApi->e_gld_get_current_block: #{e}"
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



# **egld_blockchain_transfer**
> InlineResponse2005 egld_blockchain_transfer(body)

Send EGLD from account to account

<h4>2 credits per API call.</h4><br/> <p>Send EGLD from account to account.<br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on devnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = SwaggerClient::BlockchainElrondNetworkEGLDApi.new
body = SwaggerClient::EgldTransactionBody.new # EgldTransactionBody | 


begin
  #Send EGLD from account to account
  result = api_instance.egld_blockchain_transfer(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainElrondNetworkEGLDApi->egld_blockchain_transfer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EgldTransactionBody**](EgldTransactionBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **egld_broadcast**
> TransactionHashKMS egld_broadcast(body)

Broadcast signed EGLD transaction

<h4>2 credits per API call.</h4><br/> <p>Broadcast signed transaction to EGLD blockchain. This method is used internally from Tatum KMS or Tatum client libraries. It is possible to create custom signing mechanism and use this method only for broadcasting data to the blockchian.</p> 

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

api_instance = SwaggerClient::BlockchainElrondNetworkEGLDApi.new
body = SwaggerClient::BroadcastKMS.new # BroadcastKMS | 


begin
  #Broadcast signed EGLD transaction
  result = api_instance.egld_broadcast(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainElrondNetworkEGLDApi->egld_broadcast: #{e}"
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



# **egld_generate_address**
> InlineResponse20057 egld_generate_address(mnemonic, index)

Generate EGLD account address from mnemonic

<h4>1 credit per API call.</h4><br/> <p>Generate EGLD account deposit address from mnemonic phrase. Deposit address is generated for the specific index - each mnemonic phrase can generate up to 2^31 addresses starting from index 0 until 2^31.</p> 

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

api_instance = SwaggerClient::BlockchainElrondNetworkEGLDApi.new
mnemonic = 'mnemonic_example' # String | Mnemonic to use for generation of address.
index = SwaggerClient::BigDecimal.new # BigDecimal | Derivation index of desired address to be generated.


begin
  #Generate EGLD account address from mnemonic
  result = api_instance.egld_generate_address(mnemonic, index)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainElrondNetworkEGLDApi->egld_generate_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mnemonic** | **String**| Mnemonic to use for generation of address. | 
 **index** | **BigDecimal**| Derivation index of desired address to be generated. | 

### Return type

[**InlineResponse20057**](InlineResponse20057.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **egld_generate_address_private_key**
> PrivKey egld_generate_address_private_key(body)

Generate EGLD private key

<h4>1 credit per API call.</h4><br/> <p>Generate private key of address from mnemonic for given derivation path index. Private key is generated for the specific index - each mnemonic can generate up to 2^31 private keys starting from index 0 until 2^31.</p> 

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

api_instance = SwaggerClient::BlockchainElrondNetworkEGLDApi.new
body = SwaggerClient::PrivKeyRequest.new # PrivKeyRequest | 


begin
  #Generate EGLD private key
  result = api_instance.egld_generate_address_private_key(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainElrondNetworkEGLDApi->egld_generate_address_private_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PrivKeyRequest**](PrivKeyRequest.md)|  | 

### Return type

[**PrivKey**](PrivKey.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **egld_generate_wallet**
> InlineResponse20056 egld_generate_wallet(opts)

Generate EGLD wallet

<h4>1 credit per API call.</h4><br/> <p>The Elrond Address format is bech32, specified by the BIP 0173. The address always starts with an erd1. It is very convenient and secure, since it can generate 2^31 addresses from 1 mnemonic phrase. Mnemonic phrase consists of 24 special words in defined order and can restore access to all generated addresses and private keys. <br/> Each address is identified by 3 main values: <ul><li>Private Key - your secret value, which should never be revealed</li> <li>Public Key - public address to be published</li> <li>Derivation index - index of generated address</li></ul> </p> <p>Tatum follows BIP44 specification and generates for EGLD wallet with derivation path m'/44'/508'/0'/0'. More about BIP44 HD wallets can be found here - <a target=\"_blank\" href=\"https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki\">https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki</a>. Generate BIP44 compatible EGLD wallet.</p> 

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

api_instance = SwaggerClient::BlockchainElrondNetworkEGLDApi.new
opts = { 
  mnemonic: 'mnemonic_example' # String | Mnemonic to use for generation of private key.
}

begin
  #Generate EGLD wallet
  result = api_instance.egld_generate_wallet(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainElrondNetworkEGLDApi->egld_generate_wallet: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mnemonic** | **String**| Mnemonic to use for generation of private key. | [optional] 

### Return type

[**InlineResponse20056**](InlineResponse20056.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **egld_get_balance**
> InlineResponse20058 egld_get_balance(address)

Get EGLD Account balance

<h4>1 credit per API call.</h4><br/> <p>Get account balance in EGLD.</p>

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

api_instance = SwaggerClient::BlockchainElrondNetworkEGLDApi.new
address = 'address_example' # String | Account address


begin
  #Get EGLD Account balance
  result = api_instance.egld_get_balance(address)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainElrondNetworkEGLDApi->egld_get_balance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Account address | 

### Return type

[**InlineResponse20058**](InlineResponse20058.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **egld_get_block**
> EgldBlock egld_get_block(hash)

Get EGLD block by hash

<h4>1 credit per API call.</h4><br/> <p>Get EGLD block by block hash or block number. <a href='https://docs.elrond.com/sdk-and-tools/rest-api/blocks/' target='_blank'> EGLD docs </a></p>

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

api_instance = SwaggerClient::BlockchainElrondNetworkEGLDApi.new
hash = 'hash_example' # String | Block hash or nonce


begin
  #Get EGLD block by hash
  result = api_instance.egld_get_block(hash)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainElrondNetworkEGLDApi->egld_get_block: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Block hash or nonce | 

### Return type

[**EgldBlock**](EgldBlock.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **egld_get_transaction**
> EgldTx egld_get_transaction(hash)

Get EGLD Transaction

<h4>1 credit per API call.</h4><br/> <p>Get EGLD transaction by transaction hash. Detail result please find here <a href='https://docs.elrond.com/sdk-and-tools/rest-api/transactions/#get-transaction' target='_blank'> EGLD docs </a></p>

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

api_instance = SwaggerClient::BlockchainElrondNetworkEGLDApi.new
hash = 'hash_example' # String | Transaction hash


begin
  #Get EGLD Transaction
  result = api_instance.egld_get_transaction(hash)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainElrondNetworkEGLDApi->egld_get_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Transaction hash | 

### Return type

[**EgldTx**](EgldTx.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **egld_get_transaction_address**
> Array&lt;Object&gt; egld_get_transaction_address(address)

Get count of outgoing EGLD transactions

<h4>1 credit per API call.</h4><br/> <p>This endpoint allows one to retrieve the latest 20 transactions sent from an address.</p> 

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

api_instance = SwaggerClient::BlockchainElrondNetworkEGLDApi.new
address = 'address_example' # String | address


begin
  #Get count of outgoing EGLD transactions
  result = api_instance.egld_get_transaction_address(address)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainElrondNetworkEGLDApi->egld_get_transaction_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| address | 

### Return type

**Array&lt;Object&gt;**

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **egld_get_transaction_count**
> BigDecimal egld_get_transaction_count(address)

Get count of outgoing EGLD transactions

<h4>1 credit per API call.</h4><br/> <p>Get a number of outgoing EGLD transactions for the address. When a transaction is sent, there can be multiple outgoing transactions, which are not yet processed by the blockchain. To distinguish between them, there is a counter called a nonce, which represents the order of the transaction in the list of outgoing transactions.</p> 

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

api_instance = SwaggerClient::BlockchainElrondNetworkEGLDApi.new
address = 'address_example' # String | address


begin
  #Get count of outgoing EGLD transactions
  result = api_instance.egld_get_transaction_count(address)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainElrondNetworkEGLDApi->egld_get_transaction_count: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| address | 

### Return type

[**BigDecimal**](BigDecimal.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **egld_node_get**
> Object egld_node_get(x_api_key)

Node HTTP driver

<h4>2 credits per API call.</h4><br/> <p>Use this endpoint URL as a http-based driver to connect directly to the EGLD node provided by Tatum. To learn more about EGLD, please visit <a href=\"https://docs.elrond.com/sdk-and-tools/rest-api/nodes/\" target=\"_blank\">EGLD developer's guide.</a></p> 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BlockchainElrondNetworkEGLDApi.new
x_api_key = 'x_api_key_example' # String | Tatum X-API-Key used for authorization.


begin
  #Node HTTP driver
  result = api_instance.egld_node_get(x_api_key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainElrondNetworkEGLDApi->egld_node_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_api_key** | **String**| Tatum X-API-Key used for authorization. | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **egld_node_post**
> Object egld_node_post(bodyx_api_key)

Node HTTP driver

<h4>2 credits per API call.</h4><br/> <p>Use this endpoint URL as a http-based driver to connect directly to the EGLD node provided by Tatum. To learn more about EGLD, please visit <a href=\"https://docs.elrond.com/sdk-and-tools/rest-api/nodes/\" target=\"_blank\">EGLD developer's guide.</a></p> 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BlockchainElrondNetworkEGLDApi.new
body = nil # Object | 
x_api_key = 'x_api_key_example' # String | Tatum X-API-Key used for authorization.


begin
  #Node HTTP driver
  result = api_instance.egld_node_post(bodyx_api_key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainElrondNetworkEGLDApi->egld_node_post: #{e}"
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



