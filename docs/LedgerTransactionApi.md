# Tatum::LedgerTransactionApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_transactions**](LedgerTransactionApi.md#get_transactions) | **POST** /v3/ledger/transaction/ledger | Find transactions within the ledger.
[**get_transactions_by_account_id**](LedgerTransactionApi.md#get_transactions_by_account_id) | **POST** /v3/ledger/transaction/account | Find transactions for account.
[**get_transactions_by_customer_id**](LedgerTransactionApi.md#get_transactions_by_customer_id) | **POST** /v3/ledger/transaction/customer | Find transactions for a customer across all of the customer&#x27;s accounts.
[**get_transactions_by_reference**](LedgerTransactionApi.md#get_transactions_by_reference) | **GET** /v3/ledger/transaction/reference/{reference} | Find transactions with a given reference across all accounts.
[**send_transaction**](LedgerTransactionApi.md#send_transaction) | **POST** /v3/ledger/transaction | Send payment
[**send_transaction_batch**](LedgerTransactionApi.md#send_transaction_batch) | **POST** /v3/ledger/transaction/batch | Send payment in batch

# **get_transactions**
> InlineResponse200 get_transactions(body, opts)

Find transactions within the ledger.

<h4>1 credit per API call.</h4><br/><p>Find transactions across whole ledger.</p>

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

api_instance = Tatum::LedgerTransactionApi.new
body = Tatum::TransactionFilterLedger.new # TransactionFilterLedger | 
opts = { 
  page_size: Tatum::BigDecimal.new # BigDecimal | Max number of items per page is 50. Either count or pageSize is accepted.
  offset: Tatum::BigDecimal.new # BigDecimal | Offset to obtain the next page of data.
  count: true # BOOLEAN | Get the total transaction count based on the filter. Either count or pageSize is accepted.
}

begin
  #Find transactions within the ledger.
  result = api_instance.get_transactions(body, opts)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling LedgerTransactionApi->get_transactions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TransactionFilterLedger**](TransactionFilterLedger.md)|  | 
 **page_size** | **BigDecimal**| Max number of items per page is 50. Either count or pageSize is accepted. | [optional] 
 **offset** | **BigDecimal**| Offset to obtain the next page of data. | [optional] 
 **count** | **BOOLEAN**| Get the total transaction count based on the filter. Either count or pageSize is accepted. | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_transactions_by_account_id**
> InlineResponse200 get_transactions_by_account_id(body, opts)

Find transactions for account.

<h4>1 credit per API call.</h4><br/><p>Finds transactions for the account identified by the given account ID.</p>

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

api_instance = Tatum::LedgerTransactionApi.new
body = Tatum::TransactionFilter.new # TransactionFilter | 
opts = { 
  page_size: Tatum::BigDecimal.new # BigDecimal | Max number of items per page is 50. Either count or pageSize is accepted.
  offset: Tatum::BigDecimal.new # BigDecimal | Offset to obtain the next page of data.
  count: true # BOOLEAN | Get the total transaction count based on the filter. Either count or pageSize is accepted.
}

begin
  #Find transactions for account.
  result = api_instance.get_transactions_by_account_id(body, opts)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling LedgerTransactionApi->get_transactions_by_account_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TransactionFilter**](TransactionFilter.md)|  | 
 **page_size** | **BigDecimal**| Max number of items per page is 50. Either count or pageSize is accepted. | [optional] 
 **offset** | **BigDecimal**| Offset to obtain the next page of data. | [optional] 
 **count** | **BOOLEAN**| Get the total transaction count based on the filter. Either count or pageSize is accepted. | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_transactions_by_customer_id**
> InlineResponse200 get_transactions_by_customer_id(body, opts)

Find transactions for a customer across all of the customer's accounts.

<h4>1 credit per API call.</h4><br/><p>Finds transactions for all accounts of the customer identified by the given internal customer ID.</p>

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

api_instance = Tatum::LedgerTransactionApi.new
body = Tatum::TransactionFilterCustomer.new # TransactionFilterCustomer | 
opts = { 
  page_size: Tatum::BigDecimal.new # BigDecimal | Max number of items per page is 50. Either count or pageSize is accepted.
  offset: Tatum::BigDecimal.new # BigDecimal | Offset to obtain the next page of data.
  count: true # BOOLEAN | Get total transaction count based on the filter. Either count or pageSize is accepted.
}

begin
  #Find transactions for a customer across all of the customer's accounts.
  result = api_instance.get_transactions_by_customer_id(body, opts)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling LedgerTransactionApi->get_transactions_by_customer_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TransactionFilterCustomer**](TransactionFilterCustomer.md)|  | 
 **page_size** | **BigDecimal**| Max number of items per page is 50. Either count or pageSize is accepted. | [optional] 
 **offset** | **BigDecimal**| Offset to obtain the next page of data. | [optional] 
 **count** | **BOOLEAN**| Get total transaction count based on the filter. Either count or pageSize is accepted. | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_transactions_by_reference**
> Array&lt;Transaction&gt; get_transactions_by_reference(reference)

Find transactions with a given reference across all accounts.

<h4>1 credit per API call.</h4><br/><p>Finds transactions for all accounts with the given reference.</p>

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

api_instance = Tatum::LedgerTransactionApi.new
reference = 'reference_example' # String | 


begin
  #Find transactions with a given reference across all accounts.
  result = api_instance.get_transactions_by_reference(reference)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling LedgerTransactionApi->get_transactions_by_reference: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reference** | **String**|  | 

### Return type

[**Array&lt;Transaction&gt;**](Transaction.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **send_transaction**
> TransactionResult send_transaction(body)

Send payment

<h4>4 credits per API call.</h4><br/> <p>Sends a payment within Tatum Private Ledger. All assets are settled instantly.<br/> When a transaction is settled, 2 transaction records are created, 1 for each of the participants. These 2 records are connected via a transaction reference, which is the same for both of them.<br/> This method is only used for transferring assets between accounts within Tatum and will not send any funds to blockchain addresses.<br/> If there is an insufficient balance in the sender account, no transaction is recorded.<br/> It is possible to perform an anonymous transaction where the sender account is not visible for the recipient.<br/> The FIAT currency value of every transaction is calculated automatically. The FIAT value is based on the accountingCurrency of the account connected to the transaction and is available in the marketValue parameter of the transaction.</p> 

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

api_instance = Tatum::LedgerTransactionApi.new
body = Tatum::CreateTransaction.new # CreateTransaction | 


begin
  #Send payment
  result = api_instance.send_transaction(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling LedgerTransactionApi->send_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateTransaction**](CreateTransaction.md)|  | 

### Return type

[**TransactionResult**](TransactionResult.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_transaction_batch**
> BatchTransactionResult send_transaction_batch(body)

Send payment in batch

<h4>2 + 2 * N per API call. (N - count of transactions)</h4><br/> <p>Sends the N payments within Tatum Private Ledger. All assets are settled instantly.<br/> When a transaction is settled, 2 transaction records are created, 1 for each of the participants. These 2 records are connected via a transaction reference, which is the same for both of them.<br/> This method is only used for transferring assets between accounts within Tatum and will not send any funds to blockchain addresses.<br/> If there is an insufficient balance in the sender account, no transaction is recorded.<br/> It is possible to perform an anonymous transaction where the sender account is not visible for the recipient.<br/> The FIAT currency value of every transaction is calculated automatically. The FIAT value is based on the accountingCurrency of the account connected to the transaction and is available in the marketValue parameter of the transaction.</p> 

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

api_instance = Tatum::LedgerTransactionApi.new
body = Tatum::BatchCreateTransaction.new # BatchCreateTransaction | 


begin
  #Send payment in batch
  result = api_instance.send_transaction_batch(body)
  p result
rescue Tatum::ApiError => e
  puts "Exception when calling LedgerTransactionApi->send_transaction_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BatchCreateTransaction**](BatchCreateTransaction.md)|  | 

### Return type

[**BatchTransactionResult**](BatchTransactionResult.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



