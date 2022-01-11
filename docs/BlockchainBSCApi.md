# Tatum::BlockchainBSCApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bsc_blockchain_smart_contract_invocation**](BlockchainBSCApi.md#bsc_blockchain_smart_contract_invocation) | **POST** /v3/bsc/smartcontract | Invoke Smart Contract method
[**bsc_blockchain_transfer**](BlockchainBSCApi.md#bsc_blockchain_transfer) | **POST** /v3/bsc/transaction | Send BSC / BEP20 from account to account
[**bsc_broadcast**](BlockchainBSCApi.md#bsc_broadcast) | **POST** /v3/bsc/broadcast | Broadcast signed BSC transaction
[**bsc_estimate_gas**](BlockchainBSCApi.md#bsc_estimate_gas) | **POST** /v3/bsc/gas | Estimate BSC transaction fees
[**bsc_generate_address**](BlockchainBSCApi.md#bsc_generate_address) | **GET** /v3/bsc/address/{xpub}/{index} | Generate BSC account address from Extended public key
[**bsc_generate_address_private_key**](BlockchainBSCApi.md#bsc_generate_address_private_key) | **POST** /v3/bsc/wallet/priv | Generate BSC private key
[**bsc_generate_wallet**](BlockchainBSCApi.md#bsc_generate_wallet) | **GET** /v3/bsc/wallet | Generate BSC wallet
[**bsc_get_balance**](BlockchainBSCApi.md#bsc_get_balance) | **GET** /v3/bsc/account/balance/{address} | Get BSC Account balance
[**bsc_get_block**](BlockchainBSCApi.md#bsc_get_block) | **GET** /v3/bsc/block/{hash} | Get BSC block by hash
[**bsc_get_current_block**](BlockchainBSCApi.md#bsc_get_current_block) | **GET** /v3/bsc/block/current | Get current block number
[**bsc_get_transaction**](BlockchainBSCApi.md#bsc_get_transaction) | **GET** /v3/bsc/transaction/{hash} | Get BSC Transaction
[**bsc_get_transaction_count**](BlockchainBSCApi.md#bsc_get_transaction_count) | **GET** /v3/bsc/transaction/count/{address} | Get count of outgoing BSC transactions
[**bsc_web3_driver**](BlockchainBSCApi.md#bsc_web3_driver) | **POST** /v3/bsc/web3/{xApiKey} | Web3 HTTP driver

# **bsc_blockchain_smart_contract_invocation**
> InlineResponse20016 bsc_blockchain_smart_contract_invocation(body)

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

api_instance = Tatum::BlockchainBSCApi.new
body = Tatum::BscSmartcontractBody.new # BscSmartcontractBody | 


begin
  #Invoke Smart Contract method
  result = api_instance.bsc_blockchain_smart_contract_invocation(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainBSCApi->bsc_blockchain_smart_contract_invocation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BscSmartcontractBody**](BscSmartcontractBody.md)|  | 

### Return type

[**InlineResponse20016**](InlineResponse20016.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **bsc_blockchain_transfer**
> InlineResponse2005 bsc_blockchain_transfer(body)

Send BSC / BEP20 from account to account

<h4>2 credits per API call.</h4><br/> <p>Send BNB or Tatum supported BEP20 token from account to account.<br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = Tatum::BlockchainBSCApi.new
body = Tatum::BscTransactionBody.new # BscTransactionBody | 


begin
  #Send BSC / BEP20 from account to account
  result = api_instance.bsc_blockchain_transfer(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainBSCApi->bsc_blockchain_transfer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BscTransactionBody**](BscTransactionBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **bsc_broadcast**
> TransactionHashKMS bsc_broadcast(body)

Broadcast signed BSC transaction

<h4>2 credits per API call.</h4><br/> <p>Broadcast signed transaction to BSC blockchain. This method is used internally from Tatum KMS or Tatum client libraries. It is possible to create custom signing mechanism and use this method only for broadcasting data to the blockchian.</p> 

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

api_instance = Tatum::BlockchainBSCApi.new
body = Tatum::BroadcastKMS.new # BroadcastKMS | 


begin
  #Broadcast signed BSC transaction
  result = api_instance.bsc_broadcast(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainBSCApi->bsc_broadcast: #{e}"
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



# **bsc_estimate_gas**
> InlineResponse20051 bsc_estimate_gas(body)

Estimate BSC transaction fees

<h4>2 credits per API call.</h4><br/> <p>Estimate gasLimit and gasPrice of the BSC transaction. Gas price is obtained from <a href=\"https://explorer.bitquery.io/bsc/gas\" target=\"_blank\">https://explorer.bitquery.io/bsc/gas</a>. </p> 

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

api_instance = Tatum::BlockchainBSCApi.new
body = Tatum::BscEstimateGas.new # BscEstimateGas | 


begin
  #Estimate BSC transaction fees
  result = api_instance.bsc_estimate_gas(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainBSCApi->bsc_estimate_gas: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BscEstimateGas**](BscEstimateGas.md)|  | 

### Return type

[**InlineResponse20051**](InlineResponse20051.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **bsc_generate_address**
> InlineResponse20049 bsc_generate_address(xpub, index)

Generate BSC account address from Extended public key

<h4>1 credit per API call.</h4><br/> <p>Generate BSC account deposit address from Extended public key. Deposit address is generated for the specific index - each extended public key can generate up to 2^31 addresses starting from index 0 until 2^31.</p> 

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

api_instance = Tatum::BlockchainBSCApi.new
xpub = 'xpub_example' # String | Extended public key of wallet.
index = Tatum::BigDecimal.new # BigDecimal | Derivation index of desired address to be generated.


begin
  #Generate BSC account address from Extended public key
  result = api_instance.bsc_generate_address(xpub, index)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainBSCApi->bsc_generate_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xpub** | **String**| Extended public key of wallet. | 
 **index** | **BigDecimal**| Derivation index of desired address to be generated. | 

### Return type

[**InlineResponse20049**](InlineResponse20049.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **bsc_generate_address_private_key**
> PrivKey bsc_generate_address_private_key(body)

Generate BSC private key

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

api_instance = Tatum::BlockchainBSCApi.new
body = Tatum::PrivKeyRequest.new # PrivKeyRequest | 


begin
  #Generate BSC private key
  result = api_instance.bsc_generate_address_private_key(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainBSCApi->bsc_generate_address_private_key: #{e}"
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



# **bsc_generate_wallet**
> Wallet bsc_generate_wallet(opts)

Generate BSC wallet

<h4>1 credit per API call.</h4><br/><p>Tatum supports BIP44 HD wallets. It is very convenient and secure, since it can generate 2^31 addresses from 1 mnemonic phrase. Mnemonic phrase consists of 24 special words in defined order and can restore access to all generated addresses and private keys.<br/>Each address is identified by 3 main values:<ul><li>Private Key - your secret value, which should never be revealed</li><li>Public Key - public address to be published</li><li>Derivation index - index of generated address</li></ul></p><p>Tatum follows BIP44 specification and generates for BSC wallet with derivation path m'/44'/60'/0'/0. More about BIP44 HD wallets can be found here - <a target=\"_blank\" href=\"https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki\">https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki</a>. Generate BIP44 compatible BSC wallet.</p> 

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

api_instance = Tatum::BlockchainBSCApi.new
opts = { 
  mnemonic: 'mnemonic_example' # String | Mnemonic to use for generation of extended public and private keys.
}

begin
  #Generate BSC wallet
  result = api_instance.bsc_generate_wallet(opts)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainBSCApi->bsc_generate_wallet: #{e}"
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



# **bsc_get_balance**
> InlineResponse20050 bsc_get_balance(address)

Get BSC Account balance

<h4>1 credit per API call.</h4><br/><p>Get BSC account balance in BNB. This method does not prints any balance of the BEP20 or BEP721 tokens on the account.</p>

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

api_instance = Tatum::BlockchainBSCApi.new
address = 'address_example' # String | Account address


begin
  #Get BSC Account balance
  result = api_instance.bsc_get_balance(address)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainBSCApi->bsc_get_balance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Account address | 

### Return type

[**InlineResponse20050**](InlineResponse20050.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **bsc_get_block**
> EthBlock bsc_get_block(hash)

Get BSC block by hash

<h4>1 credit per API call.</h4><br/><p>Get BSC block by block hash or block number.</p>

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

api_instance = Tatum::BlockchainBSCApi.new
hash = 'hash_example' # String | Block hash or block number


begin
  #Get BSC block by hash
  result = api_instance.bsc_get_block(hash)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainBSCApi->bsc_get_block: #{e}"
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



# **bsc_get_current_block**
> BigDecimal bsc_get_current_block

Get current block number

<h4>1 credit per API call.</h4><br/><p>Get BSC current block number. This is the number of the latest block in the blockchain.</p>

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

api_instance = Tatum::BlockchainBSCApi.new

begin
  #Get current block number
  result = api_instance.bsc_get_current_block
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainBSCApi->bsc_get_current_block: #{e}"
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



# **bsc_get_transaction**
> BscTx bsc_get_transaction(hash)

Get BSC Transaction

<h4>2 credit per API call.</h4><br/><p>Get BSC transaction by transaction hash.</p>

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

api_instance = Tatum::BlockchainBSCApi.new
hash = 'hash_example' # String | Transaction hash


begin
  #Get BSC Transaction
  result = api_instance.bsc_get_transaction(hash)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainBSCApi->bsc_get_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Transaction hash | 

### Return type

[**BscTx**](BscTx.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **bsc_get_transaction_count**
> BigDecimal bsc_get_transaction_count(address)

Get count of outgoing BSC transactions

<h4>1 credit per API call.</h4><br/> <p>Get a number of outgoing BSC transactions for the address. When a transaction is sent, there can be multiple outgoing transactions, which are not yet processed by the blockchain. To distinguish between them, there is a counter called a nonce, which represents the order of the transaction in the list of outgoing transactions.</p> 

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

api_instance = Tatum::BlockchainBSCApi.new
address = 'address_example' # String | address


begin
  #Get count of outgoing BSC transactions
  result = api_instance.bsc_get_transaction_count(address)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainBSCApi->bsc_get_transaction_count: #{e}"
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



# **bsc_web3_driver**
> Object bsc_web3_driver(bodyx_api_key)

Web3 HTTP driver

<h4>2 credits per API call.</h4><br/> <p>Use this endpoint URL as a http-based web3 driver to connect directly to the BSC node provided by Tatum. To learn more about BSC Web3, please visit <a href=\"https://bsc.org/en/developers/\" target=\"_blank\">BSC developer's guide.</a></p> 

### Example
```ruby
# load the gem
require 'tatum'

api_instance = Tatum::BlockchainBSCApi.new
body = nil # Object | 
x_api_key = 'x_api_key_example' # String | Tatum X-API-Key used for authorization.


begin
  #Web3 HTTP driver
  result = api_instance.bsc_web3_driver(bodyx_api_key)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainBSCApi->bsc_web3_driver: #{e}"
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



