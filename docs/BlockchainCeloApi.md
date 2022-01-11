# Tatum::BlockchainCeloApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**celo_blockchain_smart_contract_invocation**](BlockchainCeloApi.md#celo_blockchain_smart_contract_invocation) | **POST** /v3/celo/smartcontract | Invoke Smart Contract method
[**celo_blockchain_transfer**](BlockchainCeloApi.md#celo_blockchain_transfer) | **POST** /v3/celo/transaction | Send Celo / ERC20 from account to account
[**celo_broadcast**](BlockchainCeloApi.md#celo_broadcast) | **POST** /v3/celo/broadcast | Broadcast signed Celo transaction
[**celo_generate_address**](BlockchainCeloApi.md#celo_generate_address) | **GET** /v3/celo/address/{xpub}/{index} | Generate Celo account address from Extended public key
[**celo_generate_address_private_key**](BlockchainCeloApi.md#celo_generate_address_private_key) | **POST** /v3/celo/wallet/priv | Generate Celo private key
[**celo_generate_wallet**](BlockchainCeloApi.md#celo_generate_wallet) | **GET** /v3/celo/wallet | Generate Celo wallet
[**celo_get_balance**](BlockchainCeloApi.md#celo_get_balance) | **GET** /v3/celo/account/balance/{address} | Get Celo Account balance
[**celo_get_block**](BlockchainCeloApi.md#celo_get_block) | **GET** /v3/celo/block/{hash} | Get Celo block by hash
[**celo_get_current_block**](BlockchainCeloApi.md#celo_get_current_block) | **GET** /v3/celo/block/current | Get current block number
[**celo_get_transaction**](BlockchainCeloApi.md#celo_get_transaction) | **GET** /v3/celo/transaction/{hash} | Get Celo Transaction
[**celo_get_transaction_by_address**](BlockchainCeloApi.md#celo_get_transaction_by_address) | **GET** /v3/celo/account/transaction/{address} | Get Celo transactions by address
[**celo_get_transaction_count**](BlockchainCeloApi.md#celo_get_transaction_count) | **GET** /v3/celo/transaction/count/{address} | Get count of outgoing Celo transactions
[**celo_web3_driver**](BlockchainCeloApi.md#celo_web3_driver) | **POST** /v3/celo/web3/{xApiKey} | Web3 HTTP driver

# **celo_blockchain_smart_contract_invocation**
> InlineResponse20016 celo_blockchain_smart_contract_invocation(body)

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

api_instance = Tatum::BlockchainCeloApi.new
body = Tatum::CeloSmartcontractBody.new # CeloSmartcontractBody | 


begin
  #Invoke Smart Contract method
  result = api_instance.celo_blockchain_smart_contract_invocation(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainCeloApi->celo_blockchain_smart_contract_invocation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CeloSmartcontractBody**](CeloSmartcontractBody.md)|  | 

### Return type

[**InlineResponse20016**](InlineResponse20016.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **celo_blockchain_transfer**
> InlineResponse2005 celo_blockchain_transfer(body)

Send Celo / ERC20 from account to account

<h4>2 credits per API call.</h4><br/> <p>Send Celo, cUSD or Tatum supported ERC20 token from account to account.<br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = Tatum::BlockchainCeloApi.new
body = Tatum::CeloTransactionBody.new # CeloTransactionBody | 


begin
  #Send Celo / ERC20 from account to account
  result = api_instance.celo_blockchain_transfer(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainCeloApi->celo_blockchain_transfer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CeloTransactionBody**](CeloTransactionBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **celo_broadcast**
> TransactionHashKMS celo_broadcast(body)

Broadcast signed Celo transaction

<h4>2 credits per API call.</h4><br/> <p>Broadcast signed transaction to Celo blockchain. This method is used internally from Tatum KMS or Tatum client libraries. It is possible to create custom signing mechanism and use this method only for broadcasting data to the blockchian.</p> 

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

api_instance = Tatum::BlockchainCeloApi.new
body = Tatum::BroadcastKMS.new # BroadcastKMS | 


begin
  #Broadcast signed Celo transaction
  result = api_instance.celo_broadcast(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainCeloApi->celo_broadcast: #{e}"
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



# **celo_generate_address**
> InlineResponse20054 celo_generate_address(xpub, index)

Generate Celo account address from Extended public key

<h4>1 credit per API call.</h4><br/> <p>Generate Celo account deposit address from Extended public key. Deposit address is generated for the specific index - each extended public key can generate up to 2^31 addresses starting from index 0 until 2^31.</p> 

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

api_instance = Tatum::BlockchainCeloApi.new
xpub = 'xpub_example' # String | Extended public key of wallet.
index = Tatum::BigDecimal.new # BigDecimal | Derivation index of desired address to be generated.


begin
  #Generate Celo account address from Extended public key
  result = api_instance.celo_generate_address(xpub, index)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainCeloApi->celo_generate_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xpub** | **String**| Extended public key of wallet. | 
 **index** | **BigDecimal**| Derivation index of desired address to be generated. | 

### Return type

[**InlineResponse20054**](InlineResponse20054.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **celo_generate_address_private_key**
> PrivKey celo_generate_address_private_key(body)

Generate Celo private key

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

api_instance = Tatum::BlockchainCeloApi.new
body = Tatum::PrivKeyRequest.new # PrivKeyRequest | 


begin
  #Generate Celo private key
  result = api_instance.celo_generate_address_private_key(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainCeloApi->celo_generate_address_private_key: #{e}"
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



# **celo_generate_wallet**
> Wallet celo_generate_wallet(opts)

Generate Celo wallet

<h4>1 credit per API call.</h4><br/><p>Tatum supports BIP44 HD wallets. It is very convenient and secure, since it can generate 2^31 addresses from 1 mnemonic phrase. Mnemonic phrase consists of 24 special words in defined order and can restore access to all generated addresses and private keys.<br/>Each address is identified by 3 main values:<ul><li>Private Key - your secret value, which should never be revealed</li><li>Public Key - public address to be published</li><li>Derivation index - index of generated address</li></ul></p><p>Tatum follows BIP44 specification and generates for Celo wallet with derivation path m'/44'/52752'/0'/0. More about BIP44 HD wallets can be found here - <a target=\"_blank\" href=\"https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki\">https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki</a>. Generate BIP44 compatible Celo wallet.</p> 

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

api_instance = Tatum::BlockchainCeloApi.new
opts = { 
  mnemonic: 'mnemonic_example' # String | Mnemonic to use for generation of extended public and private keys.
}

begin
  #Generate Celo wallet
  result = api_instance.celo_generate_wallet(opts)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainCeloApi->celo_generate_wallet: #{e}"
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



# **celo_get_balance**
> InlineResponse20055 celo_get_balance(address)

Get Celo Account balance

<h4>1 credit per API call.</h4><br/><p>Get Celo account balance in ETH. This method does not prints any balance of the ERC20 or ERC721 tokens on the account.</p>

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

api_instance = Tatum::BlockchainCeloApi.new
address = 'address_example' # String | Account address


begin
  #Get Celo Account balance
  result = api_instance.celo_get_balance(address)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainCeloApi->celo_get_balance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Account address | 

### Return type

[**InlineResponse20055**](InlineResponse20055.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **celo_get_block**
> CeloBlock celo_get_block(hash)

Get Celo block by hash

<h4>1 credit per API call.</h4><br/><p>Get Celo block by block hash or block number.</p>

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

api_instance = Tatum::BlockchainCeloApi.new
hash = 'hash_example' # String | Block hash or block number


begin
  #Get Celo block by hash
  result = api_instance.celo_get_block(hash)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainCeloApi->celo_get_block: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Block hash or block number | 

### Return type

[**CeloBlock**](CeloBlock.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **celo_get_current_block**
> BigDecimal celo_get_current_block

Get current block number

<h4>1 credit per API call.</h4><br/><p>Get Celo current block number. This is the number of the latest block in the blockchain.</p>

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

api_instance = Tatum::BlockchainCeloApi.new

begin
  #Get current block number
  result = api_instance.celo_get_current_block
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainCeloApi->celo_get_current_block: #{e}"
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



# **celo_get_transaction**
> CeloTx celo_get_transaction(hash)

Get Celo Transaction

<h4>2 credit per API call.</h4><br/><p>Get Celo transaction by transaction hash.</p>

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

api_instance = Tatum::BlockchainCeloApi.new
hash = 'hash_example' # String | Transaction hash


begin
  #Get Celo Transaction
  result = api_instance.celo_get_transaction(hash)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainCeloApi->celo_get_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Transaction hash | 

### Return type

[**CeloTx**](CeloTx.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **celo_get_transaction_by_address**
> Array&lt;CeloTx&gt; celo_get_transaction_by_address(address, page_size, opts)

Get Celo transactions by address

<h4>1 credit per API call.</h4><br/><p>Get Celo transactions by address. This includes incoming and outgoing transactions for the address.</p>

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

api_instance = Tatum::BlockchainCeloApi.new
address = 'address_example' # String | Account address
page_size = Tatum::BigDecimal.new # BigDecimal | Max number of items per page is 50.
opts = { 
  offset: Tatum::BigDecimal.new, # BigDecimal | Offset to obtain next page of the data.
  from: Tatum::BigDecimal.new, # BigDecimal | Transactions from this block onwords will be included.
  to: Tatum::BigDecimal.new, # BigDecimal | Transactions up to this block will be included.
  sort: 'DESC' # String | Sorting of the data. ASC - oldest first, DESC - newest first.
}

begin
  #Get Celo transactions by address
  result = api_instance.celo_get_transaction_by_address(address, page_size, opts)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainCeloApi->celo_get_transaction_by_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Account address | 
 **page_size** | **BigDecimal**| Max number of items per page is 50. | 
 **offset** | **BigDecimal**| Offset to obtain next page of the data. | [optional] 
 **from** | **BigDecimal**| Transactions from this block onwords will be included. | [optional] 
 **to** | **BigDecimal**| Transactions up to this block will be included. | [optional] 
 **sort** | **String**| Sorting of the data. ASC - oldest first, DESC - newest first. | [optional] [default to DESC]

### Return type

[**Array&lt;CeloTx&gt;**](CeloTx.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **celo_get_transaction_count**
> BigDecimal celo_get_transaction_count(address)

Get count of outgoing Celo transactions

<h4>1 credit per API call.</h4><br/> <p>Get a number of outgoing Celo transactions for the address. When a transaction is sent, there can be multiple outgoing transactions, which are not yet processed by the blockchain. To distinguish between them, there is a counter called a nonce, which represents the order of the transaction in the list of outgoing transactions.</p> 

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

api_instance = Tatum::BlockchainCeloApi.new
address = 'address_example' # String | address


begin
  #Get count of outgoing Celo transactions
  result = api_instance.celo_get_transaction_count(address)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainCeloApi->celo_get_transaction_count: #{e}"
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



# **celo_web3_driver**
> Object celo_web3_driver(bodyx_api_key)

Web3 HTTP driver

<h4>2 credits per API call.</h4><br/> <p>Use this endpoint URL as a http-based web3 driver to connect directly to the Celo node provided by Tatum. To learn more about Celo Web3, please visit <a href=\"https://ethereum.org/en/developers/\" target=\"_blank\">Celo developer's guide.</a></p> 

### Example
```ruby
# load the gem
require 'tatum'

api_instance = Tatum::BlockchainCeloApi.new
body = nil # Object | 
x_api_key = 'x_api_key_example' # String | Tatum X-API-Key used for authorization.


begin
  #Web3 HTTP driver
  result = api_instance.celo_web3_driver(bodyx_api_key)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainCeloApi->celo_web3_driver: #{e}"
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



