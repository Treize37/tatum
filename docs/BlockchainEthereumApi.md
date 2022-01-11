# SwaggerClient::BlockchainEthereumApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**eth_blockchain_smart_contract_invocation**](BlockchainEthereumApi.md#eth_blockchain_smart_contract_invocation) | **POST** /v3/ethereum/smartcontract | Invoke Smart Contract method
[**eth_blockchain_transfer**](BlockchainEthereumApi.md#eth_blockchain_transfer) | **POST** /v3/ethereum/transaction | Send Ethereum / ERC20 from account to account
[**eth_broadcast**](BlockchainEthereumApi.md#eth_broadcast) | **POST** /v3/ethereum/broadcast | Broadcast signed Ethereum transaction
[**eth_estimate_gas**](BlockchainEthereumApi.md#eth_estimate_gas) | **POST** /v3/ethereum/gas | Estimate ethereum transaction fees
[**eth_estimate_gas_batch**](BlockchainEthereumApi.md#eth_estimate_gas_batch) | **POST** /v3/ethereum/gas/batch | Estimate multiple transaction fees
[**eth_generate_address**](BlockchainEthereumApi.md#eth_generate_address) | **GET** /v3/ethereum/address/{xpub}/{index} | Generate Ethereum account address from Extended public key
[**eth_generate_address_private_key**](BlockchainEthereumApi.md#eth_generate_address_private_key) | **POST** /v3/ethereum/wallet/priv | Generate Ethereum private key
[**eth_generate_wallet**](BlockchainEthereumApi.md#eth_generate_wallet) | **GET** /v3/ethereum/wallet | Generate Ethereum wallet
[**eth_get_balance**](BlockchainEthereumApi.md#eth_get_balance) | **GET** /v3/ethereum/account/balance/{address} | Get Ethereum account balance
[**eth_get_block**](BlockchainEthereumApi.md#eth_get_block) | **GET** /v3/ethereum/block/{hash} | Get Ethereum block by hash
[**eth_get_current_block**](BlockchainEthereumApi.md#eth_get_current_block) | **GET** /v3/ethereum/block/current | Get current block number
[**eth_get_internal_transaction_by_address**](BlockchainEthereumApi.md#eth_get_internal_transaction_by_address) | **GET** /v3/ethereum/account/transaction/erc20/internal/{address} | Get Ethereum internal transactions by address
[**eth_get_transaction**](BlockchainEthereumApi.md#eth_get_transaction) | **GET** /v3/ethereum/transaction/{hash} | Get Ethereum Transaction
[**eth_get_transaction_by_address**](BlockchainEthereumApi.md#eth_get_transaction_by_address) | **GET** /v3/ethereum/account/transaction/{address} | Get Ethereum transactions by address
[**eth_get_transaction_count**](BlockchainEthereumApi.md#eth_get_transaction_count) | **GET** /v3/ethereum/transaction/count/{address} | Get count of outgoing Ethereum transactions
[**eth_web3_driver**](BlockchainEthereumApi.md#eth_web3_driver) | **POST** /v3/ethereum/web3/{xApiKey} | Web3 HTTP driver

# **eth_blockchain_smart_contract_invocation**
> InlineResponse20016 eth_blockchain_smart_contract_invocation(body, opts)

Invoke Smart Contract method

<h4>2 credits per API call.</h4><br/> <p>Invoke any method on an existing Smart Contract. It is possibleto call read or write method on the Smsrt Contract defined via contractAddress. For read operations, data is returned, for write operations, transaction Id of the associated transaction is returned.<br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages.</p> 

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

api_instance = SwaggerClient::BlockchainEthereumApi.new
body = SwaggerClient::EthereumSmartcontractBody.new # EthereumSmartcontractBody | 
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of Ethereum testnet. Defaults to ropsten.
}

begin
  #Invoke Smart Contract method
  result = api_instance.eth_blockchain_smart_contract_invocation(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainEthereumApi->eth_blockchain_smart_contract_invocation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EthereumSmartcontractBody**](EthereumSmartcontractBody.md)|  | 
 **x_testnet_type** | **String**| Type of Ethereum testnet. Defaults to ropsten. | [optional] [default to ethereum-ropsten]

### Return type

[**InlineResponse20016**](InlineResponse20016.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **eth_blockchain_transfer**
> InlineResponse2005 eth_blockchain_transfer(body, opts)

Send Ethereum / ERC20 from account to account

<h4>2 credits per API call.</h4><br/> <p>Send Ethereum or Tatum supported ERC20 token from account to account.<br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = SwaggerClient::BlockchainEthereumApi.new
body = SwaggerClient::EthereumTransactionBody.new # EthereumTransactionBody | 
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of Ethereum testnet. Defaults to ropsten.
}

begin
  #Send Ethereum / ERC20 from account to account
  result = api_instance.eth_blockchain_transfer(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainEthereumApi->eth_blockchain_transfer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EthereumTransactionBody**](EthereumTransactionBody.md)|  | 
 **x_testnet_type** | **String**| Type of Ethereum testnet. Defaults to ropsten. | [optional] [default to ethereum-ropsten]

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **eth_broadcast**
> TransactionHashKMS eth_broadcast(body, opts)

Broadcast signed Ethereum transaction

<h4>2 credits per API call.</h4><br/> <p>Broadcast signed transaction to Ethereum blockchain. This method is used internally from Tatum KMS, Tatum Middleware or Tatum client libraries. It is possible to create custom signing mechanism and use this method only for broadcasting data to the blockchian.</p> 

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

api_instance = SwaggerClient::BlockchainEthereumApi.new
body = SwaggerClient::BroadcastKMS.new # BroadcastKMS | 
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of Ethereum testnet. Defaults to ropsten.
}

begin
  #Broadcast signed Ethereum transaction
  result = api_instance.eth_broadcast(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainEthereumApi->eth_broadcast: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BroadcastKMS**](BroadcastKMS.md)|  | 
 **x_testnet_type** | **String**| Type of Ethereum testnet. Defaults to ropsten. | [optional] [default to ethereum-ropsten]

### Return type

[**TransactionHashKMS**](TransactionHashKMS.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **eth_estimate_gas**
> InlineResponse20014 eth_estimate_gas(body, opts)

Estimate ethereum transaction fees

<h4>2 credits per API call.</h4><br/> <p>Estimate gasLimit and gasPrice of the Ethereum transaction. Gas price is obtained from multiple sources + calculated based on the latest N blocks and the current mempool state. The <b>fast</b> one is used by default. </p> 

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

api_instance = SwaggerClient::BlockchainEthereumApi.new
body = SwaggerClient::EthEstimateGas.new # EthEstimateGas | 
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of Ethereum testnet. Defaults to ropsten.
}

begin
  #Estimate ethereum transaction fees
  result = api_instance.eth_estimate_gas(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainEthereumApi->eth_estimate_gas: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EthEstimateGas**](EthEstimateGas.md)|  | 
 **x_testnet_type** | **String**| Type of Ethereum testnet. Defaults to ropsten. | [optional] [default to ethereum-ropsten]

### Return type

[**InlineResponse20014**](InlineResponse20014.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **eth_estimate_gas_batch**
> InlineResponse20015 eth_estimate_gas_batch(body, opts)

Estimate multiple transaction fees

<h4>2 credits per API call + 2 credits per each gas estimation.</h4><br/> <p>Estimate gasLimit and gasPrice of the Ethereum transaction. Gas price is obtained from multiple sources + calculated based on the latest N blocks and the current mempool state. The <b>fast</b> one is used by default.<br/> Result is calculated  in the order of the request array items. </p> 

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

api_instance = SwaggerClient::BlockchainEthereumApi.new
body = SwaggerClient::GasBatchBody.new # GasBatchBody | 
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of Ethereum testnet. Defaults to ropsten.
}

begin
  #Estimate multiple transaction fees
  result = api_instance.eth_estimate_gas_batch(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainEthereumApi->eth_estimate_gas_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GasBatchBody**](GasBatchBody.md)|  | 
 **x_testnet_type** | **String**| Type of Ethereum testnet. Defaults to ropsten. | [optional] [default to ethereum-ropsten]

### Return type

[**InlineResponse20015**](InlineResponse20015.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **eth_generate_address**
> InlineResponse20012 eth_generate_address(xpub, index, opts)

Generate Ethereum account address from Extended public key

<h4>1 credit per API call.</h4><br/> <p>Generates an Ethereum account deposit address from an Extended public key. The deposit address is generated for the specific index - each extended public key can generate up to 2^31 addresses starting from index 0 until 2^31 - 1.</p> 

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

api_instance = SwaggerClient::BlockchainEthereumApi.new
xpub = 'xpub_example' # String | Extended public key of wallet.
index = SwaggerClient::BigDecimal.new # BigDecimal | Derivation index of the address to be generated.
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of Ethereum testnet. Defaults to ropsten.
}

begin
  #Generate Ethereum account address from Extended public key
  result = api_instance.eth_generate_address(xpub, index, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainEthereumApi->eth_generate_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xpub** | **String**| Extended public key of wallet. | 
 **index** | **BigDecimal**| Derivation index of the address to be generated. | 
 **x_testnet_type** | **String**| Type of Ethereum testnet. Defaults to ropsten. | [optional] [default to ethereum-ropsten]

### Return type

[**InlineResponse20012**](InlineResponse20012.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **eth_generate_address_private_key**
> PrivKey eth_generate_address_private_key(body, opts)

Generate Ethereum private key

<h4>1 credit per API call.</h4><br/> <p>Generates the private key of an address from a mnemonic for a given derivation path index. The private key is generated for the specific index - each mnemonic can generate up to 2^32 private keys starting from index 0 until 2^31 - 1.</p> 

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

api_instance = SwaggerClient::BlockchainEthereumApi.new
body = SwaggerClient::PrivKeyRequest.new # PrivKeyRequest | 
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of Ethereum testnet. Defaults to ropsten.
}

begin
  #Generate Ethereum private key
  result = api_instance.eth_generate_address_private_key(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainEthereumApi->eth_generate_address_private_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PrivKeyRequest**](PrivKeyRequest.md)|  | 
 **x_testnet_type** | **String**| Type of Ethereum testnet. Defaults to ropsten. | [optional] [default to ethereum-ropsten]

### Return type

[**PrivKey**](PrivKey.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **eth_generate_wallet**
> Wallet eth_generate_wallet(opts)

Generate Ethereum wallet

<h4>1 credit per API call.</h4><br/><p>Tatum supports BIP44 HD wallets. Because they can generate 2^31 addresses from 1 mnemonic phrase, they are very convenient and secure. A mnemonic phrase consists of 24 special words in a defined order and can restore access to all generated addresses and private keys.<br/>Each address is identified by 3 main values:<ul><li>Private Key - your secret value which should never be revealed</li><li>Public Key - a public address to be published</li><li>Derivation index - an index of generated address</li></ul></p><p>Tatum follows the BIP44 specification and generates for Ethereum wallets with the derivation path m'/44'/60'/0'/0. More about BIP44 HD wallets can be found here - <a target=\"_blank\" href=\"https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki\">https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki</a>. Generates a BIP44 compatible Ethereum wallet.</p> 

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

api_instance = SwaggerClient::BlockchainEthereumApi.new
opts = { 
  mnemonic: 'mnemonic_example', # String | Mnemonic to use for generating extended public and private keys.
  x_testnet_type: 'ethereum-ropsten' # String | Type of Ethereum testnet. Defaults to ropsten.
}

begin
  #Generate Ethereum wallet
  result = api_instance.eth_generate_wallet(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainEthereumApi->eth_generate_wallet: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mnemonic** | **String**| Mnemonic to use for generating extended public and private keys. | [optional] 
 **x_testnet_type** | **String**| Type of Ethereum testnet. Defaults to ropsten. | [optional] [default to ethereum-ropsten]

### Return type

[**Wallet**](Wallet.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **eth_get_balance**
> InlineResponse20013 eth_get_balance(address, opts)

Get Ethereum account balance

<h4>1 credit per API call.</h4><br/><p>Gets an Ethereum account balance in ETH. This method does not display the balance of ERC20 or ERC721 tokens in the account.</p>

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

api_instance = SwaggerClient::BlockchainEthereumApi.new
address = 'address_example' # String | Account address
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of Ethereum testnet. Defaults to ropsten.
}

begin
  #Get Ethereum account balance
  result = api_instance.eth_get_balance(address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainEthereumApi->eth_get_balance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Account address | 
 **x_testnet_type** | **String**| Type of Ethereum testnet. Defaults to ropsten. | [optional] [default to ethereum-ropsten]

### Return type

[**InlineResponse20013**](InlineResponse20013.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **eth_get_block**
> EthBlock eth_get_block(hash, opts)

Get Ethereum block by hash

<h4>1 credit per API call.</h4><br/><p>Gets an Ethereum block-by-block hash or block number.</p>

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

api_instance = SwaggerClient::BlockchainEthereumApi.new
hash = 'hash_example' # String | Block hash or block number
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of Ethereum testnet. Defaults to ropsten.
}

begin
  #Get Ethereum block by hash
  result = api_instance.eth_get_block(hash, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainEthereumApi->eth_get_block: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Block hash or block number | 
 **x_testnet_type** | **String**| Type of Ethereum testnet. Defaults to ropsten. | [optional] [default to ethereum-ropsten]

### Return type

[**EthBlock**](EthBlock.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **eth_get_current_block**
> BigDecimal eth_get_current_block(opts)

Get current block number

<h4>1 credit per API call.</h4><br/><p>Gets the current Ethereum block number. This is the number of the latest block in the blockchain.</p>

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

api_instance = SwaggerClient::BlockchainEthereumApi.new
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of Ethereum testnet. Defaults to ropsten.
}

begin
  #Get current block number
  result = api_instance.eth_get_current_block(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainEthereumApi->eth_get_current_block: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_testnet_type** | **String**| Type of Ethereum testnet. Defaults to ropsten. | [optional] [default to ethereum-ropsten]

### Return type

[**BigDecimal**](BigDecimal.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **eth_get_internal_transaction_by_address**
> Array&lt;EthTxInternal&gt; eth_get_internal_transaction_by_address(address, page_size, opts)

Get Ethereum internal transactions by address

<h4>1 credit per API call.</h4><br/> <p>Get Ethereum internal transactions by address.<br/></p> 

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

api_instance = SwaggerClient::BlockchainEthereumApi.new
address = 'address_example' # String | Account address
page_size = SwaggerClient::BigDecimal.new # BigDecimal | Max number of items per page is 50.
opts = { 
  offset: SwaggerClient::BigDecimal.new, # BigDecimal | Offset to obtain next page of the data.
  x_testnet_type: 'ethereum-ropsten' # String | Type of Ethereum testnet. Defaults to ropsten.
}

begin
  #Get Ethereum internal transactions by address
  result = api_instance.eth_get_internal_transaction_by_address(address, page_size, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainEthereumApi->eth_get_internal_transaction_by_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Account address | 
 **page_size** | **BigDecimal**| Max number of items per page is 50. | 
 **offset** | **BigDecimal**| Offset to obtain next page of the data. | [optional] 
 **x_testnet_type** | **String**| Type of Ethereum testnet. Defaults to ropsten. | [optional] [default to ethereum-ropsten]

### Return type

[**Array&lt;EthTxInternal&gt;**](EthTxInternal.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **eth_get_transaction**
> EthTx eth_get_transaction(hash, opts)

Get Ethereum Transaction

<h4>1 credit per API call.</h4><br/><p>Get Ethereum transaction by transaction hash.</p>

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

api_instance = SwaggerClient::BlockchainEthereumApi.new
hash = 'hash_example' # String | Transaction hash
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of Ethereum testnet. Defaults to ropsten.
}

begin
  #Get Ethereum Transaction
  result = api_instance.eth_get_transaction(hash, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainEthereumApi->eth_get_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Transaction hash | 
 **x_testnet_type** | **String**| Type of Ethereum testnet. Defaults to ropsten. | [optional] [default to ethereum-ropsten]

### Return type

[**EthTx**](EthTx.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **eth_get_transaction_by_address**
> Array&lt;EthTx&gt; eth_get_transaction_by_address(address, page_size, opts)

Get Ethereum transactions by address

<h4>1 credit per API call.</h4><br/><p>Get Ethereum transactions by address. This includes incoming and outgoing transactions for the address.</p>

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

api_instance = SwaggerClient::BlockchainEthereumApi.new
address = 'address_example' # String | Account address
page_size = SwaggerClient::BigDecimal.new # BigDecimal | Max number of items per page is 50.
opts = { 
  offset: SwaggerClient::BigDecimal.new, # BigDecimal | Offset to obtain next page of the data.
  from: SwaggerClient::BigDecimal.new, # BigDecimal | Transactions from this block onwords will be included.
  to: SwaggerClient::BigDecimal.new, # BigDecimal | Transactions up to this block will be included.
  sort: 'DESC', # String | Sorting of the data. ASC - oldest first, DESC - newest first.
  x_testnet_type: 'ethereum-ropsten' # String | Type of Ethereum testnet. Defaults to ropsten.
}

begin
  #Get Ethereum transactions by address
  result = api_instance.eth_get_transaction_by_address(address, page_size, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainEthereumApi->eth_get_transaction_by_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Account address | 
 **page_size** | **BigDecimal**| Max number of items per page is 50. | 
 **offset** | **BigDecimal**| Offset to obtain next page of the data. | [optional] 
 **from** | **BigDecimal**| Transactions from this block onwords will be included. | [optional] 
 **to** | **BigDecimal**| Transactions up to this block will be included. | [optional] 
 **sort** | **String**| Sorting of the data. ASC - oldest first, DESC - newest first. | [optional] [default to DESC]
 **x_testnet_type** | **String**| Type of Ethereum testnet. Defaults to ropsten. | [optional] [default to ethereum-ropsten]

### Return type

[**Array&lt;EthTx&gt;**](EthTx.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **eth_get_transaction_count**
> BigDecimal eth_get_transaction_count(address, opts)

Get count of outgoing Ethereum transactions

<h4>1 credit per API call.</h4><br/> <p>Get a number of outgoing Ethereum transactions for the address. When a transaction is sent, there can be multiple outgoing transactions, which are not yet processed by the blockchain. To distinguish between them, there is a counter called a nonce, which represents the order of the transaction in the list of outgoing transactions.</p> 

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

api_instance = SwaggerClient::BlockchainEthereumApi.new
address = 'address_example' # String | address
opts = { 
  x_testnet_type: 'ethereum-ropsten' # String | Type of Ethereum testnet. Defaults to ropsten.
}

begin
  #Get count of outgoing Ethereum transactions
  result = api_instance.eth_get_transaction_count(address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainEthereumApi->eth_get_transaction_count: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| address | 
 **x_testnet_type** | **String**| Type of Ethereum testnet. Defaults to ropsten. | [optional] [default to ethereum-ropsten]

### Return type

[**BigDecimal**](BigDecimal.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **eth_web3_driver**
> Object eth_web3_driver(bodyx_api_key, opts)

Web3 HTTP driver

<h4>2 credits per API call.</h4><br/> <p>Use this endpoint URL as an http-based web3 driver to connect directly to the Ethereum node provided by Tatum. To learn more about Ethereum Web3, please visit <a href=\"https://ethereum.org/en/developers/\" target=\"_blank\">Ethereum developers' guide.</a></p> 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BlockchainEthereumApi.new
body = nil # Object | 
x_api_key = 'x_api_key_example' # String | Tatum X-API-Key used for authorization.
opts = { 
  testnet_type: 'ethereum-ropsten' # String | Type of Ethereum testnet. Defaults to ropsten.
}

begin
  #Web3 HTTP driver
  result = api_instance.eth_web3_driver(bodyx_api_key, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BlockchainEthereumApi->eth_web3_driver: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Object**](Object.md)|  | 
 **x_api_key** | **String**| Tatum X-API-Key used for authorization. | 
 **testnet_type** | **String**| Type of Ethereum testnet. Defaults to ropsten. | [optional] [default to ethereum-ropsten]

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



