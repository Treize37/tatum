# SwaggerClient::BlockchainScryptaApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**broadcastsigned_scryptatransaction**](BlockchainScryptaApi.md#broadcastsigned_scryptatransaction) | **POST** /v3/scrypta/broadcast | Broadcast signed Scrypta transaction
[**generate_scryptadepositaddressfrom_extendedpublickey**](BlockchainScryptaApi.md#generate_scryptadepositaddressfrom_extendedpublickey) | **GET** /v3/scrypta/address/{xpub}/{index} | Generate Scrypta deposit address from Extended public key
[**generate_scryptaprivatekey**](BlockchainScryptaApi.md#generate_scryptaprivatekey) | **POST** /v3/scrypta/wallet/priv | Generate Scrypta private key
[**generate_scryptawallet**](BlockchainScryptaApi.md#generate_scryptawallet) | **GET** /v3/scrypta/wallet | Generate Scrypta wallet
[**get_scrypta_blockbyhashorheight**](BlockchainScryptaApi.md#get_scrypta_blockbyhashorheight) | **GET** /v3/scrypta/block/{hash} | Get Block by hash or height
[**get_scrypta_blockchain_information**](BlockchainScryptaApi.md#get_scrypta_blockchain_information) | **GET** /v3/scrypta/info | Get Blockchain Information
[**get_scrypta_blockhash**](BlockchainScryptaApi.md#get_scrypta_blockhash) | **GET** /v3/scrypta/block/hash/{i} | Get Block hash
[**get_scrypta_transactionbyhash**](BlockchainScryptaApi.md#get_scrypta_transactionbyhash) | **GET** /v3/scrypta/transaction/{hash} | Get Scrypta Transaction by hash
[**get_scrypta_transactionsbyaddress**](BlockchainScryptaApi.md#get_scrypta_transactionsbyaddress) | **GET** /v3/scrypta/transaction/address/{address} | Get Transactions by address
[**get_scrypta_utx_oof_transaction**](BlockchainScryptaApi.md#get_scrypta_utx_oof_transaction) | **GET** /v3/scrypta/utxo/{hash}/{index} | Get UTXO of Transaction
[**get_scryptaspendable_utxo**](BlockchainScryptaApi.md#get_scryptaspendable_utxo) | **GET** /v3/scrypta/utxo/{address} | Get Scrypta spendable UTXO
[**send_lyr_atoblockchainaddresses**](BlockchainScryptaApi.md#send_lyr_atoblockchainaddresses) | **POST** /v3/scrypta/transaction | Send LYRA to blockchain addresses

# **broadcastsigned_scryptatransaction**
> TransactionHashKMS broadcastsigned_scryptatransaction(body)

Broadcast signed Scrypta transaction

<h4>2 credits per API call.</h4><br/> <p>Broadcast signed transaction to Scrypta blockchain. This method is used internally from Tatum KMS or Tatum client libraries. It is possible to create custom signing mechanism and use this method only for broadcasting data to the blockchian.</p> 

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

api_instance = SwaggerClient::BlockchainScryptaApi.new
body = SwaggerClient::BroadcastKMS.new # BroadcastKMS | 


begin
  #Broadcast signed Scrypta transaction
  result = api_instance.broadcastsigned_scryptatransaction(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainScryptaApi->broadcastsigned_scryptatransaction: #{e}"
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



# **generate_scryptadepositaddressfrom_extendedpublickey**
> InlineResponse20082 generate_scryptadepositaddressfrom_extendedpublickey(xpub, index)

Generate Scrypta deposit address from Extended public key

<h4>1 credit per API call.</h4><br/> <p>Generate Scrypta deposit address from Extended public key. Deposit address is generated for the concrete index - each extended public key can generate up to 2^32 addresses starting from index 0 until 2^31.</p> 

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

api_instance = SwaggerClient::BlockchainScryptaApi.new
xpub = 'xpub_example' # String | Extended public key of wallet.
index = 'index_example' # String | Derivation index of desired address to be generated.


begin
  #Generate Scrypta deposit address from Extended public key
  result = api_instance.generate_scryptadepositaddressfrom_extendedpublickey(xpub, index)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainScryptaApi->generate_scryptadepositaddressfrom_extendedpublickey: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xpub** | **String**| Extended public key of wallet. | 
 **index** | **String**| Derivation index of desired address to be generated. | 

### Return type

[**InlineResponse20082**](InlineResponse20082.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **generate_scryptaprivatekey**
> PrivKeyScrypta generate_scryptaprivatekey(body)

Generate Scrypta private key

<h4>1 credit per API call.</h4><br/> <p>Generate private key for address from mnemonic for given derivation path index. Private key is generated for the concrete index - each mnemonic can generate up to 2^32 private keys starting from index 0 until 2^31.</p> 

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

api_instance = SwaggerClient::BlockchainScryptaApi.new
body = SwaggerClient::PrivKeyRequest.new # PrivKeyRequest | 


begin
  #Generate Scrypta private key
  result = api_instance.generate_scryptaprivatekey(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainScryptaApi->generate_scryptaprivatekey: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PrivKeyRequest**](PrivKeyRequest.md)|  | 

### Return type

[**PrivKeyScrypta**](PrivKeyScrypta.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **generate_scryptawallet**
> ScryptaWallet generate_scryptawallet

Generate Scrypta wallet

<h4>1 credit per API call.</h4><br/><p>Tatum supports BIP44 HD wallets. It is very convenient and secure, since it can generate 2^31 addresses from 1 mnemonic phrase. Mnemonic phrase consists of 24 special words in defined order and can restore access to all generated addresses and private keys.<br/>Each address is identified by 3 main values:<ul><li>Private Key - your secret value, which should never be revealed</li><li>Public Key - public address to be published</li><li>Derivation index - index of generated address</li></ul></p><p>Tatum follows BIP44 specification and generates for Scrypta wallet with derivation path m'/44'/0'/0'/0. More about BIP44 HD wallets can be found here - <a target=\"_blank\" href=\"https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki\">https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki</a>. Generate BIP44 compatible Scrypta wallet.</p> 

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

api_instance = SwaggerClient::BlockchainScryptaApi.new

begin
  #Generate Scrypta wallet
  result = api_instance.generate_scryptawallet
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainScryptaApi->generate_scryptawallet: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ScryptaWallet**](ScryptaWallet.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_scrypta_blockbyhashorheight**
> ScryptaBlock get_scrypta_blockbyhashorheight(hash)

Get Block by hash or height

<h4>1 credit per API call.</h4><br/><p>Get Scrypta Block detail by block hash or height.</p>

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

api_instance = SwaggerClient::BlockchainScryptaApi.new
hash = 'hash_example' # String | Block hash or height.


begin
  #Get Block by hash or height
  result = api_instance.get_scrypta_blockbyhashorheight(hash)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainScryptaApi->get_scrypta_blockbyhashorheight: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Block hash or height. | 

### Return type

[**ScryptaBlock**](ScryptaBlock.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_scrypta_blockchain_information**
> ScryptaInfo get_scrypta_blockchain_information

Get Blockchain Information

<h4>1 credit per API call.</h4><br/><p>Get Scrypta Blockchain Information. Obtain basic info like testnet / mainent version of the chain, current block number and it's hash.</p>

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

api_instance = SwaggerClient::BlockchainScryptaApi.new

begin
  #Get Blockchain Information
  result = api_instance.get_scrypta_blockchain_information
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainScryptaApi->get_scrypta_blockchain_information: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ScryptaInfo**](ScryptaInfo.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_scrypta_blockhash**
> InlineResponse2004 get_scrypta_blockhash(i)

Get Block hash

<h4>1 credit per API call.</h4><br/><p>Get Scrypta Block hash. Returns hash of the block to get the block detail.</p>

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

api_instance = SwaggerClient::BlockchainScryptaApi.new
i = 'i_example' # String | The number of blocks preceding a particular block on a block chain.


begin
  #Get Block hash
  result = api_instance.get_scrypta_blockhash(i)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainScryptaApi->get_scrypta_blockhash: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **i** | **String**| The number of blocks preceding a particular block on a block chain. | 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_scrypta_transactionbyhash**
> ScryptaTx get_scrypta_transactionbyhash(hash)

Get Scrypta Transaction by hash

<h4>1 credit per API call.</h4><br/><p>Get Scrypta Transaction detail by transaction hash.</p>

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

api_instance = SwaggerClient::BlockchainScryptaApi.new
hash = 'hash_example' # String | Transaction hash


begin
  #Get Scrypta Transaction by hash
  result = api_instance.get_scrypta_transactionbyhash(hash)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainScryptaApi->get_scrypta_transactionbyhash: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Transaction hash | 

### Return type

[**ScryptaTx**](ScryptaTx.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_scrypta_transactionsbyaddress**
> Array&lt;ScryptaTx&gt; get_scrypta_transactionsbyaddress(page_size, offset, address)

Get Transactions by address

<h4>1 credit per API call.</h4><br/><p>Get Scrypta Transactions by address.</p>

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

api_instance = SwaggerClient::BlockchainScryptaApi.new
page_size = SwaggerClient::BigDecimal.new # BigDecimal | Max number of items per page is 50.
offset = SwaggerClient::BigDecimal.new # BigDecimal | Offset to obtain next page of the data.
address = 'address_example' # String | Address


begin
  #Get Transactions by address
  result = api_instance.get_scrypta_transactionsbyaddress(page_size, offset, address)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainScryptaApi->get_scrypta_transactionsbyaddress: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_size** | **BigDecimal**| Max number of items per page is 50. | 
 **offset** | **BigDecimal**| Offset to obtain next page of the data. | 
 **address** | **String**| Address | 

### Return type

[**Array&lt;ScryptaTx&gt;**](ScryptaTx.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_scrypta_utx_oof_transaction**
> ScryptaUTXO get_scrypta_utx_oof_transaction(hash, index)

Get UTXO of Transaction

<h4>1 credit per API call.</h4><br/> <p>Get UTXO of given transaction and output index. UTXO means Unspent Transaction Output, which is in blockchain terminology assets, that user received on the concrete address and does not spend it yet.<br/> In scrypta-like blockchains (LYRA, LTC, BCH), every transaction is built from the list of previously not spent transactions connected to the address. If user owns address A, receives in transaciont T1 10 LYRA, he can spend in the next transaction UTXO T1 of total value 10 LYRA. User can spend multiple UTXOs from different addresses in 1 transaction.<br/> If UTXO is not spent, data are returned, otherwise 404 error code.</p> 

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

api_instance = SwaggerClient::BlockchainScryptaApi.new
hash = 'hash_example' # String | TX Hash
index = 'index_example' # String | Index of tx output to check if spent or not


begin
  #Get UTXO of Transaction
  result = api_instance.get_scrypta_utx_oof_transaction(hash, index)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainScryptaApi->get_scrypta_utx_oof_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| TX Hash | 
 **index** | **String**| Index of tx output to check if spent or not | 

### Return type

[**ScryptaUTXO**](ScryptaUTXO.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_scryptaspendable_utxo**
> Array&lt;ScryptaUTXO&gt; get_scryptaspendable_utxo(page_size, offset, address)

Get Scrypta spendable UTXO

<h4>1 credit per API call.</h4><br/><p>Get Scrypta spendable UTXO.</p>

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

api_instance = SwaggerClient::BlockchainScryptaApi.new
page_size = SwaggerClient::BigDecimal.new # BigDecimal | Max number of items per page is 50.
offset = SwaggerClient::BigDecimal.new # BigDecimal | Offset to obtain next page of the data.
address = 'address_example' # String | Address


begin
  #Get Scrypta spendable UTXO
  result = api_instance.get_scryptaspendable_utxo(page_size, offset, address)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainScryptaApi->get_scryptaspendable_utxo: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_size** | **BigDecimal**| Max number of items per page is 50. | 
 **offset** | **BigDecimal**| Offset to obtain next page of the data. | 
 **address** | **String**| Address | 

### Return type

[**Array&lt;ScryptaUTXO&gt;**](ScryptaUTXO.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **send_lyr_atoblockchainaddresses**
> InlineResponse2005 send_lyr_atoblockchainaddresses(body)

Send LYRA to blockchain addresses

<h4>2 credits per API call.</h4><br/> <p>Send Scrypta to blockchain addresses. It is possible to build a blockchain transaction in 2 ways: <ul> <li><b>fromAddress</b> - assets will be sent from the list of addresses. For each of the addresses last 100 transactions will be scanned for any unspent UTXO and will be included in the transaction.</li> <li><b>fromUTXO</b> - assets will be sent from the list of unspent UTXOs. Each of the UTXO will be included in the transaction.</li> </ul> In scrypta-like blockchains, the transaction is created from the list of previously not spent UTXO. Every UTXO contains the number of funds, which can be spent. When the UTXO enters into the transaction, the whole amount is included and must be spent. For example, address A receives 2 transactions, T1 with 1 LYRA and T2 with 2 LYRA. The transaction, which will consume UTXOs for T1 and T2, will have available amount to spent 3 LYRA = 1 LYRA (T1) + 2 LYRA(T2).<br/><br/> There can be multiple recipients of the transactions, not only one. In the <b>to</b> section, every recipient address has it's corresponding amount. When the amount of funds, that should receive the recipient is lower than the number of funds from the UTXOs, the difference is used as a transaction fee.<br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and losing funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = SwaggerClient::BlockchainScryptaApi.new
body = SwaggerClient::ScryptaTransaction.new # ScryptaTransaction | 


begin
  #Send LYRA to blockchain addresses
  result = api_instance.send_lyr_atoblockchainaddresses(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainScryptaApi->send_lyr_atoblockchainaddresses: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ScryptaTransaction**](ScryptaTransaction.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



