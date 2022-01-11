# SwaggerClient::BlockchainMultiTokenERC1155Api

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_multi_token_minter**](BlockchainMultiTokenERC1155Api.md#add_multi_token_minter) | **POST** /v3/multitoken/mint/add | Add Multi Token miter
[**burn_multi_token**](BlockchainMultiTokenERC1155Api.md#burn_multi_token) | **POST** /v3/multitoken/burn | Burn Multi Token
[**burn_multi_token_batch**](BlockchainMultiTokenERC1155Api.md#burn_multi_token_batch) | **POST** /v3/multitoken/burn/batch | Burn Multi Token Batch
[**deploy_multi_token**](BlockchainMultiTokenERC1155Api.md#deploy_multi_token) | **POST** /v3/multitoken/deploy | Deploy Multi Token Smart Contract.
[**mint_multi_token**](BlockchainMultiTokenERC1155Api.md#mint_multi_token) | **POST** /v3/multitoken/mint | Mint Multi Token
[**mint_multi_token_batch**](BlockchainMultiTokenERC1155Api.md#mint_multi_token_batch) | **POST** /v3/multitoken/mint/batch | Mint Multi Token Batch
[**multi_token_get_address_balance**](BlockchainMultiTokenERC1155Api.md#multi_token_get_address_balance) | **GET** /v3/multitoken/address/balance/{chain}/{address} | Get Multi Tokens by Address
[**multi_token_get_balance**](BlockchainMultiTokenERC1155Api.md#multi_token_get_balance) | **GET** /v3/multitoken/balance/{chain}/{contractAddress}/{address}/{tokenId} | Get Multi Token Account balance
[**multi_token_get_balance_batch**](BlockchainMultiTokenERC1155Api.md#multi_token_get_balance_batch) | **GET** /v3/multitoken/balance/batch/{chain}/{contractAddress} | Get Multi Token Account balance Batch
[**multi_token_get_contract_address**](BlockchainMultiTokenERC1155Api.md#multi_token_get_contract_address) | **GET** /v3/multitoken/address/{chain}/{hash} | Get Contract address
[**multi_token_get_metadata**](BlockchainMultiTokenERC1155Api.md#multi_token_get_metadata) | **GET** /v3/multitoken/metadata/{chain}/{contractAddress}/{token} | Get Multi Token Token Metadata
[**multi_token_get_transaction**](BlockchainMultiTokenERC1155Api.md#multi_token_get_transaction) | **GET** /v3/multitoken/transaction/{chain}/{hash} | Get Transaction
[**multi_token_get_transaction_by_address**](BlockchainMultiTokenERC1155Api.md#multi_token_get_transaction_by_address) | **GET** /v3/multitoken/transaction/{chain}/{address}/{tokenAddress} | Get Multi Token transactions by address
[**transfer_multi_token**](BlockchainMultiTokenERC1155Api.md#transfer_multi_token) | **POST** /v3/multitoken/transaction | Transfer Multi Token Token
[**transfer_multi_token_batch**](BlockchainMultiTokenERC1155Api.md#transfer_multi_token_batch) | **POST** /v3/multitoken/transaction/batch | Transfer Multi Token Batch

# **add_multi_token_minter**
> InlineResponse2005 add_multi_token_minter(body, opts)

Add Multi Token miter

<h4>2 credits per API call.</h4><br/> <p>Add Multi Token minter.<br/><br/> Tatum now supports Multi Tokens these blockchains:<br/> <ul> <li><b>Ethereum</b></li> <li><b>Polygon (Matic)</b></li> <li><b>Kcs (KCS)</b></li> <li><b>Celo</b></li> <li><b>Harmony.ONE</b></li> <li><b>Binance Smart Chain</b></li> </ul> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = SwaggerClient::BlockchainMultiTokenERC1155Api.new
body = SwaggerClient::MintAddBody1.new # MintAddBody1 | 
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of testnet. Defaults to ropsten. Valid only for ETH invocations.
}

begin
  #Add Multi Token miter
  result = api_instance.add_multi_token_minter(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainMultiTokenERC1155Api->add_multi_token_minter: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MintAddBody1**](MintAddBody1.md)|  | 
 **x_testnet_type** | **String**| Type of testnet. Defaults to ropsten. Valid only for ETH invocations. | [optional] [default to ethereum-ropsten]

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **burn_multi_token**
> InlineResponse2005 burn_multi_token(body, opts)

Burn Multi Token

<h4>2 credits per API call.</h4><br/> <p>Burn a fixed amount of Multi Tokens by id. This method destroys Multi Tokens from smart contract defined in contractAddress.<br/><br/> Tatum now supports Multi Token these blockchains:<br/> <ul> <li><b>Ethereum</b></li> <li><b>Polygon (Matic)</b></li> <li><b>Kcs (Matic)</b></li> <li><b>Celo</b></li> <li><b>Harmony.ONE</b></li> <li><b>Binance Smart Chain</b></li> <li><b>Algorand</b></li> </ul> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = SwaggerClient::BlockchainMultiTokenERC1155Api.new
body = SwaggerClient::MultitokenBurnBody.new # MultitokenBurnBody | 
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of testnet. Defaults to ropsten. Valid only for ETH invocations.
}

begin
  #Burn Multi Token
  result = api_instance.burn_multi_token(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainMultiTokenERC1155Api->burn_multi_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MultitokenBurnBody**](MultitokenBurnBody.md)|  | 
 **x_testnet_type** | **String**| Type of testnet. Defaults to ropsten. Valid only for ETH invocations. | [optional] [default to ethereum-ropsten]

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **burn_multi_token_batch**
> InlineResponse2005 burn_multi_token_batch(body, opts)

Burn Multi Token Batch

<h4>2 credits per API call.</h4><br/> <p>Burn multiple Multi Token Tokens by id assigned to same address in one transaction. This method destroys any Multi Tokens token from smart contract defined in contractAddress.<br/><br/> Tatum now supports Multi Tokens these blockchains:<br/> <ul> <li><b>Ethereum</b></li> <li><b>Polygon (Matic)</b></li> <li><b>Kcs (KCS)</b></li> <li><b>Celo</b></li> <li><b>Harmony.ONE</b></li> <li><b>Binance Smart Chain</b></li> </ul> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = SwaggerClient::BlockchainMultiTokenERC1155Api.new
body = SwaggerClient::BurnBatchBody.new # BurnBatchBody | 
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of testnet. Defaults to ropsten. Valid only for ETH invocations.
}

begin
  #Burn Multi Token Batch
  result = api_instance.burn_multi_token_batch(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainMultiTokenERC1155Api->burn_multi_token_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BurnBatchBody**](BurnBatchBody.md)|  | 
 **x_testnet_type** | **String**| Type of testnet. Defaults to ropsten. Valid only for ETH invocations. | [optional] [default to ethereum-ropsten]

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **deploy_multi_token**
> InlineResponse2005 deploy_multi_token(body, opts)

Deploy Multi Token Smart Contract.

<p>Deploy Multi Token Smart Contract. This method creates new ERC1155 Smart Contract (Multi Tokens) on the blockchain. Smart contract is standardized and audited. It is possible to mint, burn and transfer tokens. It is also possible to mint multiple tokens at once.<br/> Tatum now supports Multi Tokens on these blockchains:<br/> <ul> <li><b>Ethereum</b></li> <li><b>Polygon (Matic)</b></li> <li><b>Kcs (KCS)</b></li> <li><b>Celo</b></li> <li><b>Harmony.ONE</b></li> <li><b>Binance Smart Chain</b></li> </ul>  This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = SwaggerClient::BlockchainMultiTokenERC1155Api.new
body = SwaggerClient::MultitokenDeployBody.new # MultitokenDeployBody | 
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of testnet. Defaults to ropsten. Valid only for ETH invocations.
}

begin
  #Deploy Multi Token Smart Contract.
  result = api_instance.deploy_multi_token(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainMultiTokenERC1155Api->deploy_multi_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MultitokenDeployBody**](MultitokenDeployBody.md)|  | 
 **x_testnet_type** | **String**| Type of testnet. Defaults to ropsten. Valid only for ETH invocations. | [optional] [default to ethereum-ropsten]

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **mint_multi_token**
> InlineResponse2005 mint_multi_token(body, opts)

Mint Multi Token

<h4>2 credits per API call.</h4><br/> <p>Mint a fixed amount of Multi Token and transfer it to destination account. Create and transfer any Multi Token token from smart contract defined in contractAddress. It is possible to add Metadata to the created token with a more detailed information about it.<br/><br/> Tatum now supports Multi Token these blockchains:<br/> <ul> <li><b>Ethereum</b></li> <li><b>Polygon (Matic)</b></li> <li><b>Kcs (KCS)</b></li> <li><b>Celo</b></li> <li><b>Harmony.ONE</b></li> <li><b>Binance Smart Chain</b></li> <li><b>Algorand</b></li> </ul> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = SwaggerClient::BlockchainMultiTokenERC1155Api.new
body = SwaggerClient::MultitokenMintBody.new # MultitokenMintBody | 
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of testnet. Defaults to ropsten. Valid only for ETH invocations.
}

begin
  #Mint Multi Token
  result = api_instance.mint_multi_token(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainMultiTokenERC1155Api->mint_multi_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MultitokenMintBody**](MultitokenMintBody.md)|  | 
 **x_testnet_type** | **String**| Type of testnet. Defaults to ropsten. Valid only for ETH invocations. | [optional] [default to ethereum-ropsten]

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **mint_multi_token_batch**
> InlineResponse2005 mint_multi_token_batch(body, opts)

Mint Multi Token Batch

<h4>2 credits per API call.</h4><br/> <p>Create a fixed amount of multiple Multi Tokens Tokens and transfer them to destination account in one transaction. Create and transfer Multi Tokens tokens from smart contract defined in contractAddress.<br/><br/> Tatum now supports Multi Tokens on these blockchains:<br/> <ul> <li><b>Ethereum</b></li> <li><b>Polygon (Matic)</b></li> <li><b>Kcs (KCS)</b></li> <li><b>Celo</b></li> <li><b>Harmony.ONE</b></li> <li><b>Binance Smart Chain</b></li> </ul> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = SwaggerClient::BlockchainMultiTokenERC1155Api.new
body = SwaggerClient::MintBatchBody1.new # MintBatchBody1 | 
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of testnet. Defaults to ropsten. Valid only for ETH invocations.
}

begin
  #Mint Multi Token Batch
  result = api_instance.mint_multi_token_batch(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainMultiTokenERC1155Api->mint_multi_token_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MintBatchBody1**](MintBatchBody1.md)|  | 
 **x_testnet_type** | **String**| Type of testnet. Defaults to ropsten. Valid only for ETH invocations. | [optional] [default to ethereum-ropsten]

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **multi_token_get_address_balance**
> Array&lt;InlineResponse20046&gt; multi_token_get_address_balance(chain, address, opts)

Get Multi Tokens by Address

<h4>1 credit per API call.</h4><br/><p>Get Multi Tokens on address. Returns all tokenIDs of all contracts this address holds.</p> 

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

api_instance = SwaggerClient::BlockchainMultiTokenERC1155Api.new
chain = 'chain_example' # String | Blockchain to work with
address = 'address_example' # String | Blockchain address
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of testnet. Defaults to ropsten. Valid only for ETH invocations.
}

begin
  #Get Multi Tokens by Address
  result = api_instance.multi_token_get_address_balance(chain, address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainMultiTokenERC1155Api->multi_token_get_address_balance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain** | **String**| Blockchain to work with | 
 **address** | **String**| Blockchain address | 
 **x_testnet_type** | **String**| Type of testnet. Defaults to ropsten. Valid only for ETH invocations. | [optional] [default to ethereum-ropsten]

### Return type

[**Array&lt;InlineResponse20046&gt;**](InlineResponse20046.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **multi_token_get_balance**
> Array&lt;String&gt; multi_token_get_balance(chain, address, contract_address, token_id, opts)

Get Multi Token Account balance

<h4>1 credit per API call.</h4><br/><p>Get Multi Tokens on Account. Returns tokenIDs of tokens Account holds.</p> 

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

api_instance = SwaggerClient::BlockchainMultiTokenERC1155Api.new
chain = 'chain_example' # String | Blockchain to work with
address = 'address_example' # String | Account address
contract_address = 'contract_address_example' # String | Multi Token contract address
token_id = 'token_id_example' # String | Multi Token tokenID
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of testnet. Defaults to ropsten. Valid only for ETH invocations.
}

begin
  #Get Multi Token Account balance
  result = api_instance.multi_token_get_balance(chain, address, contract_address, token_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainMultiTokenERC1155Api->multi_token_get_balance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain** | **String**| Blockchain to work with | 
 **address** | **String**| Account address | 
 **contract_address** | **String**| Multi Token contract address | 
 **token_id** | **String**| Multi Token tokenID | 
 **x_testnet_type** | **String**| Type of testnet. Defaults to ropsten. Valid only for ETH invocations. | [optional] [default to ethereum-ropsten]

### Return type

**Array&lt;String&gt;**

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **multi_token_get_balance_batch**
> Array&lt;String&gt; multi_token_get_balance_batch(chain, contract_address, token_id, address, opts)

Get Multi Token Account balance Batch

<h4>1 credit per API call.</h4><br/><p>Get Multi Tokens on Account. Returns tokenIDs of tokens Account holds.</p> 

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

api_instance = SwaggerClient::BlockchainMultiTokenERC1155Api.new
chain = 'chain_example' # String | Blockchain to work with
contract_address = 'contract_address_example' # String | Multi Token contract address
token_id = 'token_id_example' # String | Comma separated TokenIds to get balance for
address = 'address_example' # String | Comma separated addresses to get balance for
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of testnet. Defaults to ropsten. Valid only for ETH invocations.
}

begin
  #Get Multi Token Account balance Batch
  result = api_instance.multi_token_get_balance_batch(chain, contract_address, token_id, address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainMultiTokenERC1155Api->multi_token_get_balance_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain** | **String**| Blockchain to work with | 
 **contract_address** | **String**| Multi Token contract address | 
 **token_id** | **String**| Comma separated TokenIds to get balance for | 
 **address** | **String**| Comma separated addresses to get balance for | 
 **x_testnet_type** | **String**| Type of testnet. Defaults to ropsten. Valid only for ETH invocations. | [optional] [default to ethereum-ropsten]

### Return type

**Array&lt;String&gt;**

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **multi_token_get_contract_address**
> InlineResponse20044 multi_token_get_contract_address(chain, hash, opts)

Get Contract address

<h4>1 credit per API call.</h4><br/> <p>Get Multi Token contract address from deploy transaction. This method is deprecated, use <a href=\"#operation/SCGetContractAddress\">Get contract address</a> instead.</p> 

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

api_instance = SwaggerClient::BlockchainMultiTokenERC1155Api.new
chain = 'chain_example' # String | Blockchain to work with
hash = 'hash_example' # String | Transaction hash
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of testnet. Defaults to ropsten. Valid only for ETH invocations.
}

begin
  #Get Contract address
  result = api_instance.multi_token_get_contract_address(chain, hash, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainMultiTokenERC1155Api->multi_token_get_contract_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain** | **String**| Blockchain to work with | 
 **hash** | **String**| Transaction hash | 
 **x_testnet_type** | **String**| Type of testnet. Defaults to ropsten. Valid only for ETH invocations. | [optional] [default to ethereum-ropsten]

### Return type

[**InlineResponse20044**](InlineResponse20044.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **multi_token_get_metadata**
> InlineResponse20041 multi_token_get_metadata(chain, token, contract_address, opts)

Get Multi Token Token Metadata

<h4>1 credit per API call.</h4><br/><p>Get Multi Token metadata.</p>

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

api_instance = SwaggerClient::BlockchainMultiTokenERC1155Api.new
chain = 'chain_example' # String | Blockchain to work with
token = 'token_example' # String | Token ID
contract_address = 'contract_address_example' # String | Multi Token contract address
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of testnet. Defaults to ropsten. Valid only for ETH invocations.
}

begin
  #Get Multi Token Token Metadata
  result = api_instance.multi_token_get_metadata(chain, token, contract_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainMultiTokenERC1155Api->multi_token_get_metadata: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain** | **String**| Blockchain to work with | 
 **token** | **String**| Token ID | 
 **contract_address** | **String**| Multi Token contract address | 
 **x_testnet_type** | **String**| Type of testnet. Defaults to ropsten. Valid only for ETH invocations. | [optional] [default to ethereum-ropsten]

### Return type

[**InlineResponse20041**](InlineResponse20041.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **multi_token_get_transaction**
> InlineResponse20045 multi_token_get_transaction(chain, hash, opts)

Get Transaction

<h4>1 credit per API call.</h4><br/><p>Get Multi Token transaction by transaction hash.</p>

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

api_instance = SwaggerClient::BlockchainMultiTokenERC1155Api.new
chain = 'chain_example' # String | Blockchain to work with
hash = 'hash_example' # String | Transaction hash
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of testnet. Defaults to ropsten. Valid only for ETH invocations.
}

begin
  #Get Transaction
  result = api_instance.multi_token_get_transaction(chain, hash, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainMultiTokenERC1155Api->multi_token_get_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain** | **String**| Blockchain to work with | 
 **hash** | **String**| Transaction hash | 
 **x_testnet_type** | **String**| Type of testnet. Defaults to ropsten. Valid only for ETH invocations. | [optional] [default to ethereum-ropsten]

### Return type

[**InlineResponse20045**](InlineResponse20045.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **multi_token_get_transaction_by_address**
> Array&lt;null&gt; multi_token_get_transaction_by_address(chain, address, token_address, page_size, opts)

Get Multi Token transactions by address

<h4>1 credit per API call.</h4><br/><p>Get Multi Token (ERC-1155) transactions by address. This includes incoming and outgoing transactions for the address.</p>

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

api_instance = SwaggerClient::BlockchainMultiTokenERC1155Api.new
chain = 'chain_example' # String | Blockchain to work with
address = 'address_example' # String | Account address
token_address = 'token_address_example' # String | Token address
page_size = SwaggerClient::BigDecimal.new # BigDecimal | Max number of items per page is 50.
opts = { 
  offset: SwaggerClient::BigDecimal.new, # BigDecimal | Offset to obtain next page of the data.
  from: SwaggerClient::BigDecimal.new, # BigDecimal | Transactions from this block onwords will be included.
  to: SwaggerClient::BigDecimal.new # BigDecimal | Transactions up to this block will be included.
}

begin
  #Get Multi Token transactions by address
  result = api_instance.multi_token_get_transaction_by_address(chain, address, token_address, page_size, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainMultiTokenERC1155Api->multi_token_get_transaction_by_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain** | **String**| Blockchain to work with | 
 **address** | **String**| Account address | 
 **token_address** | **String**| Token address | 
 **page_size** | **BigDecimal**| Max number of items per page is 50. | 
 **offset** | **BigDecimal**| Offset to obtain next page of the data. | [optional] 
 **from** | **BigDecimal**| Transactions from this block onwords will be included. | [optional] 
 **to** | **BigDecimal**| Transactions up to this block will be included. | [optional] 

### Return type

**Array&lt;null&gt;**

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **transfer_multi_token**
> InlineResponse2005 transfer_multi_token(body, opts)

Transfer Multi Token Token

<h4>2 credits per API call.</h4><br/> <p>Transfer a certain amount of Multi Token from account to another account. Transfer Multi Tokens token from smart contract defined in contractAddress. Only 1 specific token with specified tokenId and value can be transfered. This method invokes ERC1155 method safeTransfer() to transfer the token in case of ETH, Celo and BSC.<br/><br/> Tatum now supports Multi Token these blockchains:<br/> <ul> <li><b>Ethereum</b></li> <li><b>Polygon (Matic)</b></li> <li><b>Kcs (KCS)</b></li> <li><b>Celo</b></li> <li><b>Harmony.ONE</b></li> <li><b>Binance Smart Chain</b></li> <li><b>Algorand</b></li> </ul> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = SwaggerClient::BlockchainMultiTokenERC1155Api.new
body = SwaggerClient::MultitokenTransactionBody.new # MultitokenTransactionBody | 
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of testnet. Defaults to ropsten. Valid only for ETH invocations.
}

begin
  #Transfer Multi Token Token
  result = api_instance.transfer_multi_token(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainMultiTokenERC1155Api->transfer_multi_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MultitokenTransactionBody**](MultitokenTransactionBody.md)|  | 
 **x_testnet_type** | **String**| Type of testnet. Defaults to ropsten. Valid only for ETH invocations. | [optional] [default to ethereum-ropsten]

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **transfer_multi_token_batch**
> InlineResponse2005 transfer_multi_token_batch(body, opts)

Transfer Multi Token Batch

<h4>2 credits per API call.</h4><br/> <p>Transfer Multi Token Batch from account to various other accounts in one transaction. Transfer multiple Multi Tokens token from smart contract defined in contractAddress. Multiple token with specified tokenIds and values can be transfered. This method invokes ERC1155 method safeTransfer() to transfer the token in case of ETH, Celo and BSC.<br/><br/> Tatum now supports Multi Tokens these blockchains:<br/> <ul> <li><b>Ethereum</b></li> <li><b>Polygon (Matic)</b></li> <li><b>Kcs (KCS)</b></li> <li><b>Celo</b></li> <li><b>Harmony.ONE</b></li> <li><b>Binance Smart Chain</b></li> </ul> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = SwaggerClient::BlockchainMultiTokenERC1155Api.new
body = SwaggerClient::TransactionBatchBody.new # TransactionBatchBody | 
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of testnet. Defaults to ropsten. Valid only for ETH invocations.
}

begin
  #Transfer Multi Token Batch
  result = api_instance.transfer_multi_token_batch(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainMultiTokenERC1155Api->transfer_multi_token_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TransactionBatchBody**](TransactionBatchBody.md)|  | 
 **x_testnet_type** | **String**| Type of testnet. Defaults to ropsten. Valid only for ETH invocations. | [optional] [default to ethereum-ropsten]

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



