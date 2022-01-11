# SwaggerClient::OffChainWithdrawalApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**broadcast_blockchain_transaction**](OffChainWithdrawalApi.md#broadcast_blockchain_transaction) | **POST** /v3/offchain/withdrawal/broadcast | Broadcast signed transaction and complete withdrawal
[**cancel_in_progress_withdrawal**](OffChainWithdrawalApi.md#cancel_in_progress_withdrawal) | **DELETE** /v3/offchain/withdrawal/{id} | Cancel withdrawal
[**complete_withdrawal**](OffChainWithdrawalApi.md#complete_withdrawal) | **PUT** /v3/offchain/withdrawal/{id}/{txId} | Complete withdrawal
[**get_withdrawals**](OffChainWithdrawalApi.md#get_withdrawals) | **GET** /v3/offchain/withdrawal | Get withdrawals
[**store_withdrawal**](OffChainWithdrawalApi.md#store_withdrawal) | **POST** /v3/offchain/withdrawal | Store withdrawal

# **broadcast_blockchain_transaction**
> BroadcastResponse broadcast_blockchain_transaction(body)

Broadcast signed transaction and complete withdrawal

<h4>2 credits per API call.</h4><br/> <p>Broadcast signed raw transaction end complete withdrawal associated with it. When broadcast succeeded but it is impossible to complete withdrawal, transaction id of transaction is returned and withdrawal must be completed manually. </p> 

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

api_instance = SwaggerClient::OffChainWithdrawalApi.new
body = SwaggerClient::BroadcastWithdrawal.new # BroadcastWithdrawal | 


begin
  #Broadcast signed transaction and complete withdrawal
  result = api_instance.broadcast_blockchain_transaction(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainWithdrawalApi->broadcast_blockchain_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BroadcastWithdrawal**](BroadcastWithdrawal.md)|  | 

### Return type

[**BroadcastResponse**](BroadcastResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cancel_in_progress_withdrawal**
> cancel_in_progress_withdrawal(id, opts)

Cancel withdrawal

<h4>1 credit per API call.</h4><br/> <p>This method is helpful if you need to cancel the withdrawal if the blockchain transaction fails or is not yet processed. This does not cancel already broadcast blockchain transaction, only Tatum internal withdrawal, and the ledger transaction, that was linked to this withdrawal.<br/> By default, the transaction fee is included in the reverted transaction. There are situations, like sending ERC20 on ETH, TRC token on TRON, XLM or XRP based assets, when the fee should not be reverted, because e.g. the fee is in calculated in Ethereum and transaction was in ERC20 currency. In this situation, only the transaction amount should be reverted, not the fee. </p> 

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

api_instance = SwaggerClient::OffChainWithdrawalApi.new
id = 'id_example' # String | ID of created withdrawal
opts = { 
  revert: true # BOOLEAN | Defines whether fee should be reverted to account balance as well as amount. Defaults to true. Revert true would be typically used when withdrawal was not broadcast to blockchain. False is used usually for Ethereum based currencies when gas was consumed but transaction was reverted.
}

begin
  #Cancel withdrawal
  api_instance.cancel_in_progress_withdrawal(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainWithdrawalApi->cancel_in_progress_withdrawal: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of created withdrawal | 
 **revert** | **BOOLEAN**| Defines whether fee should be reverted to account balance as well as amount. Defaults to true. Revert true would be typically used when withdrawal was not broadcast to blockchain. False is used usually for Ethereum based currencies when gas was consumed but transaction was reverted. | [optional] [default to true]

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **complete_withdrawal**
> complete_withdrawal(id, tx_id)

Complete withdrawal

<h4>2 credits per API call.</h4><br/> <p>Invoke complete withdrawal as soon as blockchain transaction ID is available. All other withdrawals for the same currency will be pending unless the last one is processed and marked as completed.</p> 

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

api_instance = SwaggerClient::OffChainWithdrawalApi.new
id = 'id_example' # String | ID of created withdrawal
tx_id = 'tx_id_example' # String | Blockchain transaction ID of created withdrawal


begin
  #Complete withdrawal
  api_instance.complete_withdrawal(id, tx_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainWithdrawalApi->complete_withdrawal: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of created withdrawal | 
 **tx_id** | **String**| Blockchain transaction ID of created withdrawal | 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_withdrawals**
> Array&lt;WithdrawalObject&gt; get_withdrawals(page_size, opts)

Get withdrawals

<h4>1 credit per API call.</h4><br/><p>Get withdrawals.</p>

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

api_instance = SwaggerClient::OffChainWithdrawalApi.new
page_size = SwaggerClient::BigDecimal.new # BigDecimal | Max number of items per page is 50.
opts = { 
  currency: 'currency_example', # String | Currency of the withdrawal
  status: 'status_example', # String | Status of the withdrawal
  offset: SwaggerClient::BigDecimal.new # BigDecimal | Offset to obtain next page of the data.
}

begin
  #Get withdrawals
  result = api_instance.get_withdrawals(page_size, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainWithdrawalApi->get_withdrawals: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_size** | **BigDecimal**| Max number of items per page is 50. | 
 **currency** | **String**| Currency of the withdrawal | [optional] 
 **status** | **String**| Status of the withdrawal | [optional] 
 **offset** | **BigDecimal**| Offset to obtain next page of the data. | [optional] 

### Return type

[**Array&lt;WithdrawalObject&gt;**](WithdrawalObject.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **store_withdrawal**
> WithdrawalResponse store_withdrawal(body)

Store withdrawal

<h4>2 credits per API call.</h4><br/><p> <p>Create a withdrawal from Tatum Ledger account to the blockchain.<br/>   <h4>BTC, LTC, DOGE, BCH</h4>   <p>     When withdrawal from Tatum is executed, all deposits, which are not processed yet are used as an input and     change is moved to pool address 0 of wallet for defined account's xpub. If there are no unspent deposits, only last pool address 0 UTXO is used.     If balance of wallet is not sufficient, it is impossible to perform withdrawal from this account -> funds were transferred to another     linked wallet within system or outside of Tatum visibility.<br/>     For the first time of withdrawal from wallet, there must be some deposit made and funds are obtained from that. Since     there is no withdrawal, there was no transfer to pool address 0 and thus it is not present in vIn. Pool transfer is identified by missing data.address property in response.     When last not cancelled withdrawal is not completed and thus there is no tx id of output transaction given,     we cannot perform next withdrawal.   </p>   <h4>ETH</h4>   <p>     Withdrawal from Tatum can be processed only from 1 account. In Ethereum Blockchain, each address is recognized as an account and only funds from that account can be sent in 1 transaction.     Example: Account A has 0.5 ETH, Account B has 0.3 ETH. Account A is linked to Tatum Account 1, Account B is linked to Tatum Account 2. Tatum Account 1 has balance 0.7 Ethereum and     Tatum Account 2 has 0.1 ETH. Withdrawal from Tatum Account 1 can be at most 0.5 ETH, even though balance in Tatum Private Ledger is 0.7 ETH.     Because of this Ethereum Blockchain limitation, withdrawal request should always contain sourceAddress, from which withdrawal will be made. To get available balances for Ethereum wallet accounts, use hint endpoint.   </p>   <h4>XRP</h4>   <p>     XRP withdrawal can contain DestinationTag except of address, which is placed in attr parameter of withdrawal request. SourceTag of the blockchain transaction should be withdrawal ID for autocomplete purposes of withdrawals.   </p>   <h4>XLM</h4>   <p>     XLM withdrawal can contain memo except of address, which is placed in attr parameter of withdrawal request. XLM blockchain does not have possibility to enter source account information.     It is possible to create memo in format 'destination|source', which is supported way of memo in Tatum and also there is information about the sender account in the blockchain.   </p> <br/> When withdrawal is created, all other withdrawals with the same currency are pending, unless the current one is marked as complete or cancelled.<br/> Tatum ledger transaction is created for every withdrawal request with operation type WITHDRAWAL. The value of the transaction is the withdrawal amount + blockchain fee, which should be paid. In the situation, when there is withdrawal for ERC20, XLM, or XRP based custom assets, the fee is not included in the transaction because it is paid in different assets than the withdrawal itself. </p> 

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

api_instance = SwaggerClient::OffChainWithdrawalApi.new
body = SwaggerClient::Withdrawal.new # Withdrawal | 


begin
  #Store withdrawal
  result = api_instance.store_withdrawal(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainWithdrawalApi->store_withdrawal: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Withdrawal**](Withdrawal.md)|  | 

### Return type

[**WithdrawalResponse**](WithdrawalResponse.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



