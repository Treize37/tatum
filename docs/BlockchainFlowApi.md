# Tatum::BlockchainFlowApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**flow_add_pub_key_to_address**](BlockchainFlowApi.md#flow_add_pub_key_to_address) | **PUT** /v3/flow/account | Add public key to Flow address
[**flow_create_address_from_pub_key**](BlockchainFlowApi.md#flow_create_address_from_pub_key) | **POST** /v3/flow/account | Create Flow address from public key
[**flow_generate_address**](BlockchainFlowApi.md#flow_generate_address) | **GET** /v3/flow/address/{xpub}/{index} | Generate Flow address from Extended public key
[**flow_generate_pub_key**](BlockchainFlowApi.md#flow_generate_pub_key) | **GET** /v3/flow/pubkey/{xpub}/{index} | Generate Flow public key from Extended public key
[**flow_generate_pub_key_private_key**](BlockchainFlowApi.md#flow_generate_pub_key_private_key) | **POST** /v3/flow/wallet/priv | Generate Flow private key
[**flow_generate_wallet**](BlockchainFlowApi.md#flow_generate_wallet) | **GET** /v3/flow/wallet | Generate Flow wallet
[**flow_get_account**](BlockchainFlowApi.md#flow_get_account) | **GET** /v3/flow/account/{address} | Get Flow account
[**flow_get_block**](BlockchainFlowApi.md#flow_get_block) | **GET** /v3/flow/block/{hash} | Get Flow Block by hash or height
[**flow_get_block_chain_info**](BlockchainFlowApi.md#flow_get_block_chain_info) | **GET** /v3/flow/block/current | Get Flow current block number
[**flow_get_block_events**](BlockchainFlowApi.md#flow_get_block_events) | **GET** /v3/flow/block/events | Get Flow events from blocks
[**flow_get_raw_transaction**](BlockchainFlowApi.md#flow_get_raw_transaction) | **GET** /v3/flow/transaction/{hash} | Get Flow Transaction by hash
[**flow_transfer_blockchain**](BlockchainFlowApi.md#flow_transfer_blockchain) | **POST** /v3/flow/transaction | Send Flow to blockchain addresses
[**flow_transfer_custom_blockchain**](BlockchainFlowApi.md#flow_transfer_custom_blockchain) | **POST** /v3/flow/transaction/custom | Send arbitrary transaction to blockchain

# **flow_add_pub_key_to_address**
> InlineResponse20028 flow_add_pub_key_to_address(body)

Add public key to Flow address

<h4>100 credits per API call. Tatum covers the fee connected to the transaction costs in subscription credits. This operation can be done on mainnet only for paid plans.</h4><br/> <p>Add public key to existing Flow blockchain addresses. Private key for that public key can be used for signing transaction. There are two possibilites how the transaction on the blockchain can be created: <ul> <li>Using mnemonic and index - private key is generated based on the index in the mnemonic.</li> <li>Using secret - private keys is entered manually.</li> </ul><br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and losing funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = Tatum::BlockchainFlowApi.new
body = Tatum::FlowAccountBody.new # FlowAccountBody | 


begin
  #Add public key to Flow address
  result = api_instance.flow_add_pub_key_to_address(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainFlowApi->flow_add_pub_key_to_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**FlowAccountBody**](FlowAccountBody.md)|  | 

### Return type

[**InlineResponse20028**](InlineResponse20028.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **flow_create_address_from_pub_key**
> InlineResponse20029 flow_create_address_from_pub_key(body)

Create Flow address from public key

<h4>100 credits per API call. Tatum covers the fee connected to the transaction costs in subscription credits. This operation can be done on mainnet only for paid plans.</h4><br/> <p>Create Flow blockchain addresses from public key. This will generate address on the blockchain with public key. Private key for that public key can be used for signing transaction. There are two possibilites how the transaction on the blockchain can be created: <ul> <li>Using mnemonic and index - private key is generated based on the index in the mnemonic.</li> <li>Using secret - private keys is entered manually.</li> </ul><br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and losing funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = Tatum::BlockchainFlowApi.new
body = Tatum::FlowAccountBody1.new # FlowAccountBody1 | 


begin
  #Create Flow address from public key
  result = api_instance.flow_create_address_from_pub_key(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainFlowApi->flow_create_address_from_pub_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**FlowAccountBody1**](FlowAccountBody1.md)|  | 

### Return type

[**InlineResponse20029**](InlineResponse20029.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **flow_generate_address**
> InlineResponse20026 flow_generate_address(xpub, index)

Generate Flow address from Extended public key

<h4>1 credit for GET operation + 3000 credits per address.</h4><br/> <p>Generate Flow address from Extended public key. This operation internally creates public key and assings it to the newly created address on the blockchain. There is minimal amount, which must be sent to the FLOW address during creation - 0.001 FLOW, which will be used from Tatum service account.<br/> <b>This operation is allowed on any Testnet plan and only on Paid Mainnet plans.</b> Public key is generated for the specific index - each extended public key can generate up to 2^31 addresses starting from index 0 until 2^31 - 1.</p> 

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

api_instance = Tatum::BlockchainFlowApi.new
xpub = 'xpub_example' # String | Extended public key of wallet.
index = Tatum::BigDecimal.new # BigDecimal | Derivation index of desired address to be generated.


begin
  #Generate Flow address from Extended public key
  result = api_instance.flow_generate_address(xpub, index)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainFlowApi->flow_generate_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xpub** | **String**| Extended public key of wallet. | 
 **index** | **BigDecimal**| Derivation index of desired address to be generated. | 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **flow_generate_pub_key**
> InlineResponse20027 flow_generate_pub_key(xpub, index)

Generate Flow public key from Extended public key

<h4>1 credit per API call.</h4><br/> <p>Generate Flow public key from Extended public key. This key is added to the address on the blockchain and can control the funds there. Public key is generated for the specific index - each extended public key can generate up to 2^31 addresses starting from index 0 until 2^31 - 1.</p> 

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

api_instance = Tatum::BlockchainFlowApi.new
xpub = 'xpub_example' # String | Extended public key of wallet.
index = Tatum::BigDecimal.new # BigDecimal | Derivation index of desired address to be generated.


begin
  #Generate Flow public key from Extended public key
  result = api_instance.flow_generate_pub_key(xpub, index)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainFlowApi->flow_generate_pub_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xpub** | **String**| Extended public key of wallet. | 
 **index** | **BigDecimal**| Derivation index of desired address to be generated. | 

### Return type

[**InlineResponse20027**](InlineResponse20027.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **flow_generate_pub_key_private_key**
> PrivKey flow_generate_pub_key_private_key(body)

Generate Flow private key

<h4>2 credits per API call.</h4><br/> <p>Generate private key for address from mnemonic for given derivation path index. Private key is generated for the specific index - each mnemonic can generate up to 2^32 private keys starting from index 0 until 2^31 - 1.</p> 

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

api_instance = Tatum::BlockchainFlowApi.new
body = Tatum::PrivKeyRequest.new # PrivKeyRequest | 


begin
  #Generate Flow private key
  result = api_instance.flow_generate_pub_key_private_key(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainFlowApi->flow_generate_pub_key_private_key: #{e}"
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



# **flow_generate_wallet**
> Wallet flow_generate_wallet(opts)

Generate Flow wallet

<h4>1 credit per API call.</h4><br/><p>Tatum supports BIP44 HD wallets. It is very convenient and secure, since it can generate 2^31 addresses from 1 mnemonic phrase. Mnemonic phrase consists of 24 special words in defined order and can restore access to all generated addresses and private keys.<br/>Each address is identified by 3 main values:<ul><li>Private Key - your secret value, which should never be revealed</li><li>Public Key - public address to be published</li><li>Derivation index - index of generated address</li></ul></p><p>Tatum follows BIP44 specification and generates for Dogecoin wallet with derivation path m'/44'/3'/0'/0. More about BIP44 HD wallets can be found here - <a target=\"_blank\" href=\"https://github.com/litecoin/bips/blob/master/bip-0044.mediawiki\">https://github.com/litecoin/bips/blob/master/bip-0044.mediawiki</a>. Generate BIP44 compatible Dogecoin wallet.</p> 

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

api_instance = Tatum::BlockchainFlowApi.new
opts = { 
  mnemonic: 'mnemonic_example' # String | Mnemonic to use for generation of extended public and private keys.
}

begin
  #Generate Flow wallet
  result = api_instance.flow_generate_wallet(opts)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainFlowApi->flow_generate_wallet: #{e}"
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



# **flow_get_account**
> FlowAccount flow_get_account(address)

Get Flow account

<h4>1 credit per API call.</h4><br/><p>Get Flow account details.</p>

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

api_instance = Tatum::BlockchainFlowApi.new
address = 'address_example' # String | Account address


begin
  #Get Flow account
  result = api_instance.flow_get_account(address)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainFlowApi->flow_get_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Account address | 

### Return type

[**FlowAccount**](FlowAccount.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **flow_get_block**
> FlowBlock flow_get_block(hash)

Get Flow Block by hash or height

<h4>1 credit per API call.</h4><br/><p>Get Flow Block detail by block hash or height.</p>

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

api_instance = Tatum::BlockchainFlowApi.new
hash = 'hash_example' # String | Block hash or height.


begin
  #Get Flow Block by hash or height
  result = api_instance.flow_get_block(hash)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainFlowApi->flow_get_block: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Block hash or height. | 

### Return type

[**FlowBlock**](FlowBlock.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **flow_get_block_chain_info**
> BigDecimal flow_get_block_chain_info

Get Flow current block number

<h4>1 credit per API call.</h4><br/><p>Get Flow current block number.</p>

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

api_instance = Tatum::BlockchainFlowApi.new

begin
  #Get Flow current block number
  result = api_instance.flow_get_block_chain_info
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainFlowApi->flow_get_block_chain_info: #{e}"
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



# **flow_get_block_events**
> Array&lt;FlowEvent&gt; flow_get_block_events(type, from, to)

Get Flow events from blocks

<h4>1 credit per API call.</h4><br/><p>Get Flow events from block.</p>

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

api_instance = Tatum::BlockchainFlowApi.new
type = 'type_example' # String | Event type to search for
from = Tatum::BigDecimal.new # BigDecimal | Block height to start searching
to = Tatum::BigDecimal.new # BigDecimal | Block height to end searching


begin
  #Get Flow events from blocks
  result = api_instance.flow_get_block_events(type, from, to)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainFlowApi->flow_get_block_events: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Event type to search for | 
 **from** | **BigDecimal**| Block height to start searching | 
 **to** | **BigDecimal**| Block height to end searching | 

### Return type

[**Array&lt;FlowEvent&gt;**](FlowEvent.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **flow_get_raw_transaction**
> FlowTx flow_get_raw_transaction(hash)

Get Flow Transaction by hash

<h4>1 credit per API call.</h4><br/><p>Get Flow Transaction detail by transaction hash.</p>

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

api_instance = Tatum::BlockchainFlowApi.new
hash = 'hash_example' # String | Transaction hash


begin
  #Get Flow Transaction by hash
  result = api_instance.flow_get_raw_transaction(hash)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainFlowApi->flow_get_raw_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Transaction hash | 

### Return type

[**FlowTx**](FlowTx.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **flow_transfer_blockchain**
> InlineResponse2005 flow_transfer_blockchain(body)

Send Flow to blockchain addresses

<h4>100 credits per API call.</h4><br/> <p>Send Flow or FUSD to blockchain addresses. Tatum covers the fee connected to the transaction costs in subscription credits. This operation can be done on mainnet only for paid plans.<br/> There are two possibilites how the transaction on the blockchain can be created: <ul> <li>Using mnemonic and index - private key is generated based on the index in the mnemonic.</li> <li>Using secret - private keys is entered manually.</li> </ul><br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and losing funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = Tatum::BlockchainFlowApi.new
body = Tatum::FlowTransactionBody.new # FlowTransactionBody | 


begin
  #Send Flow to blockchain addresses
  result = api_instance.flow_transfer_blockchain(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainFlowApi->flow_transfer_blockchain: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**FlowTransactionBody**](FlowTransactionBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **flow_transfer_custom_blockchain**
> InlineResponse2005 flow_transfer_custom_blockchain(body)

Send arbitrary transaction to blockchain

<h4>100 credits per API call.</h4><br/> <p>Send arbitrary blockchain transaction to FLOW blockchain. Tatum covers the fee connected to the transaction costs in subscription credits. This operation can be done on mainnet only for paid plans.<br/> There are two possibilites how the transaction on the blockchain can be created: <ul> <li>Using mnemonic and index - private key is generated based on the index in the mnemonic.</li> <li>Using secret - private keys is entered manually.</li> </ul><br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and losing funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = Tatum::BlockchainFlowApi.new
body = Tatum::TransactionCustomBody.new # TransactionCustomBody | 


begin
  #Send arbitrary transaction to blockchain
  result = api_instance.flow_transfer_custom_blockchain(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainFlowApi->flow_transfer_custom_blockchain: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TransactionCustomBody**](TransactionCustomBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



