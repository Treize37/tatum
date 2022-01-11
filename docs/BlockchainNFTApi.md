# SwaggerClient::BlockchainNFTApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**nft_add_minter**](BlockchainNFTApi.md#nft_add_minter) | **POST** /v3/nft/mint/add | Add NFT Minter
[**nft_burn_erc721**](BlockchainNFTApi.md#nft_burn_erc721) | **POST** /v3/nft/burn | Burn NFT
[**nft_deploy_erc721**](BlockchainNFTApi.md#nft_deploy_erc721) | **POST** /v3/nft/deploy | Deploy NFT Smart Contract.
[**nft_get_balance_erc721**](BlockchainNFTApi.md#nft_get_balance_erc721) | **GET** /v3/nft/balance/{chain}/{contractAddress}/{address} | Get NFT Account balance
[**nft_get_contract_address**](BlockchainNFTApi.md#nft_get_contract_address) | **GET** /v3/nft/address/{chain}/{hash} | Get contract address from transaction
[**nft_get_metadata_erc721**](BlockchainNFTApi.md#nft_get_metadata_erc721) | **GET** /v3/nft/metadata/{chain}/{contractAddress}/{token} | Get NFT Token Metadata
[**nft_get_provenance_data_erc721**](BlockchainNFTApi.md#nft_get_provenance_data_erc721) | **GET** /v3/nft/provenance/{chain}/{contractAddress}/{tokenId} | Get NFT Token Provenance Data
[**nft_get_royalty_erc721**](BlockchainNFTApi.md#nft_get_royalty_erc721) | **GET** /v3/nft/royalty/{chain}/{contractAddress}/{token} | Get NFT Token Royalty information
[**nft_get_tokens_by_address_erc721**](BlockchainNFTApi.md#nft_get_tokens_by_address_erc721) | **GET** /v3/nft/address/balance/{chain}/{address} | Get NFT tokens for address
[**nft_get_transact_erc721**](BlockchainNFTApi.md#nft_get_transact_erc721) | **GET** /v3/nft/transaction/{chain}/{hash} | Get Transaction
[**nft_get_transaction_by_address**](BlockchainNFTApi.md#nft_get_transaction_by_address) | **GET** /v3/nft/transaction/{chain}/{address}/{tokenAddress} | Get NFT transactions by address
[**nft_get_transaction_by_token**](BlockchainNFTApi.md#nft_get_transaction_by_token) | **GET** /v3/nft/transaction/tokenId/{chain}/{tokenAddress}/{tokenId} | Get NFT transactions by token
[**nft_mint_erc721**](BlockchainNFTApi.md#nft_mint_erc721) | **POST** /v3/nft/mint | Mint NFT
[**nft_mint_multiple_erc721**](BlockchainNFTApi.md#nft_mint_multiple_erc721) | **POST** /v3/nft/mint/batch | Mint NFT Multiple Tokens
[**nft_transfer_erc721**](BlockchainNFTApi.md#nft_transfer_erc721) | **POST** /v3/nft/transaction | Transfer NFT Token
[**nft_update_cashback_erc721**](BlockchainNFTApi.md#nft_update_cashback_erc721) | **PUT** /v3/nft/royalty | Update Royalty NFT

# **nft_add_minter**
> InlineResponse2005 nft_add_minter(body, opts)

Add NFT Minter

<h4>2 credits.</h4><br/> <p>Add new minter of NFT Tokens. This method adds minter permission to new minter address.<br/><br/> Tatum now supports NFT these blockchains:<br/> <ul> <li><b>Ethereum</b></li> <li><b>Polygon (Matic)</b></li> <li><b>Kcs (KCS)</b></li> <li><b>Celo</b></li> <li><b>Harmony.ONE</b></li> <li><b>Binance Smart Chain</b></li> </ul> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = SwaggerClient::BlockchainNFTApi.new
body = SwaggerClient::MintAddBody.new # MintAddBody | 
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations.
}

begin
  #Add NFT Minter
  result = api_instance.nft_add_minter(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainNFTApi->nft_add_minter: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MintAddBody**](MintAddBody.md)|  | 
 **x_testnet_type** | **String**| Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations. | [optional] [default to ethereum-ropsten]

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **nft_burn_erc721**
> InlineResponse2005 nft_burn_erc721(body, opts)

Burn NFT

<h4>100 credits per API call on FLOW, 2 credits on another chains. Tatum covers the fee connected to the transaction costs in subscription credits for FLOW. This operation can be done on mainnet only for paid plans.</h4><br/> <p>Burn one NFT Token. This method destroys any NFT token from smart contract defined in contractAddress.<br/><br/> Tatum now supports NFT these blockchains:<br/> <ul> <li><b>Ethereum</b></li> <li><b>Polygon (Matic)</b></li> <li><b>Kcs (KCS)</b></li> <li><b>Celo</b></li> <li><b>Harmony.ONE</b></li> <li><b>Tron</b></li> <li><b>Flow</b></li> <li><b>Binance Smart Chain</b></li> <li><b>Algorand</b></li> </ul> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = SwaggerClient::BlockchainNFTApi.new
body = SwaggerClient::NftBurnBody.new # NftBurnBody | 
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations.
}

begin
  #Burn NFT
  result = api_instance.nft_burn_erc721(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainNFTApi->nft_burn_erc721: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**NftBurnBody**](NftBurnBody.md)|  | 
 **x_testnet_type** | **String**| Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations. | [optional] [default to ethereum-ropsten]

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **nft_deploy_erc721**
> InlineResponse2005 nft_deploy_erc721(body, opts)

Deploy NFT Smart Contract.

<h4>100 credits per API call on FLOW, 2 credits on another chains. Tatum covers the fee connected to the transaction costs in subscription credits for FLOW. This operation can be done on mainnet only for paid plans.</h4><br/> <p>Deploy NFT Smart Contract. This method creates new ERC721 Smart Contract (Non-Fungible Tokens) on the blockchain. Smart contract is standardized and audited. It is possible to mint, burn and transfer tokens. It is also possible to mint multiple tokens at once.<br/> Tatum now supports NFT these blockchains:<br/> <ul> <li><b>Ethereum</b></li> <li><b>Polygon (Matic)</b></li> <li><b>Kcs (KCS)</b></li> <li><b>Celo</b></li> <li><b>Harmony.ONE</b></li> <li><b>Flow</b></li> <li><b>Tron</b></li> <li><b>Binance Smart Chain</b></li> </ul> It is possible to see the code of the deployed contract <a href=\"https://github.com/tatumio/smart-contracts/tree/master/contracts/tatum\" target=\"_blank\">for EVM chains here</a>  or here <a href=\"https://github.com/tatumio/flow-contracts\" target=\"_blank\">for Flow</a>.<br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = SwaggerClient::BlockchainNFTApi.new
body = SwaggerClient::NftDeployBody.new # NftDeployBody | 
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations.
}

begin
  #Deploy NFT Smart Contract.
  result = api_instance.nft_deploy_erc721(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainNFTApi->nft_deploy_erc721: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**NftDeployBody**](NftDeployBody.md)|  | 
 **x_testnet_type** | **String**| Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations. | [optional] [default to ethereum-ropsten]

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **nft_get_balance_erc721**
> Array&lt;String&gt; nft_get_balance_erc721(chain, address, contract_address, opts)

Get NFT Account balance

<h4>1 credit per API call.</h4><br/><p>Get NFTs on Account. Returns tokenIDs of tokens Account holds. This method is valid only for tokens deplyed using Tatum API - it reads data from the smart contract.</p> 

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

api_instance = SwaggerClient::BlockchainNFTApi.new
chain = 'chain_example' # String | Blockchain to work with
address = 'address_example' # String | Account address
contract_address = 'contract_address_example' # String | NFT contract address
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations.
}

begin
  #Get NFT Account balance
  result = api_instance.nft_get_balance_erc721(chain, address, contract_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainNFTApi->nft_get_balance_erc721: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain** | **String**| Blockchain to work with | 
 **address** | **String**| Account address | 
 **contract_address** | **String**| NFT contract address | 
 **x_testnet_type** | **String**| Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations. | [optional] [default to ethereum-ropsten]

### Return type

**Array&lt;String&gt;**

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **nft_get_contract_address**
> InlineResponse20037 nft_get_contract_address(chain, hash, opts)

Get contract address from transaction

<h4>1 credit per API call.</h4><br/> <p>Get NFT contract address from deploy transaction. This method is deprecated, use <a href=\"#operation/SCGetContractAddress\">Get contract address</a> instead.</p> 

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

api_instance = SwaggerClient::BlockchainNFTApi.new
chain = 'chain_example' # String | Blockchain to work with
hash = 'hash_example' # String | Transaction hash
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations.
}

begin
  #Get contract address from transaction
  result = api_instance.nft_get_contract_address(chain, hash, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainNFTApi->nft_get_contract_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain** | **String**| Blockchain to work with | 
 **hash** | **String**| Transaction hash | 
 **x_testnet_type** | **String**| Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations. | [optional] [default to ethereum-ropsten]

### Return type

[**InlineResponse20037**](InlineResponse20037.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **nft_get_metadata_erc721**
> InlineResponse20041 nft_get_metadata_erc721(chain, contract_address, token, opts)

Get NFT Token Metadata

<h4>1 credit per API call.</h4><br/><p>Get NFT token metadata.</p>

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

api_instance = SwaggerClient::BlockchainNFTApi.new
chain = 'chain_example' # String | Blockchain to work with
contract_address = 'contract_address_example' # String | NFT contract address
token = 'token_example' # String | Token ID, required for all except SOL
opts = { 
  account: 'account_example', # String | Account holding this token. FLOW only.
  x_testnet_type: 'ethereum-ropsten' # String | Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations.
}

begin
  #Get NFT Token Metadata
  result = api_instance.nft_get_metadata_erc721(chain, contract_address, token, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainNFTApi->nft_get_metadata_erc721: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain** | **String**| Blockchain to work with | 
 **contract_address** | **String**| NFT contract address | 
 **token** | **String**| Token ID, required for all except SOL | 
 **account** | **String**| Account holding this token. FLOW only. | [optional] 
 **x_testnet_type** | **String**| Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations. | [optional] [default to ethereum-ropsten]

### Return type

[**InlineResponse20041**](InlineResponse20041.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **nft_get_provenance_data_erc721**
> Array&lt;InlineResponse20040&gt; nft_get_provenance_data_erc721(chain, token_id, contract_address, opts)

Get NFT Token Provenance Data

<h4>1 credit per API call.</h4><br/><p>Get NFT token provenance data, valid only for provenance contract.</p>

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

api_instance = SwaggerClient::BlockchainNFTApi.new
chain = 'chain_example' # String | Blockchain to work with
token_id = 'token_id_example' # String | Token ID
contract_address = 'contract_address_example' # String | NFT contract address
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations.
}

begin
  #Get NFT Token Provenance Data
  result = api_instance.nft_get_provenance_data_erc721(chain, token_id, contract_address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainNFTApi->nft_get_provenance_data_erc721: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain** | **String**| Blockchain to work with | 
 **token_id** | **String**| Token ID | 
 **contract_address** | **String**| NFT contract address | 
 **x_testnet_type** | **String**| Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations. | [optional] [default to ethereum-ropsten]

### Return type

[**Array&lt;InlineResponse20040&gt;**](InlineResponse20040.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **nft_get_royalty_erc721**
> InlineResponse20042 nft_get_royalty_erc721(chain, contract_address, token, opts)

Get NFT Token Royalty information

<h4>1 credit per API call.</h4><br/><p>Get NFT token royalty.</p>

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

api_instance = SwaggerClient::BlockchainNFTApi.new
chain = 'chain_example' # String | Blockchain to work with
contract_address = 'contract_address_example' # String | NFT contract address
token = 'token_example' # String | Token ID, required for all except SOL
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations.
}

begin
  #Get NFT Token Royalty information
  result = api_instance.nft_get_royalty_erc721(chain, contract_address, token, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainNFTApi->nft_get_royalty_erc721: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain** | **String**| Blockchain to work with | 
 **contract_address** | **String**| NFT contract address | 
 **token** | **String**| Token ID, required for all except SOL | 
 **x_testnet_type** | **String**| Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations. | [optional] [default to ethereum-ropsten]

### Return type

[**InlineResponse20042**](InlineResponse20042.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **nft_get_tokens_by_address_erc721**
> Array&lt;InlineResponse20039&gt; nft_get_tokens_by_address_erc721(chain, address)

Get NFT tokens for address

<h4>1 credit per API call + 5 credits for each owned token.</h4><br/><p>Get NFTs on address. Returns all NFTs this address holds.</p> 

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

api_instance = SwaggerClient::BlockchainNFTApi.new
chain = 'chain_example' # String | Blockchain to work with
address = 'address_example' # String | Account address


begin
  #Get NFT tokens for address
  result = api_instance.nft_get_tokens_by_address_erc721(chain, address)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainNFTApi->nft_get_tokens_by_address_erc721: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain** | **String**| Blockchain to work with | 
 **address** | **String**| Account address | 

### Return type

[**Array&lt;InlineResponse20039&gt;**](InlineResponse20039.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **nft_get_transact_erc721**
> InlineResponse20038 nft_get_transact_erc721(chain, hash, opts)

Get Transaction

<h4>1 credit per API call.</h4><br/><p>Get NFT transaction by transaction hash.</p>

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

api_instance = SwaggerClient::BlockchainNFTApi.new
chain = 'chain_example' # String | Blockchain to work with
hash = 'hash_example' # String | Transaction hash
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations.
}

begin
  #Get Transaction
  result = api_instance.nft_get_transact_erc721(chain, hash, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainNFTApi->nft_get_transact_erc721: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain** | **String**| Blockchain to work with | 
 **hash** | **String**| Transaction hash | 
 **x_testnet_type** | **String**| Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations. | [optional] [default to ethereum-ropsten]

### Return type

[**InlineResponse20038**](InlineResponse20038.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **nft_get_transaction_by_address**
> Array&lt;null&gt; nft_get_transaction_by_address(chain, address, token_address, page_size, opts)

Get NFT transactions by address

<h4>1 credit per API call.</h4><br/><p>Get NFT transactions by address. This includes incoming and outgoing transactions for the address.</p>

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

api_instance = SwaggerClient::BlockchainNFTApi.new
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
  #Get NFT transactions by address
  result = api_instance.nft_get_transaction_by_address(chain, address, token_address, page_size, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainNFTApi->nft_get_transaction_by_address: #{e}"
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



# **nft_get_transaction_by_token**
> Array&lt;null&gt; nft_get_transaction_by_token(chain, token_id, token_address, page_size, opts)

Get NFT transactions by token

<h4>1 credit per API call.</h4><br/><p>Get NFT transactions by token. This includes incoming and outgoing transactions for the token.</p>

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

api_instance = SwaggerClient::BlockchainNFTApi.new
chain = 'chain_example' # String | Blockchain to work with
token_id = 56 # Integer | NFT Token ID
token_address = 'token_address_example' # String | Token address
page_size = SwaggerClient::BigDecimal.new # BigDecimal | Max number of items per page is 50.
opts = { 
  offset: SwaggerClient::BigDecimal.new, # BigDecimal | Offset to obtain next page of the data.
  from: SwaggerClient::BigDecimal.new, # BigDecimal | Transactions from this block onwords will be included.
  to: SwaggerClient::BigDecimal.new # BigDecimal | Transactions up to this block will be included.
}

begin
  #Get NFT transactions by token
  result = api_instance.nft_get_transaction_by_token(chain, token_id, token_address, page_size, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainNFTApi->nft_get_transaction_by_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain** | **String**| Blockchain to work with | 
 **token_id** | **Integer**| NFT Token ID | 
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



# **nft_mint_erc721**
> InlineResponse20035 nft_mint_erc721(body, opts)

Mint NFT

<h4>100 credits per API call on FLOW, 2 credits on another chains. Tatum covers the fee connected to the transaction costs in subscription credits for FLOW. This operation can be done on mainnet only for paid plans.</h4><br/> <p>Create one NFT Token and transfer it to destination account. Create and transfer any NFT token from smart contract defined in contractAddress. It is possible to add URL to the created token with a more detailed information about it.<br/><br/> Tatum now supports NFT these blockchains:<br/> <ul> <li><b>Ethereum</b></li> <li><b>Polygon (Matic)</b></li> <li><b>Kcs (KCS)</b></li> <li><b>Celo</b></li> <li><b>Solana</b></li> <li><b>Harmony.ONE</b></li> <li><b>Tron</b></li> <li><b>Flow</b></li> <li><b>Binance Smart Chain</b></li> </ul> <br/> For Solana, NFTs are not deployed, only minted right away. Newly created NFT creates new address on the blockchain and owner of the NFT owns with it's private key the account of the NFT. <br/> This operation works in two modes.  First mode works just like other NFT endpoints. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages.  Second mode works without private key or signature id. Mint NFT requests use built-in smart contract, private key and token id which are provided by Tatum. You dont need to provide fromPrivateKey (or signatureId), contractAddress and tokenId fields to perform the mint NFT request.  Performed request without fromPrivateKey or signatureId fields will be populated with following attributes:  <ul>   <li><b>fromPrivateKey</b> - a built-in private key connected to the address from which will be NFT transaction fees paid.</li>   <li><b>tokenId</b> - a counter which starts from 0 and is increased for each NFT mint request by 1. The tokenId is provided per each chain and mainnet/testnet version of network.</li>   <li><b>contractAddress</b> - represents Tatum built in smart contract address of the minted NFT.</li> </ul>  The blockchain fee of the performed transaction is paid from the address connected with built-in private key and is debitted in form of credits. The credits are debitted only if NFT mint requests are performed with paid API key plan. We transform fee to the credits in accordance to the rates provided by the Tatum.  It means if you perform mint NFT request with following body:  <pre>{   \"chain\": \"CELO\",   \"to\": \"0xBC2eBA680EE50d685cc4Fe65f102AA70AfB27D3F\",   \"url\": \"ipfs://QmXJJ6UF5WkF4WTJvsdhiA1etGwBLfpva7Vr9AudGMe3pj\" }</pre>  The fields contractAddress, fromPrivateKey and tokenId will be internally filled in following way:  <pre>{   \"chain\": \"CELO\",   \"to\": \"0xBC2eBA680EE50d685cc4Fe65f102AA70AfB27D3F\",   \"url\": \"ipfs://QmXJJ6UF5WkF4WTJvsdhiA1etGwBLfpva7Vr9AudGMe3pj\",   \"fromPrivateKey\": \"{tatumBuiltInPrivateKey}\",   \"tokenId\": \"{tatumBuiltInTokenId + 1}\",   \"contractAddress\": \"0x45871ED5F15203C0ce791eFE5f4B5044833aE10e\" }</pre>  Keep in mind that your credit amount will be debitted accordingly to the rate of the selected blockchain and cost of transaction fees.   We have prepared following smart contracts for minting without private key: <table>   <tr>     <th>Chain</th>     <th>Testnet/Mainnet</th>     <th>Address</th>     <th>Smart contract address</th>   </tr>   <tr>     <td>MATIC</td>     <td>Testnet</td>     <td>0x542b9ac4945a3836fd12ad98acbc76a0c8b743f5</td>     <td>0xCd2AdA00c48A27FAa5Cc67F9A1ed55B89dDf7F77</td>   </tr>   <tr>     <td>BSC</td>     <td>Testnet</td>     <td>0xc16ae5e8c985b906935a0cadf4e24f0400531883</td>     <td>0xF73075aa67561791352fbEe8278115487Fd90ab6</td>   </tr>   <tr>     <td>ONE</td>     <td>Testnet</td>     <td>0x8906f62d40293ddca77fdf6714c3f63265deddf0</td>     <td>0x427ddbe3ad5e1e77e010c02e61e9bdef82dcaeea</td>   </tr>   <tr>     <td>ETH</td>     <td>Testnet</td>     <td>0x51abC4c9e7BFfaA99bBE4dDC33d75067EBD0384F</td>     <td>0xAe7D8842D0295B1f24a8842cBd5eB83Ae2fd0946</td>   </tr>   <tr>     <td>CELO</td>     <td>Testnet</td>     <td>0xBC2eBA680EE50d685cc4Fe65f102AA70AfB27D3F</td>     <td>0x45871ED5F15203C0ce791eFE5f4B5044833aE10e</td>   </tr>   <tr>     <td>MATIC</td>     <td>Mainnet</td>     <td>0xcf9e127455d28e7362380aec1b92ddee8200b295</td>     <td>0x6709bdda623af7eb152cb2fe2562ab7e031e564f</td>   </tr>   <tr>     <td>KCS</td>     <td>Mainnet</td>     <td>0xcf9e127455d28e7362380aec1b92ddee8200b295</td>     <td>0x6709bdda623af7eb152cb2fe2562ab7e031e564f</td>   </tr>   <tr>     <td>BSC</td>     <td>Mainnet</td>     <td>0xcf9e127455d28e7362380aec1b92ddee8200b295</td>     <td>0x6709bdda623af7eb152cb2fe2562ab7e031e564f</td>   </tr>   <tr>     <td>ETH</td>     <td>Mainnet</td>     <td>0xcf9e127455d28e7362380aec1b92ddee8200b295</td>     <td>0x789c00ed7ddd72a806dbac40df926df32fde3c2f</td>   </tr>   <tr>     <td>ONE</td>     <td>Mainnet</td>     <td>0xcf9e127455d28e7362380aec1b92ddee8200b295</td>     <td>0x6709bdda623af7eb152cb2fe2562ab7e031e564f</td>   </tr>   <tr>     <td>CELO</td>     <td>Mainnet</td>     <td>0xcf9e127455d28e7362380aec1b92ddee8200b295</td>     <td>0x6709bdda623af7eb152cb2fe2562ab7e031e564f</td>   </tr>  </table> To add ETH mainnet smart contract contact sales@tatum.io. If there will be a low amount of coins on any testnet address you are free to send coins to the address. In future we will provide also addresses and smart contracts for the mainnet version.        </p> 

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

api_instance = SwaggerClient::BlockchainNFTApi.new
body = SwaggerClient::NftMintBody.new # NftMintBody | 
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations.
}

begin
  #Mint NFT
  result = api_instance.nft_mint_erc721(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainNFTApi->nft_mint_erc721: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**NftMintBody**](NftMintBody.md)|  | 
 **x_testnet_type** | **String**| Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations. | [optional] [default to ethereum-ropsten]

### Return type

[**InlineResponse20035**](InlineResponse20035.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **nft_mint_multiple_erc721**
> InlineResponse20036 nft_mint_multiple_erc721(body, opts)

Mint NFT Multiple Tokens

<h4>100 credits per API call on FLOW, 2 credits on another chains. Tatum covers the fee connected to the transaction costs in subscription credits for FLOW. This operation can be done on mainnet only for paid plans.</h4><br/> <p>Create multiple NFT Tokens and transfer them to destination account. Create and transfer any NFT tokens from smart contract defined in contractAddress.<br/><br/> Tatum now supports NFT these blockchains:<br/> <ul> <li><b>Ethereum</b></li> <li><b>Polygon (Matic)</b></li> <li><b>Kcs (KCS)</b></li> <li><b>Celo</b></li> <li><b>Harmony.ONE</b></li> <li><b>Tron</b></li> <li><b>Flow</b></li> <li><b>Binance Smart Chain</b></li> </ul> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = SwaggerClient::BlockchainNFTApi.new
body = SwaggerClient::MintBatchBody.new # MintBatchBody | 
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations.
}

begin
  #Mint NFT Multiple Tokens
  result = api_instance.nft_mint_multiple_erc721(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainNFTApi->nft_mint_multiple_erc721: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MintBatchBody**](MintBatchBody.md)|  | 
 **x_testnet_type** | **String**| Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations. | [optional] [default to ethereum-ropsten]

### Return type

[**InlineResponse20036**](InlineResponse20036.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **nft_transfer_erc721**
> InlineResponse2005 nft_transfer_erc721(body, opts)

Transfer NFT Token

<h4>100 credits per API call on FLOW, 2 credits on another chains. Tatum covers the fee connected to the transaction costs in subscription credits for FLOW. This operation can be done on mainnet only for paid plans.</h4><br/> <p>Transfer NFT Tokens from account to account. Transfer any NFT token from smart contract defined in contractAddress. Only 1 specific token with specified tokenId can be transfered. This method invokes ERC721 method safeTransfer() to transfer the token in case of ETH, Celo and BSC.<br/><br/> Tatum now supports NFT these blockchains:<br/> <ul> <li><b>Ethereum</b></li> <li><b>Polygon (Matic)</b></li> <li><b>Kcs (KCS)</b></li> <li><b>Flow</b></li> <li><b>Celo</b></li> <li><b>Harmony.ONE</b></li> <li><b>Tron</b></li> <li><b>Binance Smart Chain</b></li> <li><b>Algorand</b></li> <li><b>Solana</b></li> </ul> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. Algorand is unique a way that the receiving account should be ready before sending the NFT asset. To perform this, the receiving account should transfer the NFT asset with 0 amount to itself. During the process, it's using the same API as the main transaction: the only difference is that the \"fromPrivateKey\" should be the privateKey of the receiving account. </p> 

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

api_instance = SwaggerClient::BlockchainNFTApi.new
body = SwaggerClient::NftTransactionBody.new # NftTransactionBody | 
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations.
}

begin
  #Transfer NFT Token
  result = api_instance.nft_transfer_erc721(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainNFTApi->nft_transfer_erc721: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**NftTransactionBody**](NftTransactionBody.md)|  | 
 **x_testnet_type** | **String**| Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations. | [optional] [default to ethereum-ropsten]

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **nft_update_cashback_erc721**
> InlineResponse2005 nft_update_cashback_erc721(body, opts)

Update Royalty NFT

<h4>2 credits per API call.</h4><br/> <p>Update royalty cashback value for one NFT Token. This method updates the first royalty value of specific author for 1 token. If royalty value is set to 0, it will disable the royalty system for the token. Only from author's address of the royalty can change it's royalty value, not the owner of the token.<br/><br/> Tatum now supports NFT these blockchains:<br/> <ul> <li><b>Ethereum</b></li> <li><b>Polygon (Matic)</b></li> <li><b>Kcs (KCS)</b></li> <li><b>Celo</b></li> <li><b>Harmony.ONE</b></li> <li><b>Tron</b></li> <li><b>Binance Smart Chain</b></li> </ul> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = SwaggerClient::BlockchainNFTApi.new
body = SwaggerClient::NftRoyaltyBody.new # NftRoyaltyBody | 
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations.
}

begin
  #Update Royalty NFT
  result = api_instance.nft_update_cashback_erc721(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainNFTApi->nft_update_cashback_erc721: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**NftRoyaltyBody**](NftRoyaltyBody.md)|  | 
 **x_testnet_type** | **String**| Type of Ethereum testnet. Defaults to ropsten. Valid only for ETH invocations. | [optional] [default to ethereum-ropsten]

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



