# SwaggerClient::BlockchainBitcoinCashApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bch_broadcast**](BlockchainBitcoinCashApi.md#bch_broadcast) | **POST** /v3/bcash/broadcast | Broadcast signed Bitcoin Cash transaction
[**bch_generate_address**](BlockchainBitcoinCashApi.md#bch_generate_address) | **GET** /v3/bcash/address/{xpub}/{index} | Generate Bitcoin Cash deposit address from Extended public key
[**bch_generate_address_private_key**](BlockchainBitcoinCashApi.md#bch_generate_address_private_key) | **POST** /v3/bcash/wallet/priv | Generate Bitcoin Cash private key
[**bch_generate_wallet**](BlockchainBitcoinCashApi.md#bch_generate_wallet) | **GET** /v3/bcash/wallet | Generate Bitcoin Cash wallet
[**bch_get_block**](BlockchainBitcoinCashApi.md#bch_get_block) | **GET** /v3/bcash/block/{hash} | Get Bitcoin Cash Block by hash
[**bch_get_block_chain_info**](BlockchainBitcoinCashApi.md#bch_get_block_chain_info) | **GET** /v3/bcash/info | Get Bitcoin Cash Blockchain Information
[**bch_get_block_hash**](BlockchainBitcoinCashApi.md#bch_get_block_hash) | **GET** /v3/bcash/block/hash/{i} | Get Bitcoin Cash Block hash
[**bch_get_raw_transaction**](BlockchainBitcoinCashApi.md#bch_get_raw_transaction) | **GET** /v3/bcash/transaction/{hash} | Get Bitcoin Cash Transaction by hash
[**bch_get_tx_by_address**](BlockchainBitcoinCashApi.md#bch_get_tx_by_address) | **GET** /v3/bcash/transaction/address/{address} | Get Bitcoin Cash Transactions by address
[**bch_transfer_blockchain**](BlockchainBitcoinCashApi.md#bch_transfer_blockchain) | **POST** /v3/bcash/transaction | Send Bitcoin Cash to blockchain addresses

# **bch_broadcast**
> TransactionHashKMS bch_broadcast(body)

Broadcast signed Bitcoin Cash transaction

<h4>5 credits per API call.</h4><br/> <p>Broadcast signed transaction to Bitcoin Cash blockchain. This method is used internally from Tatum KMS, Tatum Middleware or Tatum client libraries. It is possible to create custom signing mechanism and use this method only for broadcasting data to the blockchian.</p> 

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

api_instance = SwaggerClient::BlockchainBitcoinCashApi.new
body = SwaggerClient::BroadcastKMS.new # BroadcastKMS | 


begin
  #Broadcast signed Bitcoin Cash transaction
  result = api_instance.bch_broadcast(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainBitcoinCashApi->bch_broadcast: #{e}"
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



# **bch_generate_address**
> InlineResponse20022 bch_generate_address(xpub, index)

Generate Bitcoin Cash deposit address from Extended public key

<h4>5 credits per API call.</h4><br/> <p>Generate Bitcoin Cash deposit address from Extended public key. Deposit address is generated for the specific index - each extended public key can generate up to 2^31 addresses starting from index 0 until 2^31 - 1. Generates new format of address starting with bitcoincash: in case of mainnet, bchtest: in case of testnet..</p> 

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

api_instance = SwaggerClient::BlockchainBitcoinCashApi.new
xpub = 'xpub_example' # String | Extended public key of wallet.
index = SwaggerClient::BigDecimal.new # BigDecimal | Derivation index of desired address to be generated.


begin
  #Generate Bitcoin Cash deposit address from Extended public key
  result = api_instance.bch_generate_address(xpub, index)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainBitcoinCashApi->bch_generate_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xpub** | **String**| Extended public key of wallet. | 
 **index** | **BigDecimal**| Derivation index of desired address to be generated. | 

### Return type

[**InlineResponse20022**](InlineResponse20022.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **bch_generate_address_private_key**
> PrivKey bch_generate_address_private_key(body)

Generate Bitcoin Cash private key

<h4>5 credits per API call.</h4><br/> <p>Generate private key for address from mnemonic for given derivation path index. Private key is generated for the specific index - each mnemonic can generate up to 2^32 private keys starting from index 0 until 2^31 - 1.</p> 

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

api_instance = SwaggerClient::BlockchainBitcoinCashApi.new
body = SwaggerClient::PrivKeyRequest.new # PrivKeyRequest | 


begin
  #Generate Bitcoin Cash private key
  result = api_instance.bch_generate_address_private_key(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainBitcoinCashApi->bch_generate_address_private_key: #{e}"
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



# **bch_generate_wallet**
> Wallet bch_generate_wallet(opts)

Generate Bitcoin Cash wallet

<h4>5 credits per API call.</h4><br/><p>Tatum supports BIP44 HD wallets. It is very convenient and secure, since it can generate 2^31 addresses from 1 mnemonic phrase. Mnemonic phrase consists of 24 special words in defined order and can restore access to all generated addresses and private keys.<br/>Each address is identified by 3 main values:<ul><li>Private Key - your secret value, which should never be revealed</li><li>Public Key - public address to be published</li><li>Derivation index - index of generated address</li></ul></p><p>Tatum follows BIP44 specification and generates for Bitcoin Cash wallet with derivation path m'/44'/145'/0'/0. More about BIP44 HD wallets can be found here - <a target=\"_blank\" href=\"https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki\">https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki</a>. Generate BIP44 compatible Bitcoin Cash wallet.</p> 

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

api_instance = SwaggerClient::BlockchainBitcoinCashApi.new
opts = { 
  mnemonic: 'mnemonic_example' # String | Mnemonic to use for generation of extended public and private keys.
}

begin
  #Generate Bitcoin Cash wallet
  result = api_instance.bch_generate_wallet(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainBitcoinCashApi->bch_generate_wallet: #{e}"
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



# **bch_get_block**
> BchBlock bch_get_block(hash)

Get Bitcoin Cash Block by hash

<h4>5 credits per API call.</h4><br/><p>Get Bitcoin Cash Block detail by block hash or height.</p>

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

api_instance = SwaggerClient::BlockchainBitcoinCashApi.new
hash = 'hash_example' # String | Block hash or height


begin
  #Get Bitcoin Cash Block by hash
  result = api_instance.bch_get_block(hash)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainBitcoinCashApi->bch_get_block: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Block hash or height | 

### Return type

[**BchBlock**](BchBlock.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **bch_get_block_chain_info**
> BchInfo bch_get_block_chain_info

Get Bitcoin Cash Blockchain Information

<h4>5 credits per API call.</h4><br/><p>Get Bitcoin Cash Blockchain Information. Obtain basic info like testnet / mainnet version of the chain, current block number and it's hash.</p>

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

api_instance = SwaggerClient::BlockchainBitcoinCashApi.new

begin
  #Get Bitcoin Cash Blockchain Information
  result = api_instance.bch_get_block_chain_info
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainBitcoinCashApi->bch_get_block_chain_info: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BchInfo**](BchInfo.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **bch_get_block_hash**
> InlineResponse2004 bch_get_block_hash(i)

Get Bitcoin Cash Block hash

<h4>5 credits per API call.</h4><br/><p>Get Bitcoin Cash Block hash. Returns hash of the block to get the block detail.</p>

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

api_instance = SwaggerClient::BlockchainBitcoinCashApi.new
i = SwaggerClient::BigDecimal.new # BigDecimal | The number of blocks preceding a particular block on a block chain.


begin
  #Get Bitcoin Cash Block hash
  result = api_instance.bch_get_block_hash(i)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainBitcoinCashApi->bch_get_block_hash: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **i** | **BigDecimal**| The number of blocks preceding a particular block on a block chain. | 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **bch_get_raw_transaction**
> BchTx bch_get_raw_transaction(hash)

Get Bitcoin Cash Transaction by hash

<h4>5 credits per API call.</h4><br/><p>Get Bitcoin Cash Transaction by transaction hash.</p>

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

api_instance = SwaggerClient::BlockchainBitcoinCashApi.new
hash = 'hash_example' # String | Transaction hash


begin
  #Get Bitcoin Cash Transaction by hash
  result = api_instance.bch_get_raw_transaction(hash)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainBitcoinCashApi->bch_get_raw_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Transaction hash | 

### Return type

[**BchTx**](BchTx.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **bch_get_tx_by_address**
> Array&lt;BchTx&gt; bch_get_tx_by_address(address, opts)

Get Bitcoin Cash Transactions by address

<h4>5 credits per API call.</h4><br/><p>Get Bitcoin Cash Transaction by address. Limit is 50 transaction per response.</p>

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

api_instance = SwaggerClient::BlockchainBitcoinCashApi.new
address = 'address_example' # String | Address
opts = { 
  skip: 56 # Integer | Define, how much transactions should be skipped to obtain another page.
}

begin
  #Get Bitcoin Cash Transactions by address
  result = api_instance.bch_get_tx_by_address(address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainBitcoinCashApi->bch_get_tx_by_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Address | 
 **skip** | **Integer**| Define, how much transactions should be skipped to obtain another page. | [optional] 

### Return type

[**Array&lt;BchTx&gt;**](BchTx.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **bch_transfer_blockchain**
> InlineResponse2005 bch_transfer_blockchain(body)

Send Bitcoin Cash to blockchain addresses

<h4>10 credits per API call.</h4><br/> <p>Send Bitcoin Cash to blockchain addresses. It is possible to build a blockchain transaction in 1 way: <ul> <li><b>fromUTXO</b> - assets will be sent from the list of unspent UTXOs. Each of the UTXO will be included in the transaction.</li> </ul> In bitcoin-like blockchains, transaction is created from the list of previously not spent UTXO. Every UTXO contains amount of funds, which can be spent. When the UTXO enters into the transaction, the whole amount is included and must be spent. For example, address A receives 2 transactions, T1 with 1 BCH and T2 with 2 BCH. The transaction, which will consume UTXOs for T1 and T2, will have available amount to spent 3 BCH = 1 BCH (T1) + 2 BCH(T2).<br/><br/> There can be multiple recipients of the transactions, not only one. In the <b>to</b> section, every recipient address has it's corresponding amount. When the amount of funds, that should receive the recipient is lower than the amount of funds from the UTXOs, the difference is used as a transaction fee.<br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = SwaggerClient::BlockchainBitcoinCashApi.new
body = SwaggerClient::BcashTransactionBody.new # BcashTransactionBody | 


begin
  #Send Bitcoin Cash to blockchain addresses
  result = api_instance.bch_transfer_blockchain(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainBitcoinCashApi->bch_transfer_blockchain: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BcashTransactionBody**](BcashTransactionBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



