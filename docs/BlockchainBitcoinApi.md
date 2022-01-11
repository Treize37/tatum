# SwaggerClient::BlockchainBitcoinApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**btc_broadcast**](BlockchainBitcoinApi.md#btc_broadcast) | **POST** /v3/bitcoin/broadcast | Broadcast signed Bitcoin transaction
[**btc_generate_address**](BlockchainBitcoinApi.md#btc_generate_address) | **GET** /v3/bitcoin/address/{xpub}/{index} | Generate Bitcoin deposit address from Extended public key
[**btc_generate_address_private_key**](BlockchainBitcoinApi.md#btc_generate_address_private_key) | **POST** /v3/bitcoin/wallet/priv | Generate Bitcoin private key
[**btc_generate_wallet**](BlockchainBitcoinApi.md#btc_generate_wallet) | **GET** /v3/bitcoin/wallet | Generate Bitcoin wallet
[**btc_get_balance_of_address**](BlockchainBitcoinApi.md#btc_get_balance_of_address) | **GET** /v3/bitcoin/address/balance/{address} | Get the balance of an address
[**btc_get_block**](BlockchainBitcoinApi.md#btc_get_block) | **GET** /v3/bitcoin/block/{hash} | Get Block by hash or height
[**btc_get_block_chain_info**](BlockchainBitcoinApi.md#btc_get_block_chain_info) | **GET** /v3/bitcoin/info | Get Blockchain information
[**btc_get_block_hash**](BlockchainBitcoinApi.md#btc_get_block_hash) | **GET** /v3/bitcoin/block/hash/{i} | Get Block hash
[**btc_get_mempool**](BlockchainBitcoinApi.md#btc_get_mempool) | **GET** /v3/bitcoin/mempool | Get mempool transactions
[**btc_get_raw_transaction**](BlockchainBitcoinApi.md#btc_get_raw_transaction) | **GET** /v3/bitcoin/transaction/{hash} | Get transaction by hash
[**btc_get_tx_by_address**](BlockchainBitcoinApi.md#btc_get_tx_by_address) | **GET** /v3/bitcoin/transaction/address/{address} | Get transactions by address
[**btc_get_utxo**](BlockchainBitcoinApi.md#btc_get_utxo) | **GET** /v3/bitcoin/utxo/{hash}/{index} | Get UTXO of transaction
[**btc_transfer_blockchain**](BlockchainBitcoinApi.md#btc_transfer_blockchain) | **POST** /v3/bitcoin/transaction | Send Bitcoin to blockchain addresses

# **btc_broadcast**
> TransactionHashKMS btc_broadcast(body)

Broadcast signed Bitcoin transaction

<h4>2 credits per API call.</h4><br/> <p>Broadcasts a signed transaction to the Bitcoin blockchain. This method is used internally from Tatum KMS, Tatum Middleware or Tatum Client Libraries. It is possible to create a custom signing mechanism and only use this method for broadcasting data to the blockchain.</p> 

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

api_instance = SwaggerClient::BlockchainBitcoinApi.new
body = SwaggerClient::BroadcastKMS.new # BroadcastKMS | 


begin
  #Broadcast signed Bitcoin transaction
  result = api_instance.btc_broadcast(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainBitcoinApi->btc_broadcast: #{e}"
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



# **btc_generate_address**
> InlineResponse2003 btc_generate_address(xpub, index)

Generate Bitcoin deposit address from Extended public key

<h4>1 credit per API call.</h4><br/> <p>Generates a Bitcoin deposit address from an Extended public key. The deposit address is generated for the specific index - each extended public key can generate up to 2^31 addresses starting from index 0 until 2^31 - 1.</p> 

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

api_instance = SwaggerClient::BlockchainBitcoinApi.new
xpub = 'xpub_example' # String | Extended public key of a wallet.
index = SwaggerClient::BigDecimal.new # BigDecimal | Derivation index of the desired address to be generated.


begin
  #Generate Bitcoin deposit address from Extended public key
  result = api_instance.btc_generate_address(xpub, index)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainBitcoinApi->btc_generate_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xpub** | **String**| Extended public key of a wallet. | 
 **index** | **BigDecimal**| Derivation index of the desired address to be generated. | 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **btc_generate_address_private_key**
> PrivKey btc_generate_address_private_key(body)

Generate Bitcoin private key

<h4>1 credit per API call.</h4><br/> <p>Generates a private key for an address from a mnemonic for a given derivation path index. The private key is generated for the specific index - each mnemonic can generate up to 2^32 private keys starting from index 0 until 2^31 - 1.</p> 

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

api_instance = SwaggerClient::BlockchainBitcoinApi.new
body = SwaggerClient::PrivKeyRequest.new # PrivKeyRequest | 


begin
  #Generate Bitcoin private key
  result = api_instance.btc_generate_address_private_key(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainBitcoinApi->btc_generate_address_private_key: #{e}"
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



# **btc_generate_wallet**
> Wallet btc_generate_wallet(opts)

Generate Bitcoin wallet

<h4>1 credit per API call.</h4><br/><p>Tatum supports BIP44 HD wallets. Because they can generate 2^31 addresses from 1 mnemonic phrase, they are very convenient and secure. A mnemonic phrase consists of 24 special words in a defined order and can restore access to all generated addresses and private keys.<br/>Each address is identified by 3 main values:<ul><li>Private Key - your secret value, which should never be revealed</li><li>Public Key - public address to be published</li><li>Derivation index - index of generated address</li></ul></p><p>Tatum follows BIP44 specification and generates for Bitcoin wallet with derivation path m'/44'/0'/0'/0. More about BIP44 HD wallets can be found here - <a target=\"_blank\" href=\"https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki\">https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki</a>. Generate BIP44 compatible Bitcoin wallet.</p> 

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

api_instance = SwaggerClient::BlockchainBitcoinApi.new
opts = { 
  mnemonic: 'mnemonic_example' # String | Mnemonic to use for generation of extended public and private keys.
}

begin
  #Generate Bitcoin wallet
  result = api_instance.btc_generate_wallet(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainBitcoinApi->btc_generate_wallet: #{e}"
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



# **btc_get_balance_of_address**
> BtcBasedBalance btc_get_balance_of_address(address)

Get the balance of an address

<h4>1 credit per API call.</h4><br/><p>Gets the Bitcoin balance of the address.</p>

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

api_instance = SwaggerClient::BlockchainBitcoinApi.new
address = 'address_example' # String | Address


begin
  #Get the balance of an address
  result = api_instance.btc_get_balance_of_address(address)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainBitcoinApi->btc_get_balance_of_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Address | 

### Return type

[**BtcBasedBalance**](BtcBasedBalance.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **btc_get_block**
> BtcBlock btc_get_block(hash)

Get Block by hash or height

<h4>1 credit per API call.</h4><br/><p>Gets Bitcoin block detail by block hash or height.</p>

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

api_instance = SwaggerClient::BlockchainBitcoinApi.new
hash = 'hash_example' # String | Block hash or height.


begin
  #Get Block by hash or height
  result = api_instance.btc_get_block(hash)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainBitcoinApi->btc_get_block: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Block hash or height. | 

### Return type

[**BtcBlock**](BtcBlock.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **btc_get_block_chain_info**
> BtcInfo btc_get_block_chain_info

Get Blockchain information

<h4>1 credit per API call.</h4><br/><p>Gets Bitcoin blockchain information. Obtains basic info like the testnet / mainnet version of the chain, the current block number and its hash.</p>

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

api_instance = SwaggerClient::BlockchainBitcoinApi.new

begin
  #Get Blockchain information
  result = api_instance.btc_get_block_chain_info
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainBitcoinApi->btc_get_block_chain_info: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BtcInfo**](BtcInfo.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **btc_get_block_hash**
> InlineResponse2004 btc_get_block_hash(i)

Get Block hash

<h4>1 credit per API call.</h4><br/><p>Gets a Bitcoin block hash. Returns the hash of the block to get the block's details.</p>

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

api_instance = SwaggerClient::BlockchainBitcoinApi.new
i = SwaggerClient::BigDecimal.new # BigDecimal | The number of blocks preceding a particular block on a blockchain.


begin
  #Get Block hash
  result = api_instance.btc_get_block_hash(i)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainBitcoinApi->btc_get_block_hash: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **i** | **BigDecimal**| The number of blocks preceding a particular block on a blockchain. | 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **btc_get_mempool**
> Array&lt;String&gt; btc_get_mempool

Get mempool transactions

<h4>1 credit per API call.</h4><br/><p>Gets Bitcoin transaction IDs in the mempool.</p>

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

api_instance = SwaggerClient::BlockchainBitcoinApi.new

begin
  #Get mempool transactions
  result = api_instance.btc_get_mempool
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainBitcoinApi->btc_get_mempool: #{e}"
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



# **btc_get_raw_transaction**
> BtcTx btc_get_raw_transaction(hash)

Get transaction by hash

<h4>1 credit per API call.</h4><br/><p>Get Bitcoin Transaction detail by transaction hash.</p>

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

api_instance = SwaggerClient::BlockchainBitcoinApi.new
hash = 'hash_example' # String | Transaction hash


begin
  #Get transaction by hash
  result = api_instance.btc_get_raw_transaction(hash)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainBitcoinApi->btc_get_raw_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Transaction hash | 

### Return type

[**BtcTx**](BtcTx.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **btc_get_tx_by_address**
> Array&lt;BtcTx&gt; btc_get_tx_by_address(address, page_size, opts)

Get transactions by address

<h4>1 credit per API call.</h4><br/><p>Gets a Bitcoin transaction by address.</p>

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

api_instance = SwaggerClient::BlockchainBitcoinApi.new
address = 'address_example' # String | Address
page_size = SwaggerClient::BigDecimal.new # BigDecimal | Max number of items per page is 50.
opts = { 
  offset: SwaggerClient::BigDecimal.new # BigDecimal | Offset to obtain the next page of data.
}

begin
  #Get transactions by address
  result = api_instance.btc_get_tx_by_address(address, page_size, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainBitcoinApi->btc_get_tx_by_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Address | 
 **page_size** | **BigDecimal**| Max number of items per page is 50. | 
 **offset** | **BigDecimal**| Offset to obtain the next page of data. | [optional] 

### Return type

[**Array&lt;BtcTx&gt;**](BtcTx.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **btc_get_utxo**
> BtcUTXO btc_get_utxo(hash, index)

Get UTXO of transaction

<h4>1 credit per API call.</h4><br/> <p>Get the UTXO of given transaction and output index. UTXO means Unspent Transaction Output, which in blockchain terminology means assets that a user has received at a specific address and has not yet spent.<br/> In bitcoin-like blockchains (BTC, LTC, DOGE, BCH), every transaction is built from a list of previously unspent transactions connected to the address. If a user owns address A, and receives 10 BTC in transaction T1, they can spend a UTXO T1 with a total value of 10 BTC in the next transaction. The user can spend multiple UTXOs from different addresses in one transaction.<br/> If the UTXO is not spent, the data are returned, or a 404 error code is generated.</p> 

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

api_instance = SwaggerClient::BlockchainBitcoinApi.new
hash = 'hash_example' # String | TX Hash
index = SwaggerClient::BigDecimal.new # BigDecimal | Index of tx output to check if it has been spent or not


begin
  #Get UTXO of transaction
  result = api_instance.btc_get_utxo(hash, index)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainBitcoinApi->btc_get_utxo: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| TX Hash | 
 **index** | **BigDecimal**| Index of tx output to check if it has been spent or not | 

### Return type

[**BtcUTXO**](BtcUTXO.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **btc_transfer_blockchain**
> InlineResponse2005 btc_transfer_blockchain(body)

Send Bitcoin to blockchain addresses

<h4>2 credits per API call.</h4><br/> <p>Send Bitcoin to blockchain addresses. It is possible to build a blockchain transaction in 2 ways: <ul> <li><b>fromAddress</b> - assets will be sent from the list of addresses. For each of the addresses, the last 100 transactions will be scanned for any unspent UTXO to be included in the transaction.</li> <li><b>fromUTXO</b> - assets will be sent from the list of unspent UTXOs. Each of the UTXOs will be included in the transaction.</li> </ul> In bitcoin-like blockchains, a transaction is created from the list of previously unspent UTXOs. Every UTXO contains the amount of funds that can be spent. When the UTXO is entered into the transaction, the whole amount is included and must be spent. For example, address A receives 2 transactions, T1 with 1 BTC and T2 with 2 BTC. The transaction, which will consume the UTXOs for T1 and T2, will have an available amount to spend of 3 BTC = 1 BTC (T1) + 2 BTC(T2).<br/><br/> There can be multiple recipients of the transactions. In the <b>to</b> section, every recipient address has its own corresponding amount. When the amount of funds that the recipient should receive is lower than the amount of funds from the UTXOs, the difference is used as a transaction fee.<br/><br/> This operation requires the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send their private keys to the Internet because there is a strong possibility that they will be stolen and the funds will be lost. In this method, it is possible to enter a privateKey or signatureId. The privateKey should be used only for quick development on testnet versions of blockchains when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used to ensure the highest level of security, and the signatureId should be present in the request. Alternatively, it is also possible to use the Tatum Client Library for supported languages. </p> 

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

api_instance = SwaggerClient::BlockchainBitcoinApi.new
body = SwaggerClient::BitcoinTransactionBody.new # BitcoinTransactionBody | 


begin
  #Send Bitcoin to blockchain addresses
  result = api_instance.btc_transfer_blockchain(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainBitcoinApi->btc_transfer_blockchain: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BitcoinTransactionBody**](BitcoinTransactionBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



