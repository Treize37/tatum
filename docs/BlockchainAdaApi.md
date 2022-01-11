# Tatum::BlockchainAdaApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ada_broadcast**](BlockchainAdaApi.md#ada_broadcast) | **POST** /v3/ada/broadcast | Broadcast signed Ada transaction
[**ada_generate_address**](BlockchainAdaApi.md#ada_generate_address) | **GET** /v3/ada/address/{xpub}/{index} | Generate Ada deposit address from Extended public key
[**ada_generate_address_private_key**](BlockchainAdaApi.md#ada_generate_address_private_key) | **POST** /v3/ada/wallet/priv | Generate Ada private key
[**ada_generate_wallet**](BlockchainAdaApi.md#ada_generate_wallet) | **GET** /v3/ada/wallet | Generate Ada wallet
[**ada_get_account**](BlockchainAdaApi.md#ada_get_account) | **GET** /v3/ada/account/{address} | Gets a Ada account by address
[**ada_get_block**](BlockchainAdaApi.md#ada_get_block) | **GET** /v3/ada/block/{hash} | Get Block by hash or height
[**ada_get_block_chain_info**](BlockchainAdaApi.md#ada_get_block_chain_info) | **GET** /v3/ada/info | Get Blockchain information
[**ada_get_raw_transaction**](BlockchainAdaApi.md#ada_get_raw_transaction) | **GET** /v3/ada/transaction/{hash} | Get transaction by hash
[**ada_get_tx_by_address**](BlockchainAdaApi.md#ada_get_tx_by_address) | **GET** /v3/ada/transaction/address/{address} | Get transactions by address
[**ada_get_utxo_by_address**](BlockchainAdaApi.md#ada_get_utxo_by_address) | **GET** /v3/ada/{address}/utxos | Get UTXOs by address
[**ada_transfer_blockchain**](BlockchainAdaApi.md#ada_transfer_blockchain) | **POST** /v3/ada/transaction | Send Ada to blockchain addresses

# **ada_broadcast**
> TransactionHashKMS ada_broadcast(body)

Broadcast signed Ada transaction

<h4>2 credits per API call.</h4><br/> <p>Broadcasts a signed transaction to the Ada blockchain. This method is used internally from Tatum KMS, Tatum Middleware or Tatum Client Libraries. It is possible to create a custom signing mechanism and only use this method for broadcasting data to the blockchain.</p> 

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

api_instance = Tatum::BlockchainAdaApi.new
body = Tatum::BroadcastKMS.new # BroadcastKMS | 


begin
  #Broadcast signed Ada transaction
  result = api_instance.ada_broadcast(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainAdaApi->ada_broadcast: #{e}"
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



# **ada_generate_address**
> InlineResponse20033 ada_generate_address(xpub, index)

Generate Ada deposit address from Extended public key

<h4>1 credit per API call.</h4><br/> <p>Generates a Ada deposit address from an Extended public key. The deposit address is generated for the specific index - each extended public key can generate up to 2^31 addresses starting from index 0 until 2^31 - 1.</p> 

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

api_instance = Tatum::BlockchainAdaApi.new
xpub = 'xpub_example' # String | Extended public key of a wallet.
index = Tatum::BigDecimal.new # BigDecimal | Derivation index of the desired address to be generated.


begin
  #Generate Ada deposit address from Extended public key
  result = api_instance.ada_generate_address(xpub, index)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainAdaApi->ada_generate_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xpub** | **String**| Extended public key of a wallet. | 
 **index** | **BigDecimal**| Derivation index of the desired address to be generated. | 

### Return type

[**InlineResponse20033**](InlineResponse20033.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **ada_generate_address_private_key**
> PrivKey ada_generate_address_private_key(body)

Generate Ada private key

<h4>1 credit per API call.</h4><br/> <p>Generates a private key for an address from a mnemonic for a given derivation path index. The private key is generated for the specific index - each mnemonic can generate up to 2^32 private keys starting from index 0 until 2^31 - 1.</p> 

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

api_instance = Tatum::BlockchainAdaApi.new
body = Tatum::PrivKeyRequest.new # PrivKeyRequest | 


begin
  #Generate Ada private key
  result = api_instance.ada_generate_address_private_key(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainAdaApi->ada_generate_address_private_key: #{e}"
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



# **ada_generate_wallet**
> Wallet ada_generate_wallet(opts)

Generate Ada wallet

<h4>1 credit per API call.</h4><br/><p>Tatum supports BIP44 HD wallets. Because they can generate 2^31 addresses from 1 mnemonic phrase, they are very convenient and secure. A mnemonic phrase consists of 24 special words in a defined order and can restore access to all generated addresses and private keys.<br/>Each address is identified by 3 main values:<ul><li>Private Key - your secret value, which should never be revealed</li><li>Public Key - public address to be published</li><li>Derivation index - index of generated address</li></ul></p><p>Tatum follows BIP44 specification and generates for ADA wallet with derivation path m/1852'/1815'/0'. More about BIP44 HD wallets can be found here - <a target=\"_blank\" href=\"https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki\">https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki</a>. Generate BIP44 compatible Ada wallet.</p> 

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

api_instance = Tatum::BlockchainAdaApi.new
opts = { 
  mnemonic: 'mnemonic_example' # String | Mnemonic to use for generation of extended public and private keys.
}

begin
  #Generate Ada wallet
  result = api_instance.ada_generate_wallet(opts)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainAdaApi->ada_generate_wallet: #{e}"
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



# **ada_get_account**
> Array&lt;AdaAccount&gt; ada_get_account(address)

Gets a Ada account by address

<h4>2 credits per API call.</h4><br/> <p>Gets a Ada account by address.</p> 

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

api_instance = Tatum::BlockchainAdaApi.new
address = 'address_example' # String | Address


begin
  #Gets a Ada account by address
  result = api_instance.ada_get_account(address)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainAdaApi->ada_get_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Address | 

### Return type

[**Array&lt;AdaAccount&gt;**](AdaAccount.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **ada_get_block**
> AdaBlock ada_get_block(hash)

Get Block by hash or height

<h4>1 credit per API call.</h4><br/><p>Gets Ada block detail by block hash or height.</p>

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

api_instance = Tatum::BlockchainAdaApi.new
hash = 'hash_example' # String | Block hash or height.


begin
  #Get Block by hash or height
  result = api_instance.ada_get_block(hash)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainAdaApi->ada_get_block: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Block hash or height. | 

### Return type

[**AdaBlock**](AdaBlock.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **ada_get_block_chain_info**
> AdaInfo ada_get_block_chain_info

Get Blockchain information

<h4>1 credit per API call.</h4><br/><p>Gets Ada blockchain information. Obtains basic info like the testnet / mainnet version of the chain, the current block number and its hash.</p>

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

api_instance = Tatum::BlockchainAdaApi.new

begin
  #Get Blockchain information
  result = api_instance.ada_get_block_chain_info
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainAdaApi->ada_get_block_chain_info: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AdaInfo**](AdaInfo.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **ada_get_raw_transaction**
> AdaTx ada_get_raw_transaction(hash)

Get transaction by hash

<h4>1 credit per API call.</h4><br/><p>Get Ada Transaction detail by transaction hash.</p>

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

api_instance = Tatum::BlockchainAdaApi.new
hash = 'hash_example' # String | Transaction hash


begin
  #Get transaction by hash
  result = api_instance.ada_get_raw_transaction(hash)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainAdaApi->ada_get_raw_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Transaction hash | 

### Return type

[**AdaTx**](AdaTx.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **ada_get_tx_by_address**
> Array&lt;AdaTx&gt; ada_get_tx_by_address(address, page_size, opts)

Get transactions by address

<h4>1 credit per API call.</h4><br/><p>Gets a Ada transaction by address.</p>

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

api_instance = Tatum::BlockchainAdaApi.new
address = 'address_example' # String | Address
page_size = Tatum::BigDecimal.new # BigDecimal | Max number of items per page is 50.
opts = { 
  offset: Tatum::BigDecimal.new # BigDecimal | Offset to obtain the next page of data.
}

begin
  #Get transactions by address
  result = api_instance.ada_get_tx_by_address(address, page_size, opts)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainAdaApi->ada_get_tx_by_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Address | 
 **page_size** | **BigDecimal**| Max number of items per page is 50. | 
 **offset** | **BigDecimal**| Offset to obtain the next page of data. | [optional] 

### Return type

[**Array&lt;AdaTx&gt;**](AdaTx.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **ada_get_utxo_by_address**
> Array&lt;AdaUTXO&gt; ada_get_utxo_by_address(address)

Get UTXOs by address

<h4>1 credit per API call.</h4><br/><p>Gets a Ada UTXOs by address.</p>

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

api_instance = Tatum::BlockchainAdaApi.new
address = 'address_example' # String | Address


begin
  #Get UTXOs by address
  result = api_instance.ada_get_utxo_by_address(address)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainAdaApi->ada_get_utxo_by_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Address | 

### Return type

[**Array&lt;AdaUTXO&gt;**](AdaUTXO.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **ada_transfer_blockchain**
> InlineResponse2005 ada_transfer_blockchain(body)

Send Ada to blockchain addresses

<h4>2 credits per API call.</h4><br/> <p>Send Ada to blockchain addresses. It is possible to build a blockchain transaction in 2 ways: <ul> <li><b>fromAddress</b> - assets will be sent from the list of addresses. For each of the addresses, the last 100 transactions will be scanned for any unspent UTXO to be included in the transaction.</li> <li><b>fromUTXO</b> - assets will be sent from the list of unspent UTXOs. Each of the UTXOs will be included in the transaction.</li> </ul> In bitcoin-like blockchains, a transaction is created from the list of previously unspent UTXOs. Every UTXO contains the amount of funds that can be spent. When the UTXO is entered into the transaction, the whole amount is included and must be spent. For example, address A receives 2 transactions, T1 with 1 ADA and T2 with 2 ADA. The transaction, which will consume the UTXOs for T1 and T2, will have an available amount to spend of 3 ADA = 1 ADA (T1) + 2 ADA(T2).<br/><br/> There can be multiple recipients of the transactions. In the <b>to</b> section, every recipient address has its own corresponding amount. When the amount of funds that the recipient should receive is lower than the amount of funds from the UTXOs, the difference is used as a transaction fee.<br/><br/> This operation requires the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send their private keys to the Internet because there is a strong possibility that they will be stolen and the funds will be lost. In this method, it is possible to enter a privateKey or signatureId. The privateKey should be used only for quick development on testnet versions of blockchains when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used to ensure the highest level of security, and the signatureId should be present in the request. Alternatively, it is also possible to use the Tatum Client Library for supported languages. </p> 

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

api_instance = Tatum::BlockchainAdaApi.new
body = Tatum::AdaTransactionBody.new # AdaTransactionBody | 


begin
  #Send Ada to blockchain addresses
  result = api_instance.ada_transfer_blockchain(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainAdaApi->ada_transfer_blockchain: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AdaTransactionBody**](AdaTransactionBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



