# SwaggerClient::BlockchainXDCNetworkXinFinApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**xdc_blockchain_smart_contract_invocation**](BlockchainXDCNetworkXinFinApi.md#xdc_blockchain_smart_contract_invocation) | **POST** /v3/xdc/smartcontract | Invoke Smart Contract method
[**xdc_blockchain_transfer**](BlockchainXDCNetworkXinFinApi.md#xdc_blockchain_transfer) | **POST** /v3/xdc/transaction | Send XDC / ERC20 from account to account
[**xdc_broadcast**](BlockchainXDCNetworkXinFinApi.md#xdc_broadcast) | **POST** /v3/xdc/broadcast | Broadcast signed XDC transaction
[**xdc_estimate_gas**](BlockchainXDCNetworkXinFinApi.md#xdc_estimate_gas) | **POST** /v3/xdc/gas | Estimate XDC transaction fees
[**xdc_generate_address**](BlockchainXDCNetworkXinFinApi.md#xdc_generate_address) | **GET** /v3/xdc/address/{xpub}/{index} | Generate XDC account address from Extended public key
[**xdc_generate_address_private_key**](BlockchainXDCNetworkXinFinApi.md#xdc_generate_address_private_key) | **POST** /v3/xdc/wallet/priv | Generate XDC private key
[**xdc_generate_wallet**](BlockchainXDCNetworkXinFinApi.md#xdc_generate_wallet) | **GET** /v3/xdc/wallet | Generate XDC wallet
[**xdc_get_balance**](BlockchainXDCNetworkXinFinApi.md#xdc_get_balance) | **GET** /v3/xdc/account/balance/{address} | Get XDC Account balance
[**xdc_get_block**](BlockchainXDCNetworkXinFinApi.md#xdc_get_block) | **GET** /v3/xdc/block/{hash} | Get XDC block by hash
[**xdc_get_current_block**](BlockchainXDCNetworkXinFinApi.md#xdc_get_current_block) | **GET** /v3/xdc/block/current | Get current block number
[**xdc_get_transaction**](BlockchainXDCNetworkXinFinApi.md#xdc_get_transaction) | **GET** /v3/xdc/transaction/{hash} | Get XDC Transaction
[**xdc_get_transaction_count**](BlockchainXDCNetworkXinFinApi.md#xdc_get_transaction_count) | **GET** /v3/xdc/transaction/count/{address} | Get count of outgoing XDC transactions
[**xdc_web3_driver**](BlockchainXDCNetworkXinFinApi.md#xdc_web3_driver) | **POST** /v3/xdc/web3/{xApiKey} | Web3 HTTP driver

# **xdc_blockchain_smart_contract_invocation**
> InlineResponse20016 xdc_blockchain_smart_contract_invocation(body)

Invoke Smart Contract method

<h4>2 credits per API call.</h4><br/> <p>Invoke any method on an existing Smart Contract. It is possible to call read or write method on the Smart Contract defined via contractAddress. For read operations, data is returned, for write operations, transaction Id of the associated transaction is returned.<br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages.</p> 

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

api_instance = SwaggerClient::BlockchainXDCNetworkXinFinApi.new
body = SwaggerClient::XdcSmartcontractBody.new # XdcSmartcontractBody | 


begin
  #Invoke Smart Contract method
  result = api_instance.xdc_blockchain_smart_contract_invocation(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainXDCNetworkXinFinApi->xdc_blockchain_smart_contract_invocation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**XdcSmartcontractBody**](XdcSmartcontractBody.md)|  | 

### Return type

[**InlineResponse20016**](InlineResponse20016.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **xdc_blockchain_transfer**
> InlineResponse2005 xdc_blockchain_transfer(body)

Send XDC / ERC20 from account to account

<h4>2 credits per API call.</h4><br/> <p>Send XDC or Tatum supported ERC20 token from account to account.<br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = SwaggerClient::BlockchainXDCNetworkXinFinApi.new
body = SwaggerClient::XdcTransactionBody.new # XdcTransactionBody | 


begin
  #Send XDC / ERC20 from account to account
  result = api_instance.xdc_blockchain_transfer(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainXDCNetworkXinFinApi->xdc_blockchain_transfer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**XdcTransactionBody**](XdcTransactionBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **xdc_broadcast**
> TransactionHashKMS xdc_broadcast(body)

Broadcast signed XDC transaction

<h4>2 credits per API call.</h4><br/> <p>Broadcast signed transaction to XDC blockchain. This method is used internally from Tatum KMS or Tatum client libraries. It is possible to create custom signing mechanism and use this method only for broadcasting data to the blockchian.</p> 

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

api_instance = SwaggerClient::BlockchainXDCNetworkXinFinApi.new
body = SwaggerClient::BroadcastKMS.new # BroadcastKMS | 


begin
  #Broadcast signed XDC transaction
  result = api_instance.xdc_broadcast(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainXDCNetworkXinFinApi->xdc_broadcast: #{e}"
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



# **xdc_estimate_gas**
> InlineResponse20072 xdc_estimate_gas(body)

Estimate XDC transaction fees

<h4>2 credits per API call.</h4><br/> <p>Estimate gasLimit and gasPrice of the XDC transaction. Gas price is obtained from <a href=\"https://rpc.xinfin.network/gasPrice\" target=\"_blank\">https://rpc.xinfin.network/gasPrice</a>. </p> 

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

api_instance = SwaggerClient::BlockchainXDCNetworkXinFinApi.new
body = SwaggerClient::XdcEstimateGas.new # XdcEstimateGas | 


begin
  #Estimate XDC transaction fees
  result = api_instance.xdc_estimate_gas(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainXDCNetworkXinFinApi->xdc_estimate_gas: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**XdcEstimateGas**](XdcEstimateGas.md)|  | 

### Return type

[**InlineResponse20072**](InlineResponse20072.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **xdc_generate_address**
> InlineResponse20070 xdc_generate_address(xpub, index)

Generate XDC account address from Extended public key

<h4>1 credit per API call.</h4><br/> <p>Generate XDC account deposit address from Extended public key. Deposit address is generated for the specific index - each extended public key can generate up to 2^31 addresses starting from index 0 until 2^31.</p> 

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

api_instance = SwaggerClient::BlockchainXDCNetworkXinFinApi.new
xpub = 'xpub_example' # String | Extended public key of wallet.
index = SwaggerClient::BigDecimal.new # BigDecimal | Derivation index of desired address to be generated.


begin
  #Generate XDC account address from Extended public key
  result = api_instance.xdc_generate_address(xpub, index)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainXDCNetworkXinFinApi->xdc_generate_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xpub** | **String**| Extended public key of wallet. | 
 **index** | **BigDecimal**| Derivation index of desired address to be generated. | 

### Return type

[**InlineResponse20070**](InlineResponse20070.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **xdc_generate_address_private_key**
> PrivKey xdc_generate_address_private_key(body)

Generate XDC private key

<h4>1 credit per API call.</h4><br/> <p>Generate private key of address from mnemonic for given derivation path index. Private key is generated for the specific index - each mnemonic can generate up to 2^31 private keys starting from index 0 until 2^31.</p> 

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

api_instance = SwaggerClient::BlockchainXDCNetworkXinFinApi.new
body = SwaggerClient::PrivKeyRequest.new # PrivKeyRequest | 


begin
  #Generate XDC private key
  result = api_instance.xdc_generate_address_private_key(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainXDCNetworkXinFinApi->xdc_generate_address_private_key: #{e}"
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



# **xdc_generate_wallet**
> Wallet xdc_generate_wallet(opts)

Generate XDC wallet

<h4>1 credit per API call.</h4><br/> <p>Tatum supports BIP44 HD wallets. It is very convenient and secure, since it can generate 2^31 addresses from 1 mnemonic phrase. Mnemonic phrase consists of 24 special words in defined order and can restore access to all generated addresses and private keys. <br/> Each address is identified by 3 main values: <ul><li>Private Key - your secret value, which should never be revealed</li> <li>Public Key - public address to be published</li> <li>Derivation index - index of generated address</li></ul> </p> <p>Tatum follows BIP44 specification and generates for XDC wallet with derivation path m'/44'/550'/0'/0. More about BIP44 HD wallets can be found here - <a target=\"_blank\" href=\"https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki\">https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki</a>. Generate BIP44 compatible XDC wallet.</p> 

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

api_instance = SwaggerClient::BlockchainXDCNetworkXinFinApi.new
opts = { 
  mnemonic: 'mnemonic_example' # String | Mnemonic to use for generation of extended public and private keys.
}

begin
  #Generate XDC wallet
  result = api_instance.xdc_generate_wallet(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainXDCNetworkXinFinApi->xdc_generate_wallet: #{e}"
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



# **xdc_get_balance**
> InlineResponse20071 xdc_get_balance(address)

Get XDC Account balance

<h4>1 credit per API call.</h4><br/> <p>Get account balance in XDC. This method does not prints any balance of the ERC20 or ERC721 tokens on the account.</p>

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

api_instance = SwaggerClient::BlockchainXDCNetworkXinFinApi.new
address = 'address_example' # String | Account address


begin
  #Get XDC Account balance
  result = api_instance.xdc_get_balance(address)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainXDCNetworkXinFinApi->xdc_get_balance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Account address | 

### Return type

[**InlineResponse20071**](InlineResponse20071.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **xdc_get_block**
> XdcBlock xdc_get_block(hash)

Get XDC block by hash

<h4>1 credit per API call.</h4><br/> <p>Get XDC block by block hash or block number.</p>

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

api_instance = SwaggerClient::BlockchainXDCNetworkXinFinApi.new
hash = 'hash_example' # String | Block hash or block number


begin
  #Get XDC block by hash
  result = api_instance.xdc_get_block(hash)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainXDCNetworkXinFinApi->xdc_get_block: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Block hash or block number | 

### Return type

[**XdcBlock**](XdcBlock.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **xdc_get_current_block**
> BigDecimal xdc_get_current_block

Get current block number

<h4>1 credit per API call.</h4><br/> <p>Get XDC current block number. This is the number of the latest block in the blockchain.</p>

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

api_instance = SwaggerClient::BlockchainXDCNetworkXinFinApi.new

begin
  #Get current block number
  result = api_instance.xdc_get_current_block
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainXDCNetworkXinFinApi->xdc_get_current_block: #{e}"
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



# **xdc_get_transaction**
> XdcTx xdc_get_transaction(hash)

Get XDC Transaction

<h4>2 credit per API call.</h4><br/> <p>Get XDC transaction by transaction hash.</p>

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

api_instance = SwaggerClient::BlockchainXDCNetworkXinFinApi.new
hash = 'hash_example' # String | Transaction hash


begin
  #Get XDC Transaction
  result = api_instance.xdc_get_transaction(hash)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainXDCNetworkXinFinApi->xdc_get_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Transaction hash | 

### Return type

[**XdcTx**](XdcTx.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **xdc_get_transaction_count**
> BigDecimal xdc_get_transaction_count(address)

Get count of outgoing XDC transactions

<h4>1 credit per API call.</h4><br/> <p>Get a number of outgoing XDC transactions for the address. When a transaction is sent, there can be multiple outgoing transactions, which are not yet processed by the blockchain. To distinguish between them, there is a counter called a nonce, which represents the order of the transaction in the list of outgoing transactions.</p> 

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

api_instance = SwaggerClient::BlockchainXDCNetworkXinFinApi.new
address = 'address_example' # String | address


begin
  #Get count of outgoing XDC transactions
  result = api_instance.xdc_get_transaction_count(address)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainXDCNetworkXinFinApi->xdc_get_transaction_count: #{e}"
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



# **xdc_web3_driver**
> Object xdc_web3_driver(bodyx_api_key)

Web3 HTTP driver

<h4>2 credits per API call.</h4><br/> <p>Use this endpoint URL as a http-based web3 driver to connect directly to the XDC node provided by Tatum. To learn more about XDC Web3, please visit <a href=\"https://howto.xinfin.org/\" target=\"_blank\">XDC developer's guide.</a></p> 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BlockchainXDCNetworkXinFinApi.new
body = nil # Object | 
x_api_key = 'x_api_key_example' # String | Tatum X-API-Key used for authorization.


begin
  #Web3 HTTP driver
  result = api_instance.xdc_web3_driver(bodyx_api_key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainXDCNetworkXinFinApi->xdc_web3_driver: #{e}"
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



