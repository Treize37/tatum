# SwaggerClient::BlockchainQTUMApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**estimate_fee**](BlockchainQTUMApi.md#estimate_fee) | **GET** /v3/qtum/transactions/gas/{nblocks} | Get QTUM estimated gas fees
[**estimate_fee_per_byte**](BlockchainQTUMApi.md#estimate_fee_per_byte) | **GET** /v3/qtum/transactions/gasbytes/{nblocks} | Get QTUM estimated gas fees per byte
[**generate_address_privatekey**](BlockchainQTUMApi.md#generate_address_privatekey) | **GET** /v3/qtum/address/{key} | Generate QTUM Address from private key
[**generate_private_key_from_mnemonic**](BlockchainQTUMApi.md#generate_private_key_from_mnemonic) | **POST** /v3/qtum/wallet/priv | Generate QTUM private key
[**get_qtum_paginated_transaction**](BlockchainQTUMApi.md#get_qtum_paginated_transaction) | **GET** /v3/qtum/transactions/address/{address} | Get QTUM Transactions by address
[**get_qtum_transaction**](BlockchainQTUMApi.md#get_qtum_transaction) | **GET** /v3/qtum/transaction/{id} | Get QTUM Transaction
[**get_qtum_utx_os**](BlockchainQTUMApi.md#get_qtum_utx_os) | **GET** /v3/qtum/utxo/{address} | Get UTXO
[**qtum_broadcast**](BlockchainQTUMApi.md#qtum_broadcast) | **POST** /v3/qtum/broadcast | Broadcast signed QTUM transaction
[**qtum_generate_address**](BlockchainQTUMApi.md#qtum_generate_address) | **GET** /v3/qtum/address/{xpub}/{i} | Generate QTUM account address from Extended public key
[**qtum_generate_wallet**](BlockchainQTUMApi.md#qtum_generate_wallet) | **GET** /v3/qtum/wallet | Generate QTUM wallet
[**qtum_get_balance**](BlockchainQTUMApi.md#qtum_get_balance) | **GET** /v3/qtum/account/balance/{address} | Get QTUM Account balance
[**qtum_get_block**](BlockchainQTUMApi.md#qtum_get_block) | **GET** /v3/qtum/block/{hash} | Get QTUM block by hash
[**qtum_get_current_block**](BlockchainQTUMApi.md#qtum_get_current_block) | **GET** /v3/qtum/block/current | Get current block number

# **estimate_fee**
> Object estimate_fee(nblocks)

Get QTUM estimated gas fees

<h4>1 credit per API call.</h4><br/><p>Get estimated gas fees</p>

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

api_instance = SwaggerClient::BlockchainQTUMApi.new
nblocks = SwaggerClient::BigDecimal.new # BigDecimal | nblocks


begin
  #Get QTUM estimated gas fees
  result = api_instance.estimate_fee(nblocks)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainQTUMApi->estimate_fee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nblocks** | **BigDecimal**| nblocks | 

### Return type

**Object**

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **estimate_fee_per_byte**
> Object estimate_fee_per_byte(nblocks)

Get QTUM estimated gas fees per byte

<h4>1 credit per API call.</h4><br/><p>Get estimated gas fees per byte</p>

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

api_instance = SwaggerClient::BlockchainQTUMApi.new
nblocks = SwaggerClient::BigDecimal.new # BigDecimal | nblocks


begin
  #Get QTUM estimated gas fees per byte
  result = api_instance.estimate_fee_per_byte(nblocks)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainQTUMApi->estimate_fee_per_byte: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nblocks** | **BigDecimal**| nblocks | 

### Return type

**Object**

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **generate_address_privatekey**
> InlineResponse20077 generate_address_privatekey(key)

Generate QTUM Address from private key

<h4>1 credit per API call.</h4><br/><p>Generate Address by private key</p>

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

api_instance = SwaggerClient::BlockchainQTUMApi.new
key = 'key_example' # String | Private key


begin
  #Generate QTUM Address from private key
  result = api_instance.generate_address_privatekey(key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainQTUMApi->generate_address_privatekey: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| Private key | 

### Return type

[**InlineResponse20077**](InlineResponse20077.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **generate_private_key_from_mnemonic**
> InlineResponse20076 generate_private_key_from_mnemonic(body)

Generate QTUM private key

<h4>1 credit per API call.</h4><br/><p>Tatum supports BIP44 HD wallets. It is very convenient and secure, since it can generate 2^31 addresses from 1 mnemonic phrase. Mnemonic phrase consists of 24 special words in defined order and can restore access to all generated addresses and private keys.<br/>Each address is identified by 3 main values:<ul><li>Private Key - your secret value, which should never be revealed</li><li>Public Key - public address to be published</li><li>Derivation index - index of generated address</li></ul></p><p>Tatum follows BIP44 specification and generates for Qtum wallet with derivation path defined by QTUM. More about BIP44 HD wallets can be found here - <a target=\"_blank\" href=\"https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki\">https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki</a>. Generate BIP44 compatible QTUM wallet.</p> 

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

api_instance = SwaggerClient::BlockchainQTUMApi.new
body = SwaggerClient::WalletPrivBody.new # WalletPrivBody | 


begin
  #Generate QTUM private key
  result = api_instance.generate_private_key_from_mnemonic(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainQTUMApi->generate_private_key_from_mnemonic: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**WalletPrivBody**](WalletPrivBody.md)|  | 

### Return type

[**InlineResponse20076**](InlineResponse20076.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_qtum_paginated_transaction**
> QtumIRawTransactions get_qtum_paginated_transaction(address, page_size, opts)

Get QTUM Transactions by address

<h4>1 credit per API call.</h4><br/><p>Get QTUM paginated transactions by address.</p>

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

api_instance = SwaggerClient::BlockchainQTUMApi.new
address = 'address_example' # String | Address
page_size = SwaggerClient::BigDecimal.new # BigDecimal | pageSize
opts = { 
  offset: SwaggerClient::BigDecimal.new # BigDecimal | offset
}

begin
  #Get QTUM Transactions by address
  result = api_instance.get_qtum_paginated_transaction(address, page_size, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainQTUMApi->get_qtum_paginated_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Address | 
 **page_size** | **BigDecimal**| pageSize | 
 **offset** | **BigDecimal**| offset | [optional] 

### Return type

[**QtumIRawTransactions**](QtumIRawTransactions.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_qtum_transaction**
> QtumIRawTransactionInfo get_qtum_transaction(id)

Get QTUM Transaction

<h4>1 credit per API call.</h4><br/><p>Get QTUM transaction by transaction hash.</p>

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

api_instance = SwaggerClient::BlockchainQTUMApi.new
id = 'id_example' # String | Transaction hash


begin
  #Get QTUM Transaction
  result = api_instance.get_qtum_transaction(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainQTUMApi->get_qtum_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Transaction hash | 

### Return type

[**QtumIRawTransactionInfo**](QtumIRawTransactionInfo.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_qtum_utx_os**
> QtumIUTXO get_qtum_utx_os(address)

Get UTXO

<h4>1 credit per API call.</h4><br/><p>Get UTXOS by address</p>

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

api_instance = SwaggerClient::BlockchainQTUMApi.new
address = 'address_example' # String | address


begin
  #Get UTXO
  result = api_instance.get_qtum_utx_os(address)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainQTUMApi->get_qtum_utx_os: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| address | 

### Return type

[**QtumIUTXO**](QtumIUTXO.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **qtum_broadcast**
> TransactionHashKMS qtum_broadcast(body)

Broadcast signed QTUM transaction

<h4>2 credits per API call.</h4><br/> <p>Broadcast signed transaction to QTUM blockchain. This method is used internally from Tatum KMS, Tatum Middleware or Tatum client libraries. It is possible to create custom signing mechanism and use this method only for broadcasting data to the blockchian.</p> 

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

api_instance = SwaggerClient::BlockchainQTUMApi.new
body = SwaggerClient::BroadcastKMS.new # BroadcastKMS | 


begin
  #Broadcast signed QTUM transaction
  result = api_instance.qtum_broadcast(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainQTUMApi->qtum_broadcast: #{e}"
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



# **qtum_generate_address**
> InlineResponse20075 qtum_generate_address(xpub, i)

Generate QTUM account address from Extended public key

<h4>1 credit per API call.</h4><br/> <p>Generate QTUM account deposit address from Extended public key. Deposit address is generated for the specific index - each extended public key can generate up to 2^31 addresses starting from index 0 until 2^31.</p> 

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

api_instance = SwaggerClient::BlockchainQTUMApi.new
xpub = 'xpub_example' # String | Extended public key of wallet.
i = SwaggerClient::BigDecimal.new # BigDecimal | Derivation index of desired address to be generated.


begin
  #Generate QTUM account address from Extended public key
  result = api_instance.qtum_generate_address(xpub, i)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainQTUMApi->qtum_generate_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xpub** | **String**| Extended public key of wallet. | 
 **i** | **BigDecimal**| Derivation index of desired address to be generated. | 

### Return type

[**InlineResponse20075**](InlineResponse20075.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **qtum_generate_wallet**
> QtumWallet qtum_generate_wallet(opts)

Generate QTUM wallet

<h4>1 credit per API call.</h4><br/><p>Tatum supports BIP44 HD wallets. It is very convenient and secure, since it can generate 2^31 addresses from 1 mnemonic phrase. Mnemonic phrase consists of 24 special words in defined order and can restore access to all generated addresses and private keys.<br/>Each address is identified by 3 main values:<ul><li>Private Key - your secret value, which should never be revealed</li><li>Public Key - public address to be published</li><li>Derivation index - index of generated address</li></ul></p><p>Tatum follows BIP44 specification and generates for Qtum wallet with derivation path m'/44'/2301'/0'/0. More about BIP44 HD wallets can be found here - <a target=\"_blank\" href=\"https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki\">https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki</a>.         Generate BIP44 compatible QTum wallet.</p> 

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

api_instance = SwaggerClient::BlockchainQTUMApi.new
opts = { 
  mnemonic: 'mnemonic_example' # String | Mnemonic
}

begin
  #Generate QTUM wallet
  result = api_instance.qtum_generate_wallet(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainQTUMApi->qtum_generate_wallet: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mnemonic** | **String**| Mnemonic | [optional] 

### Return type

[**QtumWallet**](QtumWallet.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **qtum_get_balance**
> QtumIGetInfo qtum_get_balance(address)

Get QTUM Account balance

<h4>1 credit per API call.</h4><br/><p>Get QTUM account balance in QTUM tokens on an account.</p>

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

api_instance = SwaggerClient::BlockchainQTUMApi.new
address = 'address_example' # String | Account address


begin
  #Get QTUM Account balance
  result = api_instance.qtum_get_balance(address)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainQTUMApi->qtum_get_balance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Account address | 

### Return type

[**QtumIGetInfo**](QtumIGetInfo.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **qtum_get_block**
> QtumBlock qtum_get_block(hash)

Get QTUM block by hash

<h4>1 credit per API call.</h4><br/><p>Get BSC block by block hash or block number.</p>

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

api_instance = SwaggerClient::BlockchainQTUMApi.new
hash = 'hash_example' # String | Block hash or block number


begin
  #Get QTUM block by hash
  result = api_instance.qtum_get_block(hash)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainQTUMApi->qtum_get_block: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Block hash or block number | 

### Return type

[**QtumBlock**](QtumBlock.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **qtum_get_current_block**
> BigDecimal qtum_get_current_block

Get current block number

<h4>1 credit per API call.</h4><br/><p>Get QTUM current block number. This is the number of the latest block in the blockchain.</p>

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

api_instance = SwaggerClient::BlockchainQTUMApi.new

begin
  #Get current block number
  result = api_instance.qtum_get_current_block
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainQTUMApi->qtum_get_current_block: #{e}"
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



