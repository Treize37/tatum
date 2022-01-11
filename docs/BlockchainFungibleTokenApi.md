# SwaggerClient::BlockchainFungibleTokenApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**erc20_approve**](BlockchainFungibleTokenApi.md#erc20_approve) | **POST** /v3/blockchain/token/approve | Approve spending of ERC20
[**erc20_burn**](BlockchainFungibleTokenApi.md#erc20_burn) | **POST** /v3/blockchain/token/burn | Burn ERC20
[**erc20_deploy**](BlockchainFungibleTokenApi.md#erc20_deploy) | **POST** /v3/blockchain/token/deploy | Deploy ERC20 Smart Contract.
[**erc20_get_balance**](BlockchainFungibleTokenApi.md#erc20_get_balance) | **GET** /v3/blockchain/token/balance/{chain}/{contractAddress}/{address} | Get ERC20 Account balance
[**erc20_get_transaction_by_address**](BlockchainFungibleTokenApi.md#erc20_get_transaction_by_address) | **GET** /v3/blockchain/token/transaction/{chain}/{address}/{tokenAddress} | Get ERC20 transactions by address
[**erc20_mint**](BlockchainFungibleTokenApi.md#erc20_mint) | **POST** /v3/blockchain/token/mint | Mint ERC20
[**erc20_transfer**](BlockchainFungibleTokenApi.md#erc20_transfer) | **POST** /v3/blockchain/token/transaction | Transfer ERC20 Token

# **erc20_approve**
> InlineResponse2005 erc20_approve(body, opts)

Approve spending of ERC20

<h4>2 credits per API call.</h4><br/> <p>Approve ERC20 Fungible Tokens to be spendable by someone else. This method allows new address to transfer/burn ERC20 tokens on behalf of the owner. <br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = SwaggerClient::BlockchainFungibleTokenApi.new
body = SwaggerClient::TokenApproveBody.new # TokenApproveBody | 
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations.
}

begin
  #Approve spending of ERC20
  result = api_instance.erc20_approve(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainFungibleTokenApi->erc20_approve: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TokenApproveBody**](TokenApproveBody.md)|  | 
 **x_testnet_type** | **String**| Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations. | [optional] [default to ethereum-ropsten]

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **erc20_burn**
> InlineResponse2005 erc20_burn(body, opts)

Burn ERC20

<h4>2 credits per API call.</h4><br/> <p>Burn ERC20 Fungible Tokens. This method destroys ERC20 tokens from smart contract defined in contractAddress. <br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = SwaggerClient::BlockchainFungibleTokenApi.new
body = SwaggerClient::TokenBurnBody.new # TokenBurnBody | 
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations.
}

begin
  #Burn ERC20
  result = api_instance.erc20_burn(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainFungibleTokenApi->erc20_burn: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TokenBurnBody**](TokenBurnBody.md)|  | 
 **x_testnet_type** | **String**| Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations. | [optional] [default to ethereum-ropsten]

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **erc20_deploy**
> InlineResponse2005 erc20_deploy(body, opts)

Deploy ERC20 Smart Contract.

<p>Deploy ERC20 Smart Contract. This method creates new ERC20 (Fungible Tokens) Smart Contract on the blockchain. Smart contract is standardized and audited. It is possible to mint and burn tokens. It is possible to see the code of the deployed contract <a href=\"https://github.com/tatumio/tatum-middleware/blob/master/src/contracts/token.sol\" target=\"_blank\">here</a>. Whole predefined supply of the tokens will be transferred to the chosen address. <br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = SwaggerClient::BlockchainFungibleTokenApi.new
body = SwaggerClient::TokenDeployBody.new # TokenDeployBody | 
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations.
}

begin
  #Deploy ERC20 Smart Contract.
  result = api_instance.erc20_deploy(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainFungibleTokenApi->erc20_deploy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TokenDeployBody**](TokenDeployBody.md)|  | 
 **x_testnet_type** | **String**| Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations. | [optional] [default to ethereum-ropsten]

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **erc20_get_balance**
> InlineResponse20043 erc20_get_balance(chain, address, contract_address, opts)

Get ERC20 Account balance

<h4>1 credit per API call.</h4><br/><p>Get ERC20 Account balance. Returns number of tokens Account holds.</p>

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

api_instance = SwaggerClient::BlockchainFungibleTokenApi.new
chain = 'chain_example' # String | Network name
address = 'address_example' # String | Account address
contract_address = 'contract_address_example' # String | ERC20 contract address
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations.
}

begin
  #Get ERC20 Account balance
  result = api_instance.erc20_get_balance(chain, address, contract_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainFungibleTokenApi->erc20_get_balance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain** | **String**| Network name | 
 **address** | **String**| Account address | 
 **contract_address** | **String**| ERC20 contract address | 
 **x_testnet_type** | **String**| Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations. | [optional] [default to ethereum-ropsten]

### Return type

[**InlineResponse20043**](InlineResponse20043.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **erc20_get_transaction_by_address**
> Array&lt;null&gt; erc20_get_transaction_by_address(chain, address, token_address, page_size, opts)

Get ERC20 transactions by address

<h4>1 credit per API call.</h4><br/><p>Get ERC20 transactions by address. This includes incoming and outgoing transactions for the address.</p>

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

api_instance = SwaggerClient::BlockchainFungibleTokenApi.new
chain = 'chain_example' # String | Blockchain to work with
address = 'address_example' # String | Account address
token_address = 'token_address_example' # String | Token address
page_size = SwaggerClient::BigDecimal.new # BigDecimal | Max number of items per page is 50.
opts = { 
  offset: SwaggerClient::BigDecimal.new, # BigDecimal | Offset to obtain next page of the data.
  from: SwaggerClient::BigDecimal.new, # BigDecimal | Transactions from this block onwords will be included.
  to: SwaggerClient::BigDecimal.new, # BigDecimal | Transactions up to this block will be included.
  sort: 'DESC' # String | Sorting of the data. ASC - oldest first, DESC - newest first.
}

begin
  #Get ERC20 transactions by address
  result = api_instance.erc20_get_transaction_by_address(chain, address, token_address, page_size, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainFungibleTokenApi->erc20_get_transaction_by_address: #{e}"
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
 **sort** | **String**| Sorting of the data. ASC - oldest first, DESC - newest first. | [optional] [default to DESC]

### Return type

**Array&lt;null&gt;**

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **erc20_mint**
> InlineResponse2005 erc20_mint(body, opts)

Mint ERC20

<h4>2 credits per API call.</h4><br/> <p>Create new ERC20 Fungible Tokens and transfer it to destination account. Tokens can be created only if current supply is lower then total supply. Create and transfer any ERC20 tokens from smart contract defined in contractAddress. <br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = SwaggerClient::BlockchainFungibleTokenApi.new
body = SwaggerClient::TokenMintBody.new # TokenMintBody | 
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations.
}

begin
  #Mint ERC20
  result = api_instance.erc20_mint(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainFungibleTokenApi->erc20_mint: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TokenMintBody**](TokenMintBody.md)|  | 
 **x_testnet_type** | **String**| Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations. | [optional] [default to ethereum-ropsten]

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **erc20_transfer**
> InlineResponse2005 erc20_transfer(body, opts)

Transfer ERC20 Token

<h4>2 credits per API call.</h4><br/> <p>Transfer ERC20 Fungible Tokens from account to account. Transfer any ERC20 tokens from smart contract defined in contractAddress. This method invokes ERC20 method transfer() to transfer tokens. <br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. Algorand is unique a way that the receiving account should be ready before sending the FT(Erc20) asset. To perform this, the receiving account should transfer the FT(Erc20) asset with 0 amount to itself. During the process, it's using the same API as the main transaction: the only difference is that the \"fromPrivateKey\" should be the privateKey of the receiving account. </p> 

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

api_instance = SwaggerClient::BlockchainFungibleTokenApi.new
body = SwaggerClient::TokenTransactionBody.new # TokenTransactionBody | 
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations.
}

begin
  #Transfer ERC20 Token
  result = api_instance.erc20_transfer(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainFungibleTokenApi->erc20_transfer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TokenTransactionBody**](TokenTransactionBody.md)|  | 
 **x_testnet_type** | **String**| Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations. | [optional] [default to ethereum-ropsten]

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



