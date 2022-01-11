# SwaggerClient::BlockchainHarmonyONEApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**one_blockchain_smart_contract_invocation**](BlockchainHarmonyONEApi.md#one_blockchain_smart_contract_invocation) | **POST** /v3/one/smartcontract | Invoke Smart Contract method
[**one_blockchain_transfer**](BlockchainHarmonyONEApi.md#one_blockchain_transfer) | **POST** /v3/one/transaction | Send ONE / HRM20 from account to account
[**one_broadcast**](BlockchainHarmonyONEApi.md#one_broadcast) | **POST** /v3/one/broadcast | Broadcast signed ONE transaction
[**one_format_address**](BlockchainHarmonyONEApi.md#one_format_address) | **GET** /v3/one/address/format/{address} | Transform HEX address to Bech32 ONE address format
[**one_generate_address**](BlockchainHarmonyONEApi.md#one_generate_address) | **GET** /v3/one/address/{xpub}/{index} | Generate ONE account address from Extended public key
[**one_generate_address_private_key**](BlockchainHarmonyONEApi.md#one_generate_address_private_key) | **POST** /v3/one/wallet/priv | Generate ONE private key
[**one_generate_wallet**](BlockchainHarmonyONEApi.md#one_generate_wallet) | **GET** /v3/one/wallet | Generate ONE wallet
[**one_get_balance**](BlockchainHarmonyONEApi.md#one_get_balance) | **GET** /v3/one/account/balance/{address} | Get ONE Account balance
[**one_get_block**](BlockchainHarmonyONEApi.md#one_get_block) | **GET** /v3/one/block/{hash} | Get ONE block by hash
[**one_get_current_block**](BlockchainHarmonyONEApi.md#one_get_current_block) | **GET** /v3/one/block/current | Get current block number
[**one_get_transaction**](BlockchainHarmonyONEApi.md#one_get_transaction) | **GET** /v3/one/transaction/{hash} | Get ONE Transaction
[**one_get_transaction_count**](BlockchainHarmonyONEApi.md#one_get_transaction_count) | **GET** /v3/one/transaction/count/{address} | Get count of outgoing ONE transactions
[**one_web3_driver**](BlockchainHarmonyONEApi.md#one_web3_driver) | **POST** /v3/one/web3/{xApiKey} | Web3 HTTP driver

# **one_blockchain_smart_contract_invocation**
> InlineResponse20016 one_blockchain_smart_contract_invocation(body, opts)

Invoke Smart Contract method

<h4>2 credits per API call.</h4><br/> <p>Invoke any method on an existing Smart Contract. It is possible to call read or write method on the Smart Contract defined via contractAddress. For read operations, data is returned, for write operations, transaction Id of the associated transaction is returned.<br/> Default shard 0 is used for this operation.<br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages.</p> 

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

api_instance = SwaggerClient::BlockchainHarmonyONEApi.new
body = SwaggerClient::OneSmartcontractBody.new # OneSmartcontractBody | 
opts = { 
  shard_id: SwaggerClient::BigDecimal.new # BigDecimal | Shard to read data from
}

begin
  #Invoke Smart Contract method
  result = api_instance.one_blockchain_smart_contract_invocation(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainHarmonyONEApi->one_blockchain_smart_contract_invocation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**OneSmartcontractBody**](OneSmartcontractBody.md)|  | 
 **shard_id** | **BigDecimal**| Shard to read data from | [optional] [default to 0]

### Return type

[**InlineResponse20016**](InlineResponse20016.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **one_blockchain_transfer**
> InlineResponse2005 one_blockchain_transfer(body, opts)

Send ONE / HRM20 from account to account

<h4>2 credits per API call.</h4><br/> <p>Send ONE or Tatum supported HRM20 token from account to account.<br/><br/> Default shard 0 is used for sender and recipient.<br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = SwaggerClient::BlockchainHarmonyONEApi.new
body = SwaggerClient::OneTransactionBody.new # OneTransactionBody | 
opts = { 
  shard_id: SwaggerClient::BigDecimal.new # BigDecimal | Shard to read data from
}

begin
  #Send ONE / HRM20 from account to account
  result = api_instance.one_blockchain_transfer(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainHarmonyONEApi->one_blockchain_transfer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**OneTransactionBody**](OneTransactionBody.md)|  | 
 **shard_id** | **BigDecimal**| Shard to read data from | [optional] [default to 0]

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **one_broadcast**
> TransactionHashKMS one_broadcast(body, opts)

Broadcast signed ONE transaction

<h4>2 credits per API call.</h4><br/> <p>Broadcast signed transaction to ONE blockchain. This method is used internally from Tatum KMS or Tatum client libraries. It is possible to create custom signing mechanism and use this method only for broadcasting data to the blockchian.</p> 

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

api_instance = SwaggerClient::BlockchainHarmonyONEApi.new
body = SwaggerClient::BroadcastKMS.new # BroadcastKMS | 
opts = { 
  shard_id: SwaggerClient::BigDecimal.new # BigDecimal | Shard to read data from
}

begin
  #Broadcast signed ONE transaction
  result = api_instance.one_broadcast(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainHarmonyONEApi->one_broadcast: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BroadcastKMS**](BroadcastKMS.md)|  | 
 **shard_id** | **BigDecimal**| Shard to read data from | [optional] [default to 0]

### Return type

[**TransactionHashKMS**](TransactionHashKMS.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **one_format_address**
> InlineResponse20067 one_format_address(address)

Transform HEX address to Bech32 ONE address format

<h4>1 credit per API call.</h4><br/> <p>Transform HEX address to Bech32 format with one prefix.</p> 

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

api_instance = SwaggerClient::BlockchainHarmonyONEApi.new
address = 'address_example' # String | Address in HEX (ETH compatible) format.


begin
  #Transform HEX address to Bech32 ONE address format
  result = api_instance.one_format_address(address)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainHarmonyONEApi->one_format_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Address in HEX (ETH compatible) format. | 

### Return type

[**InlineResponse20067**](InlineResponse20067.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **one_generate_address**
> InlineResponse20066 one_generate_address(xpub, index)

Generate ONE account address from Extended public key

<h4>1 credit per API call.</h4><br/> <p>Generate ONE account deposit address from Extended public key. Deposit address is generated for the specific index - each extended public key can generate up to 2^31 addresses starting from index 0 until 2^31.</p> 

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

api_instance = SwaggerClient::BlockchainHarmonyONEApi.new
xpub = 'xpub_example' # String | Extended public key of wallet.
index = SwaggerClient::BigDecimal.new # BigDecimal | Derivation index of desired address to be generated.


begin
  #Generate ONE account address from Extended public key
  result = api_instance.one_generate_address(xpub, index)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainHarmonyONEApi->one_generate_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xpub** | **String**| Extended public key of wallet. | 
 **index** | **BigDecimal**| Derivation index of desired address to be generated. | 

### Return type

[**InlineResponse20066**](InlineResponse20066.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **one_generate_address_private_key**
> PrivKey one_generate_address_private_key(body)

Generate ONE private key

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

api_instance = SwaggerClient::BlockchainHarmonyONEApi.new
body = SwaggerClient::PrivKeyRequest.new # PrivKeyRequest | 


begin
  #Generate ONE private key
  result = api_instance.one_generate_address_private_key(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainHarmonyONEApi->one_generate_address_private_key: #{e}"
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



# **one_generate_wallet**
> Wallet one_generate_wallet(opts)

Generate ONE wallet

<h4>1 credit per API call.</h4><br/><p>Tatum supports BIP44 HD wallets. It is very convenient and secure, since it can generate 2^31 addresses from 1 mnemonic phrase. Mnemonic phrase consists of 24 special words in defined order and can restore access to all generated addresses and private keys.<br/>Each address is identified by 3 main values:<ul><li>Private Key - your secret value, which should never be revealed</li><li>Public Key - public address to be published</li><li>Derivation index - index of generated address</li></ul></p><p>Tatum follows BIP44 specification and generates for ONE wallet with derivation path m'/44'/60'/0'/0. More about BIP44 HD wallets can be found here - <a target=\"_blank\" href=\"https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki\">https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki</a>. Generate BIP44 compatible ONE wallet.</p> 

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

api_instance = SwaggerClient::BlockchainHarmonyONEApi.new
opts = { 
  mnemonic: 'mnemonic_example' # String | Mnemonic to use for generation of extended public and private keys.
}

begin
  #Generate ONE wallet
  result = api_instance.one_generate_wallet(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainHarmonyONEApi->one_generate_wallet: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mnemonic** | **String**| Mnemonic to use for generation of extended public and private keys. | [optional] 

### Return type

[**Wallet**](Wallet.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **one_get_balance**
> InlineResponse20069 one_get_balance(address, opts)

Get ONE Account balance

<h4>1 credit per API call.</h4><br/><p>Get ONE account balance in ONE. This method does not prints any balance of the HRM20 or HRM721 tokens on the account.</p>

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

api_instance = SwaggerClient::BlockchainHarmonyONEApi.new
address = 'address_example' # String | Account address
opts = { 
  shard_id: SwaggerClient::BigDecimal.new # BigDecimal | Shard to read data from
}

begin
  #Get ONE Account balance
  result = api_instance.one_get_balance(address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainHarmonyONEApi->one_get_balance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Account address | 
 **shard_id** | **BigDecimal**| Shard to read data from | [optional] [default to 0]

### Return type

[**InlineResponse20069**](InlineResponse20069.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **one_get_block**
> EthBlock one_get_block(hash, opts)

Get ONE block by hash

<h4>1 credit per API call.</h4><br/><p>Get ONE block by block hash or block number.</p>

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

api_instance = SwaggerClient::BlockchainHarmonyONEApi.new
hash = 'hash_example' # String | Block hash or block number
opts = { 
  shard_id: SwaggerClient::BigDecimal.new # BigDecimal | Shard to read data from
}

begin
  #Get ONE block by hash
  result = api_instance.one_get_block(hash, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainHarmonyONEApi->one_get_block: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Block hash or block number | 
 **shard_id** | **BigDecimal**| Shard to read data from | [optional] [default to 0]

### Return type

[**EthBlock**](EthBlock.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **one_get_current_block**
> Array&lt;InlineResponse20068&gt; one_get_current_block

Get current block number

<h4>1 credit per API call.</h4><br/><p>Get ONE current block number. This is the number of the latest block in the blockchain.</p>

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

api_instance = SwaggerClient::BlockchainHarmonyONEApi.new

begin
  #Get current block number
  result = api_instance.one_get_current_block
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainHarmonyONEApi->one_get_current_block: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;InlineResponse20068&gt;**](InlineResponse20068.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **one_get_transaction**
> OneTx one_get_transaction(hash, opts)

Get ONE Transaction

<h4>2 credit per API call.</h4><br/><p>Get ONE transaction by transaction hash.</p>

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

api_instance = SwaggerClient::BlockchainHarmonyONEApi.new
hash = 'hash_example' # String | Transaction hash
opts = { 
  shard_id: SwaggerClient::BigDecimal.new # BigDecimal | Shard to read data from
}

begin
  #Get ONE Transaction
  result = api_instance.one_get_transaction(hash, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainHarmonyONEApi->one_get_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Transaction hash | 
 **shard_id** | **BigDecimal**| Shard to read data from | [optional] [default to 0]

### Return type

[**OneTx**](OneTx.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **one_get_transaction_count**
> BigDecimal one_get_transaction_count(address, opts)

Get count of outgoing ONE transactions

<h4>1 credit per API call.</h4><br/> <p>Get a number of outgoing ONE transactions for the address. When a transaction is sent, there can be multiple outgoing transactions, which are not yet processed by the blockchain. To distinguish between them, there is a counter called a nonce, which represents the order of the transaction in the list of outgoing transactions.</p> 

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

api_instance = SwaggerClient::BlockchainHarmonyONEApi.new
address = 'address_example' # String | address
opts = { 
  shard_id: SwaggerClient::BigDecimal.new # BigDecimal | Shard to read data from
}

begin
  #Get count of outgoing ONE transactions
  result = api_instance.one_get_transaction_count(address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainHarmonyONEApi->one_get_transaction_count: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| address | 
 **shard_id** | **BigDecimal**| Shard to read data from | [optional] [default to 0]

### Return type

[**BigDecimal**](BigDecimal.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **one_web3_driver**
> Object one_web3_driver(bodyx_api_key, opts)

Web3 HTTP driver

<h4>2 credits per API call.</h4><br/> <p>Use this endpoint URL as a http-based web3 driver to connect directly to the ONE node provided by Tatum. To learn more about ONE Web3, please visit <a href=\"https://docs.harmony.one/home/developers/api\" target=\"_blank\">ONE developer's guide.</a></p> 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BlockchainHarmonyONEApi.new
body = nil # Object | 
x_api_key = 'x_api_key_example' # String | Tatum X-API-Key used for authorization.
opts = { 
  shard_id: SwaggerClient::BigDecimal.new # BigDecimal | Shard to read data from
}

begin
  #Web3 HTTP driver
  result = api_instance.one_web3_driver(bodyx_api_key, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainHarmonyONEApi->one_web3_driver: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Object**](Object.md)|  | 
 **x_api_key** | **String**| Tatum X-API-Key used for authorization. | 
 **shard_id** | **BigDecimal**| Shard to read data from | [optional] [default to 0]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



