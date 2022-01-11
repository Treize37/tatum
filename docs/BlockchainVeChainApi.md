# Tatum::BlockchainVeChainApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**vet_blockchain_transfer**](BlockchainVeChainApi.md#vet_blockchain_transfer) | **POST** /v3/vet/transaction | Send VeChain from account to account
[**vet_broadcast**](BlockchainVeChainApi.md#vet_broadcast) | **POST** /v3/vet/broadcast | Broadcast signed VeChain transaction
[**vet_estimate_gas**](BlockchainVeChainApi.md#vet_estimate_gas) | **POST** /v3/vet/transaction/gas | Estimate VeChain Gas for transaction
[**vet_generate_address**](BlockchainVeChainApi.md#vet_generate_address) | **GET** /v3/vet/address/{xpub}/{index} | Generate VeChain account address from Extended public key
[**vet_generate_address_private_key**](BlockchainVeChainApi.md#vet_generate_address_private_key) | **POST** /v3/vet/wallet/priv | Generate VeChain private key
[**vet_generate_wallet**](BlockchainVeChainApi.md#vet_generate_wallet) | **GET** /v3/vet/wallet | Generate VeChain wallet
[**vet_get_balance**](BlockchainVeChainApi.md#vet_get_balance) | **GET** /v3/vet/account/balance/{address} | Get VeChain Account balance
[**vet_get_block**](BlockchainVeChainApi.md#vet_get_block) | **GET** /v3/vet/block/{hash} | Get VeChain Block by hash
[**vet_get_current_block**](BlockchainVeChainApi.md#vet_get_current_block) | **GET** /v3/vet/block/current | Get VeChain current block
[**vet_get_energy**](BlockchainVeChainApi.md#vet_get_energy) | **GET** /v3/vet/account/energy/{address} | Get VeChain Account energy (VTHO)
[**vet_get_transaction**](BlockchainVeChainApi.md#vet_get_transaction) | **GET** /v3/vet/transaction/{hash} | Get VeChain Transaction
[**vet_get_transaction_receipt**](BlockchainVeChainApi.md#vet_get_transaction_receipt) | **GET** /v3/vet/transaction/{hash}/receipt | Get VeChain Transaction Receipt

# **vet_blockchain_transfer**
> TransactionHashKMS vet_blockchain_transfer(body)

Send VeChain from account to account

<h4>10 credits per API call.</h4><br/> <p>Send VET from account to account. Fee for the transaction is paid in VTHO.<br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = Tatum::BlockchainVeChainApi.new
body = Tatum::TransferVetBlockchain.new # TransferVetBlockchain | 


begin
  #Send VeChain from account to account
  result = api_instance.vet_blockchain_transfer(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainVeChainApi->vet_blockchain_transfer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TransferVetBlockchain**](TransferVetBlockchain.md)|  | 

### Return type

[**TransactionHashKMS**](TransactionHashKMS.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **vet_broadcast**
> TransactionHashKMS vet_broadcast(body)

Broadcast signed VeChain transaction

<h4>5 credits per API call.</h4><br/> <p>Broadcast signed transaction to VeChain blockchain. This method is used internally from Tatum KMS, Tatum Middleware or Tatum client libraries. It is possible to create custom signing mechanism and use this method only for broadcasting data to the blockchian.</p> 

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

api_instance = Tatum::BlockchainVeChainApi.new
body = Tatum::BroadcastKMS.new # BroadcastKMS | 


begin
  #Broadcast signed VeChain transaction
  result = api_instance.vet_broadcast(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainVeChainApi->vet_broadcast: #{e}"
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



# **vet_estimate_gas**
> BigDecimal vet_estimate_gas(body)

Estimate VeChain Gas for transaction

<h4>5 credits per API call.</h4><br/><p>Estimate gas required for transaction.</p>

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

api_instance = Tatum::BlockchainVeChainApi.new
body = Tatum::VetEstimateGas.new # VetEstimateGas | 


begin
  #Estimate VeChain Gas for transaction
  result = api_instance.vet_estimate_gas(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainVeChainApi->vet_estimate_gas: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**VetEstimateGas**](VetEstimateGas.md)|  | 

### Return type

[**BigDecimal**](BigDecimal.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **vet_generate_address**
> InlineResponse20030 vet_generate_address(xpub, index)

Generate VeChain account address from Extended public key

<h4>5 credits per API call.</h4><br/> <p>Generate VeChain account deposit address from Extended public key. Deposit address is generated for the specific index - each extended public key can generate up to 2^31 addresses starting from index 0 until 2^31 - 1.</p> 

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

api_instance = Tatum::BlockchainVeChainApi.new
xpub = 'xpub_example' # String | Extended public key of wallet.
index = Tatum::BigDecimal.new # BigDecimal | Derivation index of desired address to be generated.


begin
  #Generate VeChain account address from Extended public key
  result = api_instance.vet_generate_address(xpub, index)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainVeChainApi->vet_generate_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xpub** | **String**| Extended public key of wallet. | 
 **index** | **BigDecimal**| Derivation index of desired address to be generated. | 

### Return type

[**InlineResponse20030**](InlineResponse20030.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **vet_generate_address_private_key**
> PrivKey vet_generate_address_private_key(body)

Generate VeChain private key

<h4>5 credits per API call.</h4><br/> <p>Generate private key of address from mnemonic for given derivation path index. Private key is generated for the specific index - each mnemonic can generate up to 2^32 private keys starting from index 0 until 2^31 - 1.</p> 

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

api_instance = Tatum::BlockchainVeChainApi.new
body = Tatum::PrivKeyRequest.new # PrivKeyRequest | 


begin
  #Generate VeChain private key
  result = api_instance.vet_generate_address_private_key(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainVeChainApi->vet_generate_address_private_key: #{e}"
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



# **vet_generate_wallet**
> Wallet vet_generate_wallet(opts)

Generate VeChain wallet

<h4>5 credits per API call.</h4><br/><p>Tatum supports BIP44 HD wallets. It is very convenient and secure, since it can generate 2^31 addresses from 1 mnemonic phrase. Mnemonic phrase consists of 24 special words in defined order and can restore access to all generated addresses and private keys.<br/>Each address is identified by 3 main values:<ul><li>Private Key - your secret value, which should never be revealed</li><li>Public Key - public address to be published</li><li>Derivation index - index of generated address</li></ul></p><p>Tatum follows BIP44 specification and generates for VeChain wallet with derivation path m'/44'/818'/0'/0. More about BIP44 HD wallets can be found here - <a target=\"_blank\" href=\"https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki\">https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki</a>. Generate BIP44 compatible VeChain wallet.</p> 

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

api_instance = Tatum::BlockchainVeChainApi.new
opts = { 
  mnemonic: 'mnemonic_example' # String | Mnemonic to use for generation of extended public and private keys.
}

begin
  #Generate VeChain wallet
  result = api_instance.vet_generate_wallet(opts)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainVeChainApi->vet_generate_wallet: #{e}"
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



# **vet_get_balance**
> InlineResponse20031 vet_get_balance(address)

Get VeChain Account balance

<h4>5 credits per API call.</h4><br/><p>Get VeChain Account balance in VET.</p>

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

api_instance = Tatum::BlockchainVeChainApi.new
address = 'address_example' # String | Account address


begin
  #Get VeChain Account balance
  result = api_instance.vet_get_balance(address)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainVeChainApi->vet_get_balance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Account address | 

### Return type

[**InlineResponse20031**](InlineResponse20031.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **vet_get_block**
> VetBlock vet_get_block(hash)

Get VeChain Block by hash

<h4>5 credits per API call.</h4><br/><p>Get VeChain Block by block hash or block number.</p>

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

api_instance = Tatum::BlockchainVeChainApi.new
hash = 'hash_example' # String | Block hash or block number


begin
  #Get VeChain Block by hash
  result = api_instance.vet_get_block(hash)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainVeChainApi->vet_get_block: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Block hash or block number | 

### Return type

[**VetBlock**](VetBlock.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **vet_get_current_block**
> BigDecimal vet_get_current_block

Get VeChain current block

<h4>5 credits per API call.</h4><br/><p>Get VeChain current block number.</p>

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

api_instance = Tatum::BlockchainVeChainApi.new

begin
  #Get VeChain current block
  result = api_instance.vet_get_current_block
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainVeChainApi->vet_get_current_block: #{e}"
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



# **vet_get_energy**
> InlineResponse20032 vet_get_energy(address)

Get VeChain Account energy (VTHO)

<h4>5 credits per API call.</h4><br/><p>Get VeChain Account energy in VTHO. VTHO is used for paying for the transaction fee.</p>

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

api_instance = Tatum::BlockchainVeChainApi.new
address = 'address_example' # String | Account address


begin
  #Get VeChain Account energy (VTHO)
  result = api_instance.vet_get_energy(address)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainVeChainApi->vet_get_energy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Account address | 

### Return type

[**InlineResponse20032**](InlineResponse20032.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **vet_get_transaction**
> VetTx vet_get_transaction(hash)

Get VeChain Transaction

<h4>10 credits per API call.</h4><br/><p>Get VeChain Transaction by transaction hash.</p>

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

api_instance = Tatum::BlockchainVeChainApi.new
hash = 'hash_example' # String | Transaction hash


begin
  #Get VeChain Transaction
  result = api_instance.vet_get_transaction(hash)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainVeChainApi->vet_get_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Transaction hash | 

### Return type

[**VetTx**](VetTx.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **vet_get_transaction_receipt**
> VetTxReceipt vet_get_transaction_receipt(hash)

Get VeChain Transaction Receipt

<h4>5 credits per API call.</h4><br/> <p>Get VeChain Transaction Receipt by transaction hash. Transaction receipt is available only after transaction is included in the block and contains information about paid fee or created contract address and much more.</p> 

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

api_instance = Tatum::BlockchainVeChainApi.new
hash = 'hash_example' # String | Transaction hash


begin
  #Get VeChain Transaction Receipt
  result = api_instance.vet_get_transaction_receipt(hash)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainVeChainApi->vet_get_transaction_receipt: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Transaction hash | 

### Return type

[**VetTxReceipt**](VetTxReceipt.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



