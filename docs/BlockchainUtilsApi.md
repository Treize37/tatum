# SwaggerClient::BlockchainUtilsApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**approve_transfer_custodial_wallet**](BlockchainUtilsApi.md#approve_transfer_custodial_wallet) | **POST** /v3/blockchain/sc/custodial/approve | Approve transfer of assets from custodial wallet
[**estimate_fee_blockchain**](BlockchainUtilsApi.md#estimate_fee_blockchain) | **POST** /v3/blockchain/estimate | Estimate fee for transaction
[**generate_custodial_wallet**](BlockchainUtilsApi.md#generate_custodial_wallet) | **POST** /v3/blockchain/sc/custodial | Generate custodial wallet address
[**generate_custodial_wallet_batch**](BlockchainUtilsApi.md#generate_custodial_wallet_batch) | **POST** /v3/blockchain/sc/custodial/batch | Generate custodial wallet address
[**s_c_get_contract_address**](BlockchainUtilsApi.md#s_c_get_contract_address) | **GET** /v3/blockchain/sc/address/{chain}/{hash} | Get contract address from transaction
[**s_c_get_custodial_addresses**](BlockchainUtilsApi.md#s_c_get_custodial_addresses) | **GET** /v3/blockchain/sc/custodial/{chain}/{hash} | Get custodial addresses from transaction
[**transfer_custodial_wallet**](BlockchainUtilsApi.md#transfer_custodial_wallet) | **POST** /v3/blockchain/sc/custodial/transfer | Transfer assets from custodial wallet
[**transfer_custodial_wallet_batch**](BlockchainUtilsApi.md#transfer_custodial_wallet_batch) | **POST** /v3/blockchain/sc/custodial/transfer/batch | Transfer multiple assets from custodial wallet

# **approve_transfer_custodial_wallet**
> InlineResponse2005 approve_transfer_custodial_wallet(body)

Approve transfer of assets from custodial wallet

<h4>2 credits per API call.</h4><br/> <p>Approve transfer of assets from the custodial smart contract wallet.<br/> Supported blockchains: <ul> <li>Binance Smart Chain</li> <li>Harmony.ONE</li> <li>Ethereum</li> <li>Celo</li> <li>Harmony.ONE</li> <li>XDC Network (XinFin)</li> <li>Polygon (Matic)</li> </ul> </p> 

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

api_instance = SwaggerClient::BlockchainUtilsApi.new
body = SwaggerClient::CustodialApproveBody.new # CustodialApproveBody | 


begin
  #Approve transfer of assets from custodial wallet
  result = api_instance.approve_transfer_custodial_wallet(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainUtilsApi->approve_transfer_custodial_wallet: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CustodialApproveBody**](CustodialApproveBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **estimate_fee_blockchain**
> InlineResponse2006 estimate_fee_blockchain(body)

Estimate fee for transaction

<h4>2 credits per API call.</h4><br/> <p>Estimate current transaction fee for different operations.<br/> Supported blockchains: <ul> <li>Bitcoin</li> <li>Litecoin</li> <li>Harmony.ONE</li> <li>The XDC Network</li> <li>Ethereum</li> <li>Celo</li> <li>Binance Smart Chain</li> <li>Polygon</li> <li>Elrond</li> </ul> </p> 

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

api_instance = SwaggerClient::BlockchainUtilsApi.new
body = SwaggerClient::BlockchainEstimateBody.new # BlockchainEstimateBody | 


begin
  #Estimate fee for transaction
  result = api_instance.estimate_fee_blockchain(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainUtilsApi->estimate_fee_blockchain: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BlockchainEstimateBody**](BlockchainEstimateBody.md)|  | 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **generate_custodial_wallet**
> InlineResponse2005 generate_custodial_wallet(body)

Generate custodial wallet address

<h4>2 credits per API call.</h4><br/> <p>Generate new custodial smart contract address on the blockchain. It's possible to enable tokens, which should be detected and supported on that address. This address enables custodial providers to receive native assets, ERC20 / ERC721 / ERC1155 tokens on behalf of their customers on dedicated blockchain address, but in the same time it can initiate transfer of those assets away. Gas required for the transfer from that address is going to be deducted from the providers address - the one, which was used to generate the address on the blockchain.<br/> There are multiple options, how this address can be setup - it cannot be changed in the future: <ul> <li>Native assets only - ETH, BSC, CELO, MATIC, ONE, TRX</li> <li>Native assets + ERC20 tokens</li> <li>Native assets + ERC721 tokens</li> <li>Native assets + ERC1155 tokens - TRON does not support 1155 standard</li> <li>Native assets + ERC20 + ERC721 tokens</li> <li>Native assets + ERC20 + ERC1155 tokens - TRON does not support 1155 standard</li> <li>Native assets + ERC721 + ERC1155 tokens - TRON does not support 1155 standard</li> <li>Native assets + ERC20 + ERC721 + ERC1155 tokens - TRON does not support 1155 standard</li> </ul><br/> All of these options could be enabled with a batch mode as well - in 1 transaction, it is possible to transfer multiple different assets from that address, e.g. ETH + USDC + ERC721 token. Without batch mode, 3 separate transaction must have been performed.<br/> This operation deploys a smart contract on the blockchain. More assets you will support, more intial gas will be used for address creation. Batch mode adds more gas for every type.<br/> Supported blockchains: <ul> <li>Binance Smart Chain</li> <li>Harmony.ONE</li> <li>Ethereum</li> <li>Celo</li> <li>TRON - without 1155</li> <li>Polygon (Matic)</li> </ul> </p> 

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

api_instance = SwaggerClient::BlockchainUtilsApi.new
body = SwaggerClient::ScCustodialBody.new # ScCustodialBody | 


begin
  #Generate custodial wallet address
  result = api_instance.generate_custodial_wallet(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainUtilsApi->generate_custodial_wallet: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ScCustodialBody**](ScCustodialBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **generate_custodial_wallet_batch**
> InlineResponse2005 generate_custodial_wallet_batch(body, opts)

Generate custodial wallet address

<h4>2 credits per API call.</h4><br/> <p>Generate new custodial smart contract address on the blockchain. This address enables custodial providers to receive native assets, ERC20 / ERC721 / ERC1155 tokens on behalf of their customers on dedicated blockchain address, but in the same time it can initiate transfer of those assets away. Gas required for the transfer from that address is going to be deducted from the providers address - the one, which was used to generate the address on the blockchain.<br/> This operation deploys a smart contract on the blockchain.<br/> Supported blockchains: <ul> <li>Ethereum</li> <li>Binance Smart Chain</li> <li>Celo</li> <li>Polygon (Matic)</li> <li>Harmony.ONE</li> <li>XDC Network (XinFin)</li> <li>Tron</li> </ul> </p> 

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

api_instance = SwaggerClient::BlockchainUtilsApi.new
body = SwaggerClient::CustodialBatchBody.new # CustodialBatchBody | 
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of Ethereum testnet. Defaults to ropsten.
}

begin
  #Generate custodial wallet address
  result = api_instance.generate_custodial_wallet_batch(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainUtilsApi->generate_custodial_wallet_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CustodialBatchBody**](CustodialBatchBody.md)|  | 
 **x_testnet_type** | **String**| Type of Ethereum testnet. Defaults to ropsten. | [optional] [default to ethereum-ropsten]

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **s_c_get_contract_address**
> InlineResponse2007 s_c_get_contract_address(chain, hash)

Get contract address from transaction

<h4>1 credit per API call.</h4><br/><p>Get smart contract address from deploy transaction.</p>

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

api_instance = SwaggerClient::BlockchainUtilsApi.new
chain = 'chain_example' # String | Blockchain to work with
hash = 'hash_example' # String | Transaction hash


begin
  #Get contract address from transaction
  result = api_instance.s_c_get_contract_address(chain, hash)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainUtilsApi->s_c_get_contract_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain** | **String**| Blockchain to work with | 
 **hash** | **String**| Transaction hash | 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **s_c_get_custodial_addresses**
> Array&lt;String&gt; s_c_get_custodial_addresses(chain, hash)

Get custodial addresses from transaction

<h4>1 credit per API call.</h4><br/><p>Get custodial smart contract addresses from deploy transaction.</p>

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

api_instance = SwaggerClient::BlockchainUtilsApi.new
chain = 'chain_example' # String | Blockchain to work with
hash = 'hash_example' # String | Transaction hash


begin
  #Get custodial addresses from transaction
  result = api_instance.s_c_get_custodial_addresses(chain, hash)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainUtilsApi->s_c_get_custodial_addresses: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain** | **String**| Blockchain to work with | 
 **hash** | **String**| Transaction hash | 

### Return type

**Array&lt;String&gt;**

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **transfer_custodial_wallet**
> InlineResponse2005 transfer_custodial_wallet(body)

Transfer assets from custodial wallet

<h4>2 credits per API call.</h4><br/> <p>Transfer assets from the custodial smart contract wallet. Originator of this transaction must be the address which created the address. It's possible to transfer only 1 assets in 1 transaction.<br/> Supported blockchains: <ul> <li>Binance Smart Chain</li> <li>Harmony.ONE</li> <li>Ethereum</li> <li>Celo</li> <li>TRON</li> <li>XDC Network (XinFin)</li> <li>Polygon (Matic)</li> </ul> </p> 

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

api_instance = SwaggerClient::BlockchainUtilsApi.new
body = SwaggerClient::CustodialTransferBody.new # CustodialTransferBody | 


begin
  #Transfer assets from custodial wallet
  result = api_instance.transfer_custodial_wallet(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainUtilsApi->transfer_custodial_wallet: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CustodialTransferBody**](CustodialTransferBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **transfer_custodial_wallet_batch**
> InlineResponse2005 transfer_custodial_wallet_batch(body)

Transfer multiple assets from custodial wallet

<h4>2 credits per API call.</h4><br/> <p>Transfer assets from the custodial smart contract wallet. Originator of this transaction must be the address which created the address. It's possible to transfer any amount of different assets in 1 transaction, if the wallet was generated with the batch option enabled.<br/> Supported blockchains: <ul> <li>Binance Smart Chain</li> <li>Harmony.ONE</li> <li>XDC Network (XinFin)</li> <li>Ethereum</li> <li>Celo</li> <li>Tron</li> <li>Polygon (Matic)</li> </ul> </p> 

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

api_instance = SwaggerClient::BlockchainUtilsApi.new
body = SwaggerClient::TransferBatchBody.new # TransferBatchBody | 


begin
  #Transfer multiple assets from custodial wallet
  result = api_instance.transfer_custodial_wallet_batch(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainUtilsApi->transfer_custodial_wallet_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TransferBatchBody**](TransferBatchBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



