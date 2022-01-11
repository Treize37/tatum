# SwaggerClient::BlockchainAlgorandALGOApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**algo_node_get_driver**](BlockchainAlgorandALGOApi.md#algo_node_get_driver) | **GET** /v3/algorand/node/algod/{xApiKey}/** | Access Algorand Algod GET node endpoints
[**algo_node_indexer_get_driver**](BlockchainAlgorandALGOApi.md#algo_node_indexer_get_driver) | **GET** /v3/algorand/node/indexer/{xApiKey}/** | Access Algorand Indexer GET node endpoints
[**algo_node_post_driver**](BlockchainAlgorandALGOApi.md#algo_node_post_driver) | **POST** /v3/algorand/node/algod/{xApiKey}/** | Access Algorand Algod POST node endpoints
[**algoand_broadcast**](BlockchainAlgorandALGOApi.md#algoand_broadcast) | **POST** /v3/algorand/broadcast | Broadcast signed Algorand transaction
[**algorand_blockchain_transfer**](BlockchainAlgorandALGOApi.md#algorand_blockchain_transfer) | **POST** /v3/algorand/transaction | Send ALGO from account to account
[**algorand_generate_address**](BlockchainAlgorandALGOApi.md#algorand_generate_address) | **GET** /v3/algorand/address/{priv} | Generate Algorand account address from private key
[**algorand_generate_wallet**](BlockchainAlgorandALGOApi.md#algorand_generate_wallet) | **GET** /v3/algorand/wallet | Generate Algorand wallet
[**algorand_get_balance**](BlockchainAlgorandALGOApi.md#algorand_get_balance) | **GET** /v3/algorand/account/balance/{address} | Get Algorand Account balance
[**algorand_get_block**](BlockchainAlgorandALGOApi.md#algorand_get_block) | **GET** /v3/algorand/block/{roundNumber} | Get Algorand block by block round number
[**algorand_get_current_block**](BlockchainAlgorandALGOApi.md#algorand_get_current_block) | **GET** /v3/algorand/block/current | Get current block number
[**algorand_get_pay_transactions_by_from_to**](BlockchainAlgorandALGOApi.md#algorand_get_pay_transactions_by_from_to) | **GET** /v3/algorand/transactions/{from}/{to} | Get Algorand Transactions between from and to
[**algorand_get_transaction**](BlockchainAlgorandALGOApi.md#algorand_get_transaction) | **GET** /v3/algorand/transaction/{txid} | Get Algorand Transaction

# **algo_node_get_driver**
> AlgoBlock algo_node_get_driver(x_api_key)

Access Algorand Algod GET node endpoints

<h4>1 credit per API call.</h4><br/> <p>Use this endpoint URL as a http-based url to connect directly to the Algorand node provided by Tatum. You can check al available APIs here - <a href=\"https://developer.algorand.org/docs/rest-apis/algod/v2/\" target=\"_blank\">https://developer.algorand.org/docs/rest-apis/algod/v2/</a>. <br/> Example call for Get Block is described in the response. <a href=\"https://developer.algorand.org/docs/rest-apis/algod/v2/#get-v2blocksround\" target=\"_blank\">https://developer.algorand.org/docs/rest-apis/algod/v2/#get-v2blocksround</a>. <br/> URL used for this call would be <pre>https://api-eu1.tatum.io/v3/algorand/node/algod/YOUR_API_KEY/v2/blocks/16775567</pre> </p> 

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

api_instance = SwaggerClient::BlockchainAlgorandALGOApi.new
x_api_key = 'x_api_key_example' # String | Tatum X-API-Key used for authorization.


begin
  #Access Algorand Algod GET node endpoints
  result = api_instance.algo_node_get_driver(x_api_key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainAlgorandALGOApi->algo_node_get_driver: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_api_key** | **String**| Tatum X-API-Key used for authorization. | 

### Return type

[**AlgoBlock**](AlgoBlock.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **algo_node_indexer_get_driver**
> AlgoTx algo_node_indexer_get_driver(x_api_key)

Access Algorand Indexer GET node endpoints

<h4>1 credit per API call.</h4><br/> <p>Use this endpoint URL as a http-based url to connect directly to the Algorand node provided by Tatum. You can check al available APIs here - <a href=\"https://developer.algorand.org/docs/rest-apis/indexer/\" target=\"_blank\">https://developer.algorand.org/docs/rest-apis/indexer/</a>. <br/> Example call for Get Tx By ID is described in the response. <a href=\"https://developer.algorand.org/docs/rest-apis/indexer/#get-v2transactionstxid\" target=\"_blank\">https://developer.algorand.org/docs/rest-apis/indexer/#get-v2transactionstxid</a>. <br/> URL used for this call would be <pre>https://api-eu1.tatum.io/v3/algorand/node/indexer/YOUR_API_KEY/v2/transactions/HNIQ76UTJYPOLZP5FWODYABBJPYPGJNEM2QEJSMDMQRWEKHEYJHQ</pre> </p> 

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

api_instance = SwaggerClient::BlockchainAlgorandALGOApi.new
x_api_key = 'x_api_key_example' # String | Tatum X-API-Key used for authorization.


begin
  #Access Algorand Indexer GET node endpoints
  result = api_instance.algo_node_indexer_get_driver(x_api_key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainAlgorandALGOApi->algo_node_indexer_get_driver: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_api_key** | **String**| Tatum X-API-Key used for authorization. | 

### Return type

[**AlgoTx**](AlgoTx.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **algo_node_post_driver**
> InlineResponse20060 algo_node_post_driver(bodyx_api_key)

Access Algorand Algod POST node endpoints

<h4>2 credits per API call.</h4><br/> <p>Use this endpoint URL as a http-based url to connect directly to the Algorand node provided by Tatum.  You can check al available APIs here - <a href=\"https://developer.algorand.org/docs/rest-apis/algod/v2/\" target=\"_blank\">https://developer.algorand.org/docs/rest-apis/algod/v2/</a>.  <br/>  Example call for Broadcast a raw transaction is described in the response. <a href=\"https://developer.algorand.org/docs/rest-apis/algod/v2/#post-v2transactions\" target=\"_blank\">https://developer.algorand.org/docs/rest-apis/algod/v2/#post-v2transactions</a>.  <br/>  URL used for this call would be <pre>https://api-eu1.tatum.io/v3/algorand/node/algod/YOUR_API_KEY/v2/transactions</pre>  </p> 

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

api_instance = SwaggerClient::BlockchainAlgorandALGOApi.new
body = SwaggerClient::XApiKeyBody.new # XApiKeyBody | 
x_api_key = 'x_api_key_example' # String | Tatum X-API-Key used for authorization.


begin
  #Access Algorand Algod POST node endpoints
  result = api_instance.algo_node_post_driver(bodyx_api_key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainAlgorandALGOApi->algo_node_post_driver: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**XApiKeyBody**](XApiKeyBody.md)|  | 
 **x_api_key** | **String**| Tatum X-API-Key used for authorization. | 

### Return type

[**InlineResponse20060**](InlineResponse20060.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **algoand_broadcast**
> TransactionHashKMS algoand_broadcast(body)

Broadcast signed Algorand transaction

<h4>2 credits per API call.</h4><br/> <p>Broadcast signed transaction to Algorand blockchain. This method is used internally from Tatum KMS or Tatum client libraries. It is possible to create custom signing mechanism and use this method only for broadcasting data to the blockchian.</p> 

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

api_instance = SwaggerClient::BlockchainAlgorandALGOApi.new
body = SwaggerClient::BroadcastKMS.new # BroadcastKMS | 


begin
  #Broadcast signed Algorand transaction
  result = api_instance.algoand_broadcast(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainAlgorandALGOApi->algoand_broadcast: #{e}"
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



# **algorand_blockchain_transfer**
> InlineResponse2005 algorand_blockchain_transfer(body)

Send ALGO from account to account

<h4>2 credits per API call.</h4><br/> <p>Send ALGO from account to account.<br/><br/> This operation needs the private key of the blockchain address. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = SwaggerClient::BlockchainAlgorandALGOApi.new
body = SwaggerClient::AlgorandTransactionBody.new # AlgorandTransactionBody | 


begin
  #Send ALGO from account to account
  result = api_instance.algorand_blockchain_transfer(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainAlgorandALGOApi->algorand_blockchain_transfer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AlgorandTransactionBody**](AlgorandTransactionBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **algorand_generate_address**
> InlineResponse20059 algorand_generate_address(priv)

Generate Algorand account address from private key

<h4>1 credit per API call.</h4><br/> <p>Generate Algorand account deposit address from private key.</p> 

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

api_instance = SwaggerClient::BlockchainAlgorandALGOApi.new
priv = 'priv_example' # String | private key of wallet.


begin
  #Generate Algorand account address from private key
  result = api_instance.algorand_generate_address(priv)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainAlgorandALGOApi->algorand_generate_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **priv** | **String**| private key of wallet. | 

### Return type

[**InlineResponse20059**](InlineResponse20059.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **algorand_generate_wallet**
> AlgoWallet algorand_generate_wallet(opts)

Generate Algorand wallet

<h4>1 credit per API call.</h4><br/><p>Tatum supports Algorand wallets.</p> 

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

api_instance = SwaggerClient::BlockchainAlgorandALGOApi.new
opts = { 
  mnemonic: 'mnemonic_example' # String | Mnemonic to use for generation of extended public and private keys.
}

begin
  #Generate Algorand wallet
  result = api_instance.algorand_generate_wallet(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainAlgorandALGOApi->algorand_generate_wallet: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mnemonic** | **String**| Mnemonic to use for generation of extended public and private keys. | [optional] 

### Return type

[**AlgoWallet**](AlgoWallet.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **algorand_get_balance**
> InlineResponse20061 algorand_get_balance(address)

Get Algorand Account balance

<h4>1 credit per API call.</h4><br/> <p>Get Algorand account balance in ALGO.</p> 

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

api_instance = SwaggerClient::BlockchainAlgorandALGOApi.new
address = 'address_example' # String | Account address


begin
  #Get Algorand Account balance
  result = api_instance.algorand_get_balance(address)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainAlgorandALGOApi->algorand_get_balance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Account address | 

### Return type

[**InlineResponse20061**](InlineResponse20061.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **algorand_get_block**
> AlgoBlock algorand_get_block(round_number)

Get Algorand block by block round number

<h4>1 credit per API call.</h4><br/><p>Get Algorand block by block round number.</p>

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

api_instance = SwaggerClient::BlockchainAlgorandALGOApi.new
round_number = SwaggerClient::BigDecimal.new # BigDecimal | Block round number


begin
  #Get Algorand block by block round number
  result = api_instance.algorand_get_block(round_number)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainAlgorandALGOApi->algorand_get_block: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **round_number** | **BigDecimal**| Block round number | 

### Return type

[**AlgoBlock**](AlgoBlock.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **algorand_get_current_block**
> BigDecimal algorand_get_current_block

Get current block number

<h4>1 credit per API call.</h4><br/><p>Get Algorand current block number. This is the number of the latest block in the blockchain.</p>

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

api_instance = SwaggerClient::BlockchainAlgorandALGOApi.new

begin
  #Get current block number
  result = api_instance.algorand_get_current_block
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainAlgorandALGOApi->algorand_get_current_block: #{e}"
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



# **algorand_get_pay_transactions_by_from_to**
> AlgoTxsWithPagination algorand_get_pay_transactions_by_from_to(from, to, opts)

Get Algorand Transactions between from and to

<h4>1 credit per API call.</h4><br/><p>Get Algorand transaction by specified period of time.</p>

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

api_instance = SwaggerClient::BlockchainAlgorandALGOApi.new
from = 'from_example' # String | Start timestamp in specified period of time
to = 'to_example' # String | End timestamp in specified period of time
opts = { 
  limit: 'limit_example', # String | page size for pagination
  _next: '_next_example' # String | Algorand Next Token for getting the next page results
}

begin
  #Get Algorand Transactions between from and to
  result = api_instance.algorand_get_pay_transactions_by_from_to(from, to, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainAlgorandALGOApi->algorand_get_pay_transactions_by_from_to: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **String**| Start timestamp in specified period of time | 
 **to** | **String**| End timestamp in specified period of time | 
 **limit** | **String**| page size for pagination | [optional] 
 **_next** | **String**| Algorand Next Token for getting the next page results | [optional] 

### Return type

[**AlgoTxsWithPagination**](AlgoTxsWithPagination.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **algorand_get_transaction**
> AlgoTx algorand_get_transaction(txid)

Get Algorand Transaction

<h4>1 credit per API call.</h4><br/><p>Get Algorand transaction by transaction id.</p>

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

api_instance = SwaggerClient::BlockchainAlgorandALGOApi.new
txid = 'txid_example' # String | Transaction id


begin
  #Get Algorand Transaction
  result = api_instance.algorand_get_transaction(txid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainAlgorandALGOApi->algorand_get_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **txid** | **String**| Transaction id | 

### Return type

[**AlgoTx**](AlgoTx.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



