# Tatum::BlockchainXLMApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**xlm_broadcast**](BlockchainXLMApi.md#xlm_broadcast) | **POST** /v3/xlm/broadcast | Broadcast signed XLM transaction
[**xlm_get_account_info**](BlockchainXLMApi.md#xlm_get_account_info) | **GET** /v3/xlm/account/{account} | Get XLM Account info
[**xlm_get_account_tx**](BlockchainXLMApi.md#xlm_get_account_tx) | **GET** /v3/xlm/account/tx/{account} | Get XLM Account transactions
[**xlm_get_fee**](BlockchainXLMApi.md#xlm_get_fee) | **GET** /v3/xlm/fee | Get actual XLM fee
[**xlm_get_last_closed_ledger**](BlockchainXLMApi.md#xlm_get_last_closed_ledger) | **GET** /v3/xlm/info | Get XLM Blockchain Information
[**xlm_get_ledger**](BlockchainXLMApi.md#xlm_get_ledger) | **GET** /v3/xlm/ledger/{sequence} | Get XLM Blockchain Ledger by sequence
[**xlm_get_ledger_tx**](BlockchainXLMApi.md#xlm_get_ledger_tx) | **GET** /v3/xlm/ledger/{sequence}/transaction | Get XLM Blockchain Transactions in Ledger
[**xlm_get_transaction**](BlockchainXLMApi.md#xlm_get_transaction) | **GET** /v3/xlm/transaction/{hash} | Get XLM Transaction by hash
[**xlm_transfer_blockchain**](BlockchainXLMApi.md#xlm_transfer_blockchain) | **POST** /v3/xlm/transaction | Send XLM from address to address
[**xlm_trust_line_blockchain**](BlockchainXLMApi.md#xlm_trust_line_blockchain) | **POST** /v3/xlm/trust | Create / Update / Delete XLM trust line
[**xlm_wallet**](BlockchainXLMApi.md#xlm_wallet) | **GET** /v3/xlm/account | Generate XLM account

# **xlm_broadcast**
> TransactionHashKMS xlm_broadcast(body)

Broadcast signed XLM transaction

<h4>5 credits per API call.</h4><br/> <p>Broadcast signed transaction to XLM blockchain. This method is used internally from Tatum KMS, Tatum Middleware or Tatum client libraries. It is possible to create custom signing mechanism and use this method only for broadcasting data to the blockchian.</p> 

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

api_instance = Tatum::BlockchainXLMApi.new
body = Tatum::BroadcastKMS.new # BroadcastKMS | 


begin
  #Broadcast signed XLM transaction
  result = api_instance.xlm_broadcast(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainXLMApi->xlm_broadcast: #{e}"
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



# **xlm_get_account_info**
> XlmAccount xlm_get_account_info(account)

Get XLM Account info

<h4>5 credits per API call.</h4><br/><p>Get XLM Account detail.</p>

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

api_instance = Tatum::BlockchainXLMApi.new
account = 'account_example' # String | Account address


begin
  #Get XLM Account info
  result = api_instance.xlm_get_account_info(account)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainXLMApi->xlm_get_account_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account** | **String**| Account address | 

### Return type

[**XlmAccount**](XlmAccount.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **xlm_get_account_tx**
> Array&lt;XlmTx&gt; xlm_get_account_tx(account, opts)

Get XLM Account transactions

<h4>5 credits per API call.</h4><br/><p>List all XLM account transactions.</p>

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

api_instance = Tatum::BlockchainXLMApi.new
account = 'account_example' # String | Address of XLM account.
opts = { 
  pagination: 'pagination_example' # String | Paging token from the last transaction gives you next page
}

begin
  #Get XLM Account transactions
  result = api_instance.xlm_get_account_tx(account, opts)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainXLMApi->xlm_get_account_tx: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account** | **String**| Address of XLM account. | 
 **pagination** | **String**| Paging token from the last transaction gives you next page | [optional] 

### Return type

[**Array&lt;XlmTx&gt;**](XlmTx.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **xlm_get_fee**
> BigDecimal xlm_get_fee

Get actual XLM fee

<h4>5 credits per API call.</h4><br/><p>Get XLM Blockchain fee in 1/10000000 of XLM (stroop)</p>

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

api_instance = Tatum::BlockchainXLMApi.new

begin
  #Get actual XLM fee
  result = api_instance.xlm_get_fee
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainXLMApi->xlm_get_fee: #{e}"
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



# **xlm_get_last_closed_ledger**
> XlmLedger xlm_get_last_closed_ledger

Get XLM Blockchain Information

<h4>5 credits per API call.</h4><br/><p>Get XLM Blockchain last closed ledger.</p>

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

api_instance = Tatum::BlockchainXLMApi.new

begin
  #Get XLM Blockchain Information
  result = api_instance.xlm_get_last_closed_ledger
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainXLMApi->xlm_get_last_closed_ledger: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**XlmLedger**](XlmLedger.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **xlm_get_ledger**
> XlmLedger xlm_get_ledger(sequence)

Get XLM Blockchain Ledger by sequence

<h4>5 credits per API call.</h4><br/><p>Get XLM Blockchain ledger for ledger sequence.</p>

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

api_instance = Tatum::BlockchainXLMApi.new
sequence = 'sequence_example' # String | Sequence of the ledger.


begin
  #Get XLM Blockchain Ledger by sequence
  result = api_instance.xlm_get_ledger(sequence)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainXLMApi->xlm_get_ledger: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sequence** | **String**| Sequence of the ledger. | 

### Return type

[**XlmLedger**](XlmLedger.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **xlm_get_ledger_tx**
> Array&lt;XlmTx&gt; xlm_get_ledger_tx(sequence)

Get XLM Blockchain Transactions in Ledger

<h4>5 credits per API call.</h4><br/><p>Get XLM Blockchain transactions in the ledger.</p>

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

api_instance = Tatum::BlockchainXLMApi.new
sequence = 'sequence_example' # String | Sequence of the ledger.


begin
  #Get XLM Blockchain Transactions in Ledger
  result = api_instance.xlm_get_ledger_tx(sequence)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainXLMApi->xlm_get_ledger_tx: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sequence** | **String**| Sequence of the ledger. | 

### Return type

[**Array&lt;XlmTx&gt;**](XlmTx.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **xlm_get_transaction**
> XlmTx xlm_get_transaction(hash)

Get XLM Transaction by hash

<h4>5 credits per API call.</h4><br/><p>Get XLM Transaction by transaction hash.</p>

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

api_instance = Tatum::BlockchainXLMApi.new
hash = 'hash_example' # String | Transaction hash


begin
  #Get XLM Transaction by hash
  result = api_instance.xlm_get_transaction(hash)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainXLMApi->xlm_get_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Transaction hash | 

### Return type

[**XlmTx**](XlmTx.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **xlm_transfer_blockchain**
> InlineResponse2005 xlm_transfer_blockchain(body)

Send XLM from address to address

<h4>10 credits per API call.</h4><br/> <p>Send XLM from account to account. It is possbile to send native XLM asset, or any other custom asset present on the network.<br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = Tatum::BlockchainXLMApi.new
body = Tatum::XlmTransactionBody.new # XlmTransactionBody | 


begin
  #Send XLM from address to address
  result = api_instance.xlm_transfer_blockchain(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainXLMApi->xlm_transfer_blockchain: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**XlmTransactionBody**](XlmTransactionBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **xlm_trust_line_blockchain**
> InlineResponse2005 xlm_trust_line_blockchain(body)

Create / Update / Delete XLM trust line

<h4>10 credits per API call.</h4><br/><p> <p>Create / Update / Delete XLM trust line between accounts to transfer private assets. By creating trustline for the first time, the asset is created automatically and can be used in the transactions.<br/><br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and loss of funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

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

api_instance = Tatum::BlockchainXLMApi.new
body = Tatum::XlmTrustBody.new # XlmTrustBody | 


begin
  #Create / Update / Delete XLM trust line
  result = api_instance.xlm_trust_line_blockchain(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainXLMApi->xlm_trust_line_blockchain: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**XlmTrustBody**](XlmTrustBody.md)|  | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **xlm_wallet**
> XlmWallet xlm_wallet

Generate XLM account

<h4>5 credits per API call.</h4><br/> <p>Generate XLM account. Tatum does not support HD wallet for XLM, only specific address and private key can be generated.</p> 

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

api_instance = Tatum::BlockchainXLMApi.new

begin
  #Generate XLM account
  result = api_instance.xlm_wallet
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling BlockchainXLMApi->xlm_wallet: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**XlmWallet**](XlmWallet.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



