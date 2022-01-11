# Tatum::BlockchainKcsKCSApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**kcs_blockchain_smart_contract_invocation**](BlockchainKcsKCSApi.md#kcs_blockchain_smart_contract_invocation) | **POST** /v3/kcs/smartcontract | Invoke Smart Contract method
[**kcs_blockchain_transfer**](BlockchainKcsKCSApi.md#kcs_blockchain_transfer) | **POST** /v3/kcs/transaction | Send KCS from account to account
[**kcs_broadcast**](BlockchainKcsKCSApi.md#kcs_broadcast) | **POST** /v3/kcs/broadcast | Broadcast signed Kcs transaction
[**kcs_estimate_gas**](BlockchainKcsKCSApi.md#kcs_estimate_gas) | **POST** /v3/kcs/gas | Estimate Kcs transaction fees
[**kcs_generate_address**](BlockchainKcsKCSApi.md#kcs_generate_address) | **GET** /v3/kcs/address/{xpub}/{index} | Generate Kcs account address from Extended public key
[**kcs_generate_address_private_key**](BlockchainKcsKCSApi.md#kcs_generate_address_private_key) | **POST** /v3/kcs/wallet/priv | Generate Kcs private key
[**kcs_generate_wallet**](BlockchainKcsKCSApi.md#kcs_generate_wallet) | **GET** /v3/kcs/wallet | Generate Kcs wallet
[**kcs_get_balance**](BlockchainKcsKCSApi.md#kcs_get_balance) | **GET** /v3/kcs/account/balance/{address} | Get Kcs Account balance
[**kcs_get_block**](BlockchainKcsKCSApi.md#kcs_get_block) | **GET** /v3/kcs/block/{hash} | Get Kcs block by hash
[**kcs_get_current_block**](BlockchainKcsKCSApi.md#kcs_get_current_block) | **GET** /v3/kcs/block/current | Get current block number
[**kcs_get_transaction**](BlockchainKcsKCSApi.md#kcs_get_transaction) | **GET** /v3/kcs/transaction/{hash} | Get Kcs Transaction
[**kcs_get_transaction_count**](BlockchainKcsKCSApi.md#kcs_get_transaction_count) | **GET** /v3/kcs/transaction/count/{address} | Get count of outgoing Kcs transactions
[**kcs_web3_driver**](BlockchainKcsKCSApi.md#kcs_web3_driver) | **POST** /v3/kcs/web3/{xApiKey} | Web3 HTTP driver

# **kcs_blockchain_smart_contract_invocation**
> InlineResponse20016 kcs_blockchain_smart_contract_invocation(body)

Invoke Smart Contract method

<h4>2 credits per API call.</h4><br/> <p>Invoke any method on an existing Smart Contract. It is possible to call read or write method on the Smart Contract defined via contractAddress. For read operations, data is returned, for write operations, transaction Id of the associated transaction is returned.<br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages.</p> 

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

api_instance = Tatum::BlockchainKcsKCSApi.new
body = Tatum::KcsSmartcontractBody.new # KcsSmartcontractBody | 


begin
  #Invoke Smart Contract method
  result = api_instance.kcs_blockchain_smart_contract_invocation(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainKcsKCSApi->kcs_blockchain_smart_contract_invocation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**KcsSmartcontractBody**](KcsSmartcontractBody.md)|  | 

### Return type

[**InlineResponse20016**](InlineResponse20016.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **kcs_blockchain_transfer**
> InlineResponse2005 kcs_blockchain_transfer(body)

Send KCS from account to account

<h4>2 credits per API call.</h4><br/> <p>Send KCS from account to account.<br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = Tatum::BlockchainKcsKCSApi.new
body = Tatum::KcsTransactionBody.new # KcsTransactionBody | 


begin
  #Send KCS from account to account
  result = api_instance.kcs_blockchain_transfer(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainKcsKCSApi->kcs_blockchain_transfer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**KcsTransactionBody**](KcsTransactionBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **kcs_broadcast**
> TransactionHashKMS kcs_broadcast(body)

Broadcast signed Kcs transaction

<h4>2 credits per API call.</h4><br/> <p>Broadcast signed transaction to Kcs blockchain. This method is used internally from Tatum KMS or Tatum client libraries. It is possible to create custom signing mechanism and use this method only for broadcasting data to the blockchian.</p> 

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

api_instance = Tatum::BlockchainKcsKCSApi.new
body = Tatum::BroadcastKMS.new # BroadcastKMS | 


begin
  #Broadcast signed Kcs transaction
  result = api_instance.kcs_broadcast(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainKcsKCSApi->kcs_broadcast: #{e}"
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



# **kcs_estimate_gas**
> InlineResponse20051 kcs_estimate_gas(body)

Estimate Kcs transaction fees

<h4>2 credits per API call.</h4><br/> <p>Estimate gasLimit and gasPrice of the Kcs transaction. </p> 

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

api_instance = Tatum::BlockchainKcsKCSApi.new
body = Tatum::KcsEstimateGas.new # KcsEstimateGas | 


begin
  #Estimate Kcs transaction fees
  result = api_instance.kcs_estimate_gas(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainKcsKCSApi->kcs_estimate_gas: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**KcsEstimateGas**](KcsEstimateGas.md)|  | 

### Return type

[**InlineResponse20051**](InlineResponse20051.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **kcs_generate_address**
> InlineResponse20073 kcs_generate_address(xpub, index)

Generate Kcs account address from Extended public key

<h4>1 credit per API call.</h4><br/> <p>Generate Kcs account deposit address from Extended public key. Deposit address is generated for the specific index - each extended public key can generate up to 2^31 addresses starting from index 0 until 2^31.</p> 

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

api_instance = Tatum::BlockchainKcsKCSApi.new
xpub = 'xpub_example' # String | Extended public key of wallet.
index = Tatum::BigDecimal.new # BigDecimal | Derivation index of desired address to be generated.


begin
  #Generate Kcs account address from Extended public key
  result = api_instance.kcs_generate_address(xpub, index)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainKcsKCSApi->kcs_generate_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xpub** | **String**| Extended public key of wallet. | 
 **index** | **BigDecimal**| Derivation index of desired address to be generated. | 

### Return type

[**InlineResponse20073**](InlineResponse20073.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **kcs_generate_address_private_key**
> PrivKey kcs_generate_address_private_key(body)

Generate Kcs private key

<h4>1 credit per API call.</h4><br/> <p>Generate private key of address from mnemonic for given derivation path index. Private key is generated for the specific index - each mnemonic can generate up to 2^31 private keys starting from index 0 until 2^31.</p> 

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

api_instance = Tatum::BlockchainKcsKCSApi.new
body = Tatum::PrivKeyRequest.new # PrivKeyRequest | 


begin
  #Generate Kcs private key
  result = api_instance.kcs_generate_address_private_key(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainKcsKCSApi->kcs_generate_address_private_key: #{e}"
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



# **kcs_generate_wallet**
> Wallet kcs_generate_wallet(opts)

Generate Kcs wallet

<h4>1 credit per API call.</h4><br/><p>Tatum supports BIP44 HD wallets. It is very convenient and secure, since it can generate 2^31 addresses from 1 mnemonic phrase. Mnemonic phrase consists of 24 special words in defined order and can restore access to all generated addresses and private keys.<br/>Each address is identified by 3 main values:<ul><li>Private Key - your secret value, which should never be revealed</li><li>Public Key - public address to be published</li><li>Derivation index - index of generated address</li></ul></p><p>Tatum follows BIP44 specification and generates for Kcs wallet with derivation path m'/44'/966'/0'/0. More about BIP44 HD wallets can be found here - <a target=\"_blank\" href=\"https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki\">https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki</a>. Generate BIP44 compatible Kcs wallet.</p> 

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

api_instance = Tatum::BlockchainKcsKCSApi.new
opts = { 
  mnemonic: 'mnemonic_example' # String | Mnemonic to use for generation of extended public and private keys.
}

begin
  #Generate Kcs wallet
  result = api_instance.kcs_generate_wallet(opts)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainKcsKCSApi->kcs_generate_wallet: #{e}"
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



# **kcs_get_balance**
> InlineResponse20074 kcs_get_balance(address)

Get Kcs Account balance

<h4>1 credit per API call.</h4><br/><p>Get Kcs account balance in KCS. This method does not prints any balance of the ERC20 or ERC721 tokens on the account.</p>

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

api_instance = Tatum::BlockchainKcsKCSApi.new
address = 'address_example' # String | Account address


begin
  #Get Kcs Account balance
  result = api_instance.kcs_get_balance(address)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainKcsKCSApi->kcs_get_balance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Account address | 

### Return type

[**InlineResponse20074**](InlineResponse20074.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **kcs_get_block**
> EthBlock kcs_get_block(hash)

Get Kcs block by hash

<h4>1 credit per API call.</h4><br/><p>Get Kcs block by block hash or block number.</p>

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

api_instance = Tatum::BlockchainKcsKCSApi.new
hash = 'hash_example' # String | Block hash or block number


begin
  #Get Kcs block by hash
  result = api_instance.kcs_get_block(hash)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainKcsKCSApi->kcs_get_block: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Block hash or block number | 

### Return type

[**EthBlock**](EthBlock.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **kcs_get_current_block**
> BigDecimal kcs_get_current_block

Get current block number

<h4>1 credit per API call.</h4><br/><p>Get Kcs current block number. This is the number of the latest block in the blockchain.</p>

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

api_instance = Tatum::BlockchainKcsKCSApi.new

begin
  #Get current block number
  result = api_instance.kcs_get_current_block
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainKcsKCSApi->kcs_get_current_block: #{e}"
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



# **kcs_get_transaction**
> KcsTx kcs_get_transaction(hash)

Get Kcs Transaction

<h4>2 credit per API call.</h4><br/><p>Get Kcs transaction by transaction hash.</p>

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

api_instance = Tatum::BlockchainKcsKCSApi.new
hash = 'hash_example' # String | Transaction hash


begin
  #Get Kcs Transaction
  result = api_instance.kcs_get_transaction(hash)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainKcsKCSApi->kcs_get_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Transaction hash | 

### Return type

[**KcsTx**](KcsTx.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **kcs_get_transaction_count**
> BigDecimal kcs_get_transaction_count(address)

Get count of outgoing Kcs transactions

<h4>1 credit per API call.</h4><br/> <p>Get a number of outgoing Kcs transactions for the address. When a transaction is sent, there can be multiple outgoing transactions, which are not yet processed by the blockchain. To distinguish between them, there is a counter called a nonce, which represents the order of the transaction in the list of outgoing transactions.</p> 

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

api_instance = Tatum::BlockchainKcsKCSApi.new
address = 'address_example' # String | address


begin
  #Get count of outgoing Kcs transactions
  result = api_instance.kcs_get_transaction_count(address)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainKcsKCSApi->kcs_get_transaction_count: #{e}"
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



# **kcs_web3_driver**
> Object kcs_web3_driver(bodyx_api_key)

Web3 HTTP driver

<h4>2 credits per API call.</h4><br/> <p>Use this endpoint URL as a http-based web3 driver to connect directly to the Kcs node provided by Tatum. To learn more about Kcs Web3, please visit <a href=\"https://docs.kcc.io/\" target=\"_blank\">Kcs developer's guide.</a></p> 

### Example
```ruby
# load the gem
require 'tatum'

api_instance = Tatum::BlockchainKcsKCSApi.new
body = nil # Object | 
x_api_key = 'x_api_key_example' # String | Tatum X-API-Key used for authorization.


begin
  #Web3 HTTP driver
  result = api_instance.kcs_web3_driver(bodyx_api_key)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainKcsKCSApi->kcs_web3_driver: #{e}"
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



