# Tatum::BlockchainLitecoinApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ltc_broadcast**](BlockchainLitecoinApi.md#ltc_broadcast) | **POST** /v3/litecoin/broadcast | Broadcast signed Litecoin transaction
[**ltc_generate_address**](BlockchainLitecoinApi.md#ltc_generate_address) | **GET** /v3/litecoin/address/{xpub}/{index} | Generate Litecoin deposit address from Extended public key
[**ltc_generate_address_private_key**](BlockchainLitecoinApi.md#ltc_generate_address_private_key) | **POST** /v3/litecoin/wallet/priv | Generate Litecoin private key
[**ltc_generate_wallet**](BlockchainLitecoinApi.md#ltc_generate_wallet) | **GET** /v3/litecoin/wallet | Generate Litecoin wallet
[**ltc_get_balance_of_address**](BlockchainLitecoinApi.md#ltc_get_balance_of_address) | **GET** /v3/litecoin/address/balance/{address} | Get Litecoin Balance of the address
[**ltc_get_block**](BlockchainLitecoinApi.md#ltc_get_block) | **GET** /v3/litecoin/block/{hash} | Get Litecoin Block by hash or height
[**ltc_get_block_chain_info**](BlockchainLitecoinApi.md#ltc_get_block_chain_info) | **GET** /v3/litecoin/info | Get Litecoin Blockchain Information
[**ltc_get_block_hash**](BlockchainLitecoinApi.md#ltc_get_block_hash) | **GET** /v3/litecoin/block/hash/{i} | Get Litecoin Block hash
[**ltc_get_mempool**](BlockchainLitecoinApi.md#ltc_get_mempool) | **GET** /v3/litecoin/mempool | Get Mempool Transactions
[**ltc_get_raw_transaction**](BlockchainLitecoinApi.md#ltc_get_raw_transaction) | **GET** /v3/litecoin/transaction/{hash} | Get Litecoin Transaction by hash
[**ltc_get_tx_by_address**](BlockchainLitecoinApi.md#ltc_get_tx_by_address) | **GET** /v3/litecoin/transaction/address/{address} | Get Litecoin Transactions by address
[**ltc_get_utxo**](BlockchainLitecoinApi.md#ltc_get_utxo) | **GET** /v3/litecoin/utxo/{hash}/{index} | Get Litecoin UTXO of Transaction
[**ltc_transfer_blockchain**](BlockchainLitecoinApi.md#ltc_transfer_blockchain) | **POST** /v3/litecoin/transaction | Send Litecoin to blockchain addresses

# **ltc_broadcast**
> TransactionHashKMS ltc_broadcast(body)

Broadcast signed Litecoin transaction

<h4>5 credits per API call.</h4><br/> <p>Broadcast signed transaction to Litecoin blockchain. This method is used internally from Tatum KMS, Tatum Middleware or Tatum client libraries. It is possible to create custom signing mechanism and use this method only for broadcasting data to the blockchian.</p> 

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

api_instance = Tatum::BlockchainLitecoinApi.new
body = Tatum::BroadcastKMS.new # BroadcastKMS | 


begin
  #Broadcast signed Litecoin transaction
  result = api_instance.ltc_broadcast(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainLitecoinApi->ltc_broadcast: #{e}"
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



# **ltc_generate_address**
> InlineResponse20024 ltc_generate_address(xpub, index)

Generate Litecoin deposit address from Extended public key

<h4>5 credits per API call.</h4><br/> <p>Generate Litecoin deposit address from Extended public key. Deposit address is generated for the specific index - each extended public key can generate up to 2^31 addresses starting from index 0 until 2^31 - 1.</p> 

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

api_instance = Tatum::BlockchainLitecoinApi.new
xpub = 'xpub_example' # String | Extended public key of wallet.
index = Tatum::BigDecimal.new # BigDecimal | Derivation index of desired address to be generated.


begin
  #Generate Litecoin deposit address from Extended public key
  result = api_instance.ltc_generate_address(xpub, index)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainLitecoinApi->ltc_generate_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xpub** | **String**| Extended public key of wallet. | 
 **index** | **BigDecimal**| Derivation index of desired address to be generated. | 

### Return type

[**InlineResponse20024**](InlineResponse20024.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **ltc_generate_address_private_key**
> PrivKey ltc_generate_address_private_key(body)

Generate Litecoin private key

<h4>5 credits per API call.</h4><br/> <p>Generate private key for address from mnemonic for given derivation path index. Private key is generated for the specific index - each mnemonic can generate up to 2^32 private keys starting from index 0 until 2^31 - 1.</p> 

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

api_instance = Tatum::BlockchainLitecoinApi.new
body = Tatum::PrivKeyRequest.new # PrivKeyRequest | 


begin
  #Generate Litecoin private key
  result = api_instance.ltc_generate_address_private_key(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainLitecoinApi->ltc_generate_address_private_key: #{e}"
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



# **ltc_generate_wallet**
> Wallet ltc_generate_wallet(opts)

Generate Litecoin wallet

<h4>5 credits per API call.</h4><br/><p>Tatum supports BIP44 HD wallets. It is very convenient and secure, since it can generate 2^31 addresses from 1 mnemonic phrase. Mnemonic phrase consists of 24 special words in defined order and can restore access to all generated addresses and private keys.<br/>Each address is identified by 3 main values:<ul><li>Private Key - your secret value, which should never be revealed</li><li>Public Key - public address to be published</li><li>Derivation index - index of generated address</li></ul></p><p>Tatum follows BIP44 specification and generates for Litecoin wallet with derivation path m'/44'/2'/0'/0. More about BIP44 HD wallets can be found here - <a target=\"_blank\" href=\"https://github.com/litecoin/bips/blob/master/bip-0044.mediawiki\">https://github.com/litecoin/bips/blob/master/bip-0044.mediawiki</a>. Generate BIP44 compatible Litecoin wallet.</p> 

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

api_instance = Tatum::BlockchainLitecoinApi.new
opts = { 
  mnemonic: 'mnemonic_example' # String | Mnemonic to use for generation of extended public and private keys.
}

begin
  #Generate Litecoin wallet
  result = api_instance.ltc_generate_wallet(opts)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainLitecoinApi->ltc_generate_wallet: #{e}"
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



# **ltc_get_balance_of_address**
> BtcBasedBalance ltc_get_balance_of_address(address)

Get Litecoin Balance of the address

<h4>5 credits per API call.</h4><br/><p>Get Litecoin Balance of the address.</p>

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

api_instance = Tatum::BlockchainLitecoinApi.new
address = 'address_example' # String | Address


begin
  #Get Litecoin Balance of the address
  result = api_instance.ltc_get_balance_of_address(address)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainLitecoinApi->ltc_get_balance_of_address: #{e}"
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



# **ltc_get_block**
> LtcBlock ltc_get_block(hash)

Get Litecoin Block by hash or height

<h4>5 credits per API call.</h4><br/><p>Get Litecoin Block detail by block hash or height.</p>

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

api_instance = Tatum::BlockchainLitecoinApi.new
hash = 'hash_example' # String | Block hash or height.


begin
  #Get Litecoin Block by hash or height
  result = api_instance.ltc_get_block(hash)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainLitecoinApi->ltc_get_block: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Block hash or height. | 

### Return type

[**LtcBlock**](LtcBlock.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **ltc_get_block_chain_info**
> LtcInfo ltc_get_block_chain_info

Get Litecoin Blockchain Information

<h4>5 credits per API call.</h4><br/><p>Get Litecoin Blockchain Information. Obtain basic info like testnet / mainnet version of the chain, current block number and it's hash.</p>

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

api_instance = Tatum::BlockchainLitecoinApi.new

begin
  #Get Litecoin Blockchain Information
  result = api_instance.ltc_get_block_chain_info
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainLitecoinApi->ltc_get_block_chain_info: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**LtcInfo**](LtcInfo.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **ltc_get_block_hash**
> InlineResponse20023 ltc_get_block_hash(i)

Get Litecoin Block hash

<h4>5 credits per API call.</h4><br/><p>Get Litecoin Block hash. Returns hash of the block to get the block detail.</p>

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

api_instance = Tatum::BlockchainLitecoinApi.new
i = Tatum::BigDecimal.new # BigDecimal | The number of blocks preceding a particular block on a block chain.


begin
  #Get Litecoin Block hash
  result = api_instance.ltc_get_block_hash(i)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainLitecoinApi->ltc_get_block_hash: #{e}"
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



# **ltc_get_mempool**
> Array&lt;String&gt; ltc_get_mempool

Get Mempool Transactions

<h4>1 credit per API call.</h4><br/><p>Get Litecoin Transaction ids in the mempool.</p>

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

api_instance = Tatum::BlockchainLitecoinApi.new

begin
  #Get Mempool Transactions
  result = api_instance.ltc_get_mempool
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainLitecoinApi->ltc_get_mempool: #{e}"
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



# **ltc_get_raw_transaction**
> LtcTx ltc_get_raw_transaction(hash)

Get Litecoin Transaction by hash

<h4>5 credits per API call.</h4><br/><p>Get Litecoin Transaction detail by transaction hash.</p>

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

api_instance = Tatum::BlockchainLitecoinApi.new
hash = 'hash_example' # String | Transaction hash


begin
  #Get Litecoin Transaction by hash
  result = api_instance.ltc_get_raw_transaction(hash)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainLitecoinApi->ltc_get_raw_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Transaction hash | 

### Return type

[**LtcTx**](LtcTx.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **ltc_get_tx_by_address**
> Array&lt;LtcTx&gt; ltc_get_tx_by_address(address, page_size, opts)

Get Litecoin Transactions by address

<h4>5 credits per API call.</h4><br/><p>Get Litecoin Transaction by address.</p>

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

api_instance = Tatum::BlockchainLitecoinApi.new
address = 'address_example' # String | Address
page_size = Tatum::BigDecimal.new # BigDecimal | Max number of items per page is 50.
opts = { 
  offset: Tatum::BigDecimal.new # BigDecimal | Offset to obtain next page of the data.
}

begin
  #Get Litecoin Transactions by address
  result = api_instance.ltc_get_tx_by_address(address, page_size, opts)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainLitecoinApi->ltc_get_tx_by_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Address | 
 **page_size** | **BigDecimal**| Max number of items per page is 50. | 
 **offset** | **BigDecimal**| Offset to obtain next page of the data. | [optional] 

### Return type

[**Array&lt;LtcTx&gt;**](LtcTx.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **ltc_get_utxo**
> LtcUTXO ltc_get_utxo(hash, index)

Get Litecoin UTXO of Transaction

<h4>5 credits per API call.</h4><br/> <p>Get UTXO of given transaction and output index. UTXO means Unspent Transaction Output, which is in blockchain terminology assets, that user received on the specific address and does not spend it yet.<br/> In bitcoin-like blockchains (BTC, LTC, DOGE, BCH), every transaction is built from the list of previously  not spent transactions connected to the address. If user owns address A, receives in transaciont T1 10 LTC, he can spend in the next transaction UTXO T1 of total value 10 LTC. User can spend multiple UTXOs from different addresses in 1 transaction.<br/> If UTXO is not spent, data are returned, otherwise 404 error code.</p> 

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

api_instance = Tatum::BlockchainLitecoinApi.new
hash = 'hash_example' # String | TX Hash
index = Tatum::BigDecimal.new # BigDecimal | Index of tx output to check if spent or not


begin
  #Get Litecoin UTXO of Transaction
  result = api_instance.ltc_get_utxo(hash, index)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainLitecoinApi->ltc_get_utxo: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| TX Hash | 
 **index** | **BigDecimal**| Index of tx output to check if spent or not | 

### Return type

[**LtcUTXO**](LtcUTXO.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **ltc_transfer_blockchain**
> InlineResponse2005 ltc_transfer_blockchain(body)

Send Litecoin to blockchain addresses

<h4>10 credits per API call.</h4><br/> <p>Send Litecoin to blockchain addresses. It is possible to build a blockchain transaction in 2 ways: <ul> <li><b>fromAddress</b> - assets will be sent from the list of addresses. For each of the addresses last 100 transactions will be scanned for any unspent UTXO and will be included in the transaction.</li> <li><b>fromUTXO</b> - assets will be sent from the list of unspent UTXOs. Each of the UTXO will be included in the transaction.</li> </ul> In bitcoin-like blockchains, the transaction is created from the list of previously not spent UTXO. Every UTXO contains the number of funds, which can be spent. When the UTXO enters into the transaction, the whole amount is included and must be spent. For example, address A receives 2 transactions, T1 with 1 LTC and T2 with 2 LTC. The transaction, which will consume UTXOs for T1 and T2, will have available amount to spent 3 LTC = 1 LTC (T1) + 2 LTC(T2).<br/><br/> There can be multiple recipients of the transactions, not only one. In the <b>to</b> section, every recipient address has it's corresponding amount. When the amount of funds, that should receive the recipient is lower than the number of funds from the UTXOs, the difference is used as a transaction fee.<br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and losing funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = Tatum::BlockchainLitecoinApi.new
body = Tatum::LitecoinTransactionBody.new # LitecoinTransactionBody | 


begin
  #Send Litecoin to blockchain addresses
  result = api_instance.ltc_transfer_blockchain(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainLitecoinApi->ltc_transfer_blockchain: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**LitecoinTransactionBody**](LitecoinTransactionBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



