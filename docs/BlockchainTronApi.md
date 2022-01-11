# SwaggerClient::BlockchainTronApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generate_tronwallet**](BlockchainTronApi.md#generate_tronwallet) | **GET** /v3/tron/wallet | Generate Tron wallet
[**tron_account_tx**](BlockchainTronApi.md#tron_account_tx) | **GET** /v3/tron/transaction/account/{address} | Get Tron Account transactions
[**tron_account_tx20**](BlockchainTronApi.md#tron_account_tx20) | **GET** /v3/tron/transaction/account/{address}/trc20 | Get Tron Account TRC20 transactions
[**tron_broadcast**](BlockchainTronApi.md#tron_broadcast) | **POST** /v3/tron/broadcast | Broadcast Tron transaction
[**tron_create_trc10**](BlockchainTronApi.md#tron_create_trc10) | **POST** /v3/tron/trc10/deploy | Create Tron TRC10 token
[**tron_create_trc20**](BlockchainTronApi.md#tron_create_trc20) | **POST** /v3/tron/trc20/deploy | Create Tron TRC20 token
[**tron_freeze**](BlockchainTronApi.md#tron_freeze) | **POST** /v3/tron/freezeBalance | Freeze Tron balance
[**tron_generate_address**](BlockchainTronApi.md#tron_generate_address) | **GET** /v3/tron/address/{xpub}/{index} | Generate Tron deposit address from Extended public key
[**tron_generate_address_private_key**](BlockchainTronApi.md#tron_generate_address_private_key) | **POST** /v3/tron/wallet/priv | Generate Tron private key
[**tron_get_account**](BlockchainTronApi.md#tron_get_account) | **GET** /v3/tron/account/{address} | Get Tron Account by address
[**tron_get_block**](BlockchainTronApi.md#tron_get_block) | **GET** /v3/tron/block/{hash} | Get Tron block
[**tron_get_current_block**](BlockchainTronApi.md#tron_get_current_block) | **GET** /v3/tron/info | Get current Tron block
[**tron_get_transaction**](BlockchainTronApi.md#tron_get_transaction) | **GET** /v3/tron/transaction/{hash} | Get Tron transaction by hash
[**tron_transfer**](BlockchainTronApi.md#tron_transfer) | **POST** /v3/tron/transaction | Send Tron transaction
[**tron_transfer_trc10**](BlockchainTronApi.md#tron_transfer_trc10) | **POST** /v3/tron/trc10/transaction | Send Tron TRC10 transaction
[**tron_transfer_trc20**](BlockchainTronApi.md#tron_transfer_trc20) | **POST** /v3/tron/trc20/transaction | Send Tron TRC20 transaction
[**tron_trc10_detail**](BlockchainTronApi.md#tron_trc10_detail) | **GET** /v3/tron/trc10/detail/{id} | Get Tron TRC10 token detail

# **generate_tronwallet**
> TronWallet generate_tronwallet(opts)

Generate Tron wallet

<h4>1 credit per API call.</h4><br/><p>Tatum supports BIP44 HD wallets. It is very convenient and secure, since it can generate 2^31 addresses from 1 mnemonic phrase. Mnemonic phrase consists of 24 special words in defined order and can restore access to all generated addresses and private keys.<br/>Each address is identified by 3 main values:<ul><li>Private Key - your secret value, which should never be revealed</li><li>Public Key - public address to be published</li><li>Derivation index - index of generated address</li></ul></p><p>Tatum follows BIP44 specification and generates for Bitcoin wallet with derivation path m'/44'/195'/0'/0. More about BIP44 HD wallets can be found here - <a target=\"_blank\" href=\"https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki\">https://github.com/tron/bips/blob/master/bip-0044.mediawiki</a>.         Generate BIP44 compatible Tron wallet.</p> 

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

api_instance = SwaggerClient::BlockchainTronApi.new
opts = { 
  mnemonic: 'mnemonic_example' # String | Mnemonic to use for generation of extended public and private keys.
}

begin
  #Generate Tron wallet
  result = api_instance.generate_tronwallet(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainTronApi->generate_tronwallet: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mnemonic** | **String**| Mnemonic to use for generation of extended public and private keys. | [optional] 

### Return type

[**TronWallet**](TronWallet.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **tron_account_tx**
> InlineResponse20064 tron_account_tx(address, opts)

Get Tron Account transactions

<h4>5 credits per API call.</h4><br/><p>Get Tron Account transactions. Default page size is 200 transactions per request.</p>

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

api_instance = SwaggerClient::BlockchainTronApi.new
address = 'address_example' # String | Address to get transactions for.
opts = { 
  _next: '_next_example' # String | If
}

begin
  #Get Tron Account transactions
  result = api_instance.tron_account_tx(address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainTronApi->tron_account_tx: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Address to get transactions for. | 
 **_next** | **String**| If | [optional] 

### Return type

[**InlineResponse20064**](InlineResponse20064.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **tron_account_tx20**
> InlineResponse20065 tron_account_tx20(address, opts)

Get Tron Account TRC20 transactions

<h4>5 credits per API call.</h4><br/><p>Get Tron Account TRC20 transactions. Default page size is 200 transactions per request.</p>

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

api_instance = SwaggerClient::BlockchainTronApi.new
address = 'address_example' # String | Address to get transactions for.
opts = { 
  _next: '_next_example' # String | If
}

begin
  #Get Tron Account TRC20 transactions
  result = api_instance.tron_account_tx20(address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainTronApi->tron_account_tx20: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Address to get transactions for. | 
 **_next** | **String**| If | [optional] 

### Return type

[**InlineResponse20065**](InlineResponse20065.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **tron_broadcast**
> TransactionHash tron_broadcast(body)

Broadcast Tron transaction

<h4>5 credits per API call.</h4><br/> <p>Broadcast Tron transaction. This method is used internally from Tatum Middleware or Tatum client libraries. It is possible to create custom signing mechanism and use this method only for broadcasting data to the blockchian.</p> 

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

api_instance = SwaggerClient::BlockchainTronApi.new
body = SwaggerClient::TronBroadcast.new # TronBroadcast | 


begin
  #Broadcast Tron transaction
  result = api_instance.tron_broadcast(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainTronApi->tron_broadcast: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TronBroadcast**](TronBroadcast.md)|  | 

### Return type

[**TransactionHash**](TransactionHash.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **tron_create_trc10**
> TransactionHash tron_create_trc10(body)

Create Tron TRC10 token

<h4>10 credits per API call.</h4><br/> <p>Create Tron TRC10 token. 1 account can create only 1 token. All supply of the tokens are transfered to the issuer account 100 seconds after the creation.<br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, it is possible to use the Tatum client library for supported languages or Tatum Middleware with a custom key management system. </p> 

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

api_instance = SwaggerClient::BlockchainTronApi.new
body = SwaggerClient::Trc10DeployBody.new # Trc10DeployBody | 


begin
  #Create Tron TRC10 token
  result = api_instance.tron_create_trc10(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainTronApi->tron_create_trc10: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Trc10DeployBody**](Trc10DeployBody.md)|  | 

### Return type

[**TransactionHash**](TransactionHash.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **tron_create_trc20**
> TransactionHash tron_create_trc20(body)

Create Tron TRC20 token

<h4>10 credits per API call.</h4><br/> <p>Create Tron TRC20 token. 1 account can create only 1 token. All supply of the tokens are transfered to the issuer account 100 seconds after the creation.<br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, it is possible to use the Tatum client library for supported languages or Tatum Middleware with a custom key management system. </p> 

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

api_instance = SwaggerClient::BlockchainTronApi.new
body = SwaggerClient::Trc20DeployBody.new # Trc20DeployBody | 


begin
  #Create Tron TRC20 token
  result = api_instance.tron_create_trc20(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainTronApi->tron_create_trc20: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Trc20DeployBody**](Trc20DeployBody.md)|  | 

### Return type

[**TransactionHash**](TransactionHash.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **tron_freeze**
> TransactionHash tron_freeze(body)

Freeze Tron balance

<h4>10 credits per API call.</h4><br/> <p>Freeze Tron assets on the address. By freezing assets, you can obtain energy or bandwith to perform transactions.<br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, it is possible to use the Tatum client library for supported languages or Tatum Middleware with a custom key management system. </p> 

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

api_instance = SwaggerClient::BlockchainTronApi.new
body = SwaggerClient::TronFreezeBalanceBody.new # TronFreezeBalanceBody | 


begin
  #Freeze Tron balance
  result = api_instance.tron_freeze(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainTronApi->tron_freeze: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TronFreezeBalanceBody**](TronFreezeBalanceBody.md)|  | 

### Return type

[**TransactionHash**](TransactionHash.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **tron_generate_address**
> InlineResponse20062 tron_generate_address(xpub, index)

Generate Tron deposit address from Extended public key

<h4>5 credit per API call.</h4><br/> <p>Generate Tron deposit address from Extended public key. Deposit address is generated for the specific index - each extended public key can generate up to 2^32 addresses starting from index 0 until 2^31.</p> 

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

api_instance = SwaggerClient::BlockchainTronApi.new
xpub = 'xpub_example' # String | Extended public key of wallet.
index = SwaggerClient::BigDecimal.new # BigDecimal | Derivation index of desired address to be generated.


begin
  #Generate Tron deposit address from Extended public key
  result = api_instance.tron_generate_address(xpub, index)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainTronApi->tron_generate_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xpub** | **String**| Extended public key of wallet. | 
 **index** | **BigDecimal**| Derivation index of desired address to be generated. | 

### Return type

[**InlineResponse20062**](InlineResponse20062.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **tron_generate_address_private_key**
> PrivKey tron_generate_address_private_key(body)

Generate Tron private key

<h4>10 credit per API call.</h4><br/> <p>Generate private key for address from mnemonic for given derivation path index. Private key is generated for the specific index - each mnemonic can generate up to 2^31 private keys starting from index 0 until 2^31.</p> 

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

api_instance = SwaggerClient::BlockchainTronApi.new
body = SwaggerClient::PrivKeyRequest.new # PrivKeyRequest | 


begin
  #Generate Tron private key
  result = api_instance.tron_generate_address_private_key(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainTronApi->tron_generate_address_private_key: #{e}"
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



# **tron_get_account**
> TronAccount tron_get_account(address)

Get Tron Account by address

<h4>5 credits per API call.</h4><br/><p>Get Tron account by address.</p>

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

api_instance = SwaggerClient::BlockchainTronApi.new
address = 'address_example' # String | Account address.


begin
  #Get Tron Account by address
  result = api_instance.tron_get_account(address)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainTronApi->tron_get_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Account address. | 

### Return type

[**TronAccount**](TronAccount.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **tron_get_block**
> TronBlock tron_get_block(hash)

Get Tron block

<h4>5 credits per API call.</h4><br/><p>Get Tron block by hash or height.</p>

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

api_instance = SwaggerClient::BlockchainTronApi.new
hash = 'hash_example' # String | Block hash or height.


begin
  #Get Tron block
  result = api_instance.tron_get_block(hash)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainTronApi->tron_get_block: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Block hash or height. | 

### Return type

[**TronBlock**](TronBlock.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **tron_get_current_block**
> InlineResponse20063 tron_get_current_block

Get current Tron block

<h4>5 credits per API call.</h4><br/><p>Get current Tron block.</p>

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

api_instance = SwaggerClient::BlockchainTronApi.new

begin
  #Get current Tron block
  result = api_instance.tron_get_current_block
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainTronApi->tron_get_current_block: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20063**](InlineResponse20063.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **tron_get_transaction**
> TronTx tron_get_transaction(hash)

Get Tron transaction by hash

<h4>5 credits per API call.</h4><br/><p>Get Tron transaction by hash.</p>

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

api_instance = SwaggerClient::BlockchainTronApi.new
hash = 'hash_example' # String | Transaction hash.


begin
  #Get Tron transaction by hash
  result = api_instance.tron_get_transaction(hash)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainTronApi->tron_get_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Transaction hash. | 

### Return type

[**TronTx**](TronTx.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **tron_transfer**
> TransactionHash tron_transfer(body)

Send Tron transaction

<h4>10 credits per API call.</h4><br/> <p>Send Tron transaction from address to address.<br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, it is possible to use the Tatum client library for supported languages or Tatum Middleware with a custom key management system. </p> 

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

api_instance = SwaggerClient::BlockchainTronApi.new
body = SwaggerClient::TronTransactionBody.new # TronTransactionBody | 


begin
  #Send Tron transaction
  result = api_instance.tron_transfer(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainTronApi->tron_transfer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TronTransactionBody**](TronTransactionBody.md)|  | 

### Return type

[**TransactionHash**](TransactionHash.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **tron_transfer_trc10**
> TransactionHash tron_transfer_trc10(body)

Send Tron TRC10 transaction

<h4>10 credits per API call.</h4><br/> <p>Send Tron TRC10 transaction from address to address.<br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, it is possible to use the Tatum client library for supported languages or Tatum Middleware with a custom key management system. </p> 

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

api_instance = SwaggerClient::BlockchainTronApi.new
body = SwaggerClient::Trc10TransactionBody.new # Trc10TransactionBody | 


begin
  #Send Tron TRC10 transaction
  result = api_instance.tron_transfer_trc10(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainTronApi->tron_transfer_trc10: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Trc10TransactionBody**](Trc10TransactionBody.md)|  | 

### Return type

[**TransactionHash**](TransactionHash.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **tron_transfer_trc20**
> TransactionHash tron_transfer_trc20(body)

Send Tron TRC20 transaction

<h4>10 credits per API call.</h4><br/> <p>Send Tron TRC20 transaction from address to address.<br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, it is possible to use the Tatum client library for supported languages or Tatum Middleware with a custom key management system. </p> 

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

api_instance = SwaggerClient::BlockchainTronApi.new
body = SwaggerClient::Trc20TransactionBody.new # Trc20TransactionBody | 


begin
  #Send Tron TRC20 transaction
  result = api_instance.tron_transfer_trc20(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainTronApi->tron_transfer_trc20: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Trc20TransactionBody**](Trc20TransactionBody.md)|  | 

### Return type

[**TransactionHash**](TransactionHash.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **tron_trc10_detail**
> TronTrc10Detail tron_trc10_detail(id)

Get Tron TRC10 token detail

<h4>5 credits per API call.</h4><br/> <p>Get Tron TRC10 token details.</p> 

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

api_instance = SwaggerClient::BlockchainTronApi.new
id = SwaggerClient::BigDecimal.new # BigDecimal | TRC10 token ID


begin
  #Get Tron TRC10 token detail
  result = api_instance.tron_trc10_detail(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainTronApi->tron_trc10_detail: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **BigDecimal**| TRC10 token ID | 

### Return type

[**TronTrc10Detail**](TronTrc10Detail.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



