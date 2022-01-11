# SwaggerClient::BlockchainDogecoinApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**doge_broadcast**](BlockchainDogecoinApi.md#doge_broadcast) | **POST** /v3/dogecoin/broadcast | Broadcast signed Dogecoin transaction
[**doge_generate_address**](BlockchainDogecoinApi.md#doge_generate_address) | **GET** /v3/dogecoin/address/{xpub}/{index} | Generate Dogecoin deposit address from Extended public key
[**doge_generate_address_private_key**](BlockchainDogecoinApi.md#doge_generate_address_private_key) | **POST** /v3/dogecoin/wallet/priv | Generate Dogecoin private key
[**doge_generate_wallet**](BlockchainDogecoinApi.md#doge_generate_wallet) | **GET** /v3/dogecoin/wallet | Generate Dogecoin wallet
[**doge_get_block**](BlockchainDogecoinApi.md#doge_get_block) | **GET** /v3/dogecoin/block/{hash} | Get Dogecoin Block by hash or height
[**doge_get_block_chain_info**](BlockchainDogecoinApi.md#doge_get_block_chain_info) | **GET** /v3/dogecoin/info | Get Dogecoin Blockchain Information
[**doge_get_block_hash**](BlockchainDogecoinApi.md#doge_get_block_hash) | **GET** /v3/dogecoin/block/hash/{i} | Get Dogecoin Block hash
[**doge_get_mempool**](BlockchainDogecoinApi.md#doge_get_mempool) | **GET** /v3/dogecoin/mempool | Get Mempool Transactions
[**doge_get_raw_transaction**](BlockchainDogecoinApi.md#doge_get_raw_transaction) | **GET** /v3/dogecoin/transaction/{hash} | Get Dogecoin Transaction by hash
[**doge_get_utxo**](BlockchainDogecoinApi.md#doge_get_utxo) | **GET** /v3/dogecoin/utxo/{hash}/{index} | Get Dogecoin UTXO of Transaction
[**doge_transfer_blockchain**](BlockchainDogecoinApi.md#doge_transfer_blockchain) | **POST** /v3/dogecoin/transaction | Send Dogecoin to blockchain addresses

# **doge_broadcast**
> TransactionHashKMS doge_broadcast(body)

Broadcast signed Dogecoin transaction

<h4>2 credits per API call.</h4><br/> <p>Broadcast signed transaction to Dogecoin blockchain. This method is used internally from Tatum KMS, Tatum Middleware or Tatum client libraries. It is possible to create custom signing mechanism and use this method only for broadcasting data to the blockchian.</p> 

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

api_instance = SwaggerClient::BlockchainDogecoinApi.new
body = SwaggerClient::BroadcastKMS.new # BroadcastKMS | 


begin
  #Broadcast signed Dogecoin transaction
  result = api_instance.doge_broadcast(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainDogecoinApi->doge_broadcast: #{e}"
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



# **doge_generate_address**
> InlineResponse20025 doge_generate_address(xpub, index)

Generate Dogecoin deposit address from Extended public key

<h4>1 credit per API call.</h4><br/> <p>Generate Dogecoin deposit address from Extended public key. Deposit address is generated for the specific index - each extended public key can generate up to 2^31 addresses starting from index 0 until 2^31 - 1.</p> 

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

api_instance = SwaggerClient::BlockchainDogecoinApi.new
xpub = 'xpub_example' # String | Extended public key of wallet.
index = SwaggerClient::BigDecimal.new # BigDecimal | Derivation index of desired address to be generated.


begin
  #Generate Dogecoin deposit address from Extended public key
  result = api_instance.doge_generate_address(xpub, index)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainDogecoinApi->doge_generate_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xpub** | **String**| Extended public key of wallet. | 
 **index** | **BigDecimal**| Derivation index of desired address to be generated. | 

### Return type

[**InlineResponse20025**](InlineResponse20025.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **doge_generate_address_private_key**
> PrivKey doge_generate_address_private_key(body)

Generate Dogecoin private key

<h4>2 credits per API call.</h4><br/> <p>Generate private key for address from mnemonic for given derivation path index. Private key is generated for the specific index - each mnemonic can generate up to 2^32 private keys starting from index 0 until 2^31 - 1.</p> 

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

api_instance = SwaggerClient::BlockchainDogecoinApi.new
body = SwaggerClient::PrivKeyRequest.new # PrivKeyRequest | 


begin
  #Generate Dogecoin private key
  result = api_instance.doge_generate_address_private_key(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainDogecoinApi->doge_generate_address_private_key: #{e}"
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



# **doge_generate_wallet**
> Wallet doge_generate_wallet(opts)

Generate Dogecoin wallet

<h4>1 credit per API call.</h4><br/><p>Tatum supports BIP44 HD wallets. It is very convenient and secure, since it can generate 2^31 addresses from 1 mnemonic phrase. Mnemonic phrase consists of 24 special words in defined order and can restore access to all generated addresses and private keys.<br/>Each address is identified by 3 main values:<ul><li>Private Key - your secret value, which should never be revealed</li><li>Public Key - public address to be published</li><li>Derivation index - index of generated address</li></ul></p><p>Tatum follows BIP44 specification and generates for Dogecoin wallet with derivation path m'/44'/3'/0'/0. More about BIP44 HD wallets can be found here - <a target=\"_blank\" href=\"https://github.com/litecoin/bips/blob/master/bip-0044.mediawiki\">https://github.com/litecoin/bips/blob/master/bip-0044.mediawiki</a>. Generate BIP44 compatible Dogecoin wallet.</p> 

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

api_instance = SwaggerClient::BlockchainDogecoinApi.new
opts = { 
  mnemonic: 'mnemonic_example' # String | Mnemonic to use for generation of extended public and private keys.
}

begin
  #Generate Dogecoin wallet
  result = api_instance.doge_generate_wallet(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainDogecoinApi->doge_generate_wallet: #{e}"
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



# **doge_get_block**
> DogeBlock doge_get_block(hash)

Get Dogecoin Block by hash or height

<h4>1 credit per API call.</h4><br/><p>Get Dogecoin Block detail by block hash or height.</p>

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

api_instance = SwaggerClient::BlockchainDogecoinApi.new
hash = 'hash_example' # String | Block hash or height.


begin
  #Get Dogecoin Block by hash or height
  result = api_instance.doge_get_block(hash)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainDogecoinApi->doge_get_block: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Block hash or height. | 

### Return type

[**DogeBlock**](DogeBlock.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **doge_get_block_chain_info**
> DogeInfo doge_get_block_chain_info

Get Dogecoin Blockchain Information

<h4>1 credit per API call.</h4><br/><p>Get Dogecoin Blockchain Information. Obtain basic info like testnet / mainnet version of the chain, current block number and it's hash.</p>

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

api_instance = SwaggerClient::BlockchainDogecoinApi.new

begin
  #Get Dogecoin Blockchain Information
  result = api_instance.doge_get_block_chain_info
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainDogecoinApi->doge_get_block_chain_info: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DogeInfo**](DogeInfo.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **doge_get_block_hash**
> InlineResponse20023 doge_get_block_hash(i)

Get Dogecoin Block hash

<h4>1 credit per API call.</h4><br/><p>Get Dogecoin Block hash. Returns hash of the block to get the block detail.</p>

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

api_instance = SwaggerClient::BlockchainDogecoinApi.new
i = SwaggerClient::BigDecimal.new # BigDecimal | The number of blocks preceding a particular block on a block chain.


begin
  #Get Dogecoin Block hash
  result = api_instance.doge_get_block_hash(i)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainDogecoinApi->doge_get_block_hash: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **i** | **BigDecimal**| The number of blocks preceding a particular block on a block chain. | 

### Return type

[**InlineResponse20023**](InlineResponse20023.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **doge_get_mempool**
> Array&lt;String&gt; doge_get_mempool

Get Mempool Transactions

<h4>1 credit per API call.</h4><br/><p>Get Dogecoin Transaction ids in the mempool.</p>

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

api_instance = SwaggerClient::BlockchainDogecoinApi.new

begin
  #Get Mempool Transactions
  result = api_instance.doge_get_mempool
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainDogecoinApi->doge_get_mempool: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Array&lt;String&gt;**

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **doge_get_raw_transaction**
> DogeTx doge_get_raw_transaction(hash)

Get Dogecoin Transaction by hash

<h4>1 credit per API call.</h4><br/><p>Get Dogecoin Transaction detail by transaction hash.</p>

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

api_instance = SwaggerClient::BlockchainDogecoinApi.new
hash = 'hash_example' # String | Transaction hash


begin
  #Get Dogecoin Transaction by hash
  result = api_instance.doge_get_raw_transaction(hash)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainDogecoinApi->doge_get_raw_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Transaction hash | 

### Return type

[**DogeTx**](DogeTx.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **doge_get_utxo**
> DogeUTXO doge_get_utxo(hash, index)

Get Dogecoin UTXO of Transaction

<h4>1 credit per API call.</h4><br/> <p>Get UTXO of given transaction and output index. UTXO means Unspent Transaction Output, which is in blockchain terminology assets, that user received on the specific address and does not spend it yet.<br/> In bitcoin-like blockchains (BTC, LTC, DOGE, BCH), every transaction is built from the list of previously  not spent transactions connected to the address. If user owns address A, receives in transaciont T1 10 DOGE, he can spend in the next transaction UTXO T1 of total value 10 DOGE. User can spend multiple UTXOs from different addresses in 1 transaction.<br/> If UTXO is not spent, data are returned, otherwise 404 error code.</p> 

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

api_instance = SwaggerClient::BlockchainDogecoinApi.new
hash = 'hash_example' # String | TX Hash
index = SwaggerClient::BigDecimal.new # BigDecimal | Index of tx output to check if spent or not


begin
  #Get Dogecoin UTXO of Transaction
  result = api_instance.doge_get_utxo(hash, index)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainDogecoinApi->doge_get_utxo: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| TX Hash | 
 **index** | **BigDecimal**| Index of tx output to check if spent or not | 

### Return type

[**DogeUTXO**](DogeUTXO.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **doge_transfer_blockchain**
> InlineResponse2005 doge_transfer_blockchain(body)

Send Dogecoin to blockchain addresses

<h4>2 credits per API call.</h4><br/> <p>Send Dogecoin to blockchain addresses. It is possible to build a blockchain transaction in 1 way: <ul> <li><b>fromUTXO</b> - assets will be sent from the list of unspent UTXOs. Each of the UTXO will be included in the transaction.</li> </ul> In bitcoin-like blockchains, the transaction is created from the list of previously not spent UTXO. Every UTXO contains the number of funds, which can be spent. When the UTXO enters into the transaction, the whole amount is included and must be spent. For example, address A receives 2 transactions, T1 with 1 DOGE and T2 with 2 DOGE. The transaction, which will consume UTXOs for T1 and T2, will have available amount to spent 3 DOGE = 1 DOGE (T1) + 2 DOGE(T2).<br/><br/> There can be multiple recipients of the transactions, not only one. In the <b>to</b> section, every recipient address has it's corresponding amount. When the amount of funds, that should receive the recipient is lower than the number of funds from the UTXOs, the difference is used as a transaction fee.<br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and losing funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = SwaggerClient::BlockchainDogecoinApi.new
body = SwaggerClient::DogecoinTransactionBody.new # DogecoinTransactionBody | 


begin
  #Send Dogecoin to blockchain addresses
  result = api_instance.doge_transfer_blockchain(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainDogecoinApi->doge_transfer_blockchain: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DogecoinTransactionBody**](DogecoinTransactionBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



