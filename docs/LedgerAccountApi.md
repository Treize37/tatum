# SwaggerClient::LedgerAccountApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activate_account**](LedgerAccountApi.md#activate_account) | **PUT** /v3/ledger/account/{id}/activate | Activate account
[**block_amount**](LedgerAccountApi.md#block_amount) | **POST** /v3/ledger/account/block/{id} | Block an amount in an account
[**create_account**](LedgerAccountApi.md#create_account) | **POST** /v3/ledger/account | Create new account
[**create_account_batch**](LedgerAccountApi.md#create_account_batch) | **POST** /v3/ledger/account/batch | Create multiple accounts in a batch call
[**deactivate_account**](LedgerAccountApi.md#deactivate_account) | **PUT** /v3/ledger/account/{id}/deactivate | Deactivate account
[**delete_all_block_amount**](LedgerAccountApi.md#delete_all_block_amount) | **DELETE** /v3/ledger/account/block/account/{id} | Unblock all blocked amounts in an account
[**delete_block_amount**](LedgerAccountApi.md#delete_block_amount) | **DELETE** /v3/ledger/account/block/{id} | Unblock a blocked amount in an account
[**freeze_account**](LedgerAccountApi.md#freeze_account) | **PUT** /v3/ledger/account/{id}/freeze | Freeze account
[**get_account_balance**](LedgerAccountApi.md#get_account_balance) | **GET** /v3/ledger/account/{id}/balance | Get account balance
[**get_account_by_account_id**](LedgerAccountApi.md#get_account_by_account_id) | **GET** /v3/ledger/account/{id} | Get account by ID
[**get_accounts_by_customer_id**](LedgerAccountApi.md#get_accounts_by_customer_id) | **GET** /v3/ledger/account/customer/{id} | List all customer accounts
[**get_all_accounts**](LedgerAccountApi.md#get_all_accounts) | **GET** /v3/ledger/account | List all accounts
[**get_block_amount**](LedgerAccountApi.md#get_block_amount) | **GET** /v3/ledger/account/block/{id} | Get blocked amounts in an account
[**get_block_amount_by_id**](LedgerAccountApi.md#get_block_amount_by_id) | **GET** /v3/ledger/account/block/{id}/detail | Get blocked amount by ID
[**unblock_amount_with_transaction**](LedgerAccountApi.md#unblock_amount_with_transaction) | **PUT** /v3/ledger/account/block/{id} | Unblock an amount in an account and perform a transaction
[**unfreeze_account**](LedgerAccountApi.md#unfreeze_account) | **PUT** /v3/ledger/account/{id}/unfreeze | Unfreeze account
[**update_account_by_account_id**](LedgerAccountApi.md#update_account_by_account_id) | **PUT** /v3/ledger/account/{id} | Update account

# **activate_account**
> activate_account(id)

Activate account

<h4>2 credits per API call.</h4><br/><p>Activates an account.</p>

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

api_instance = SwaggerClient::LedgerAccountApi.new
id = 'id_example' # String | Account ID


begin
  #Activate account
  api_instance.activate_account(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LedgerAccountApi->activate_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Account ID | 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **block_amount**
> Id block_amount(bodyid)

Block an amount in an account

<h4>2 credits per API call.</h4><br/> <p>Blocks an amount in an account. Any number of distinct amounts can be blocked in one account. Every new blockage has its own distinct ID, which is used as a reference. When the amount is blocked, it is debited from the available balance of the account. The account balance remains the same. The account balance represents the total amount of funds in the account. The available balance represents the total amount of funds that can be used to perform transactions. When an account is frozen, the available balance is set to 0 minus all blockages for the account.</p> 

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

api_instance = SwaggerClient::LedgerAccountApi.new
body = SwaggerClient::BlockAmount.new # BlockAmount | 
id = 'id_example' # String | Account ID


begin
  #Block an amount in an account
  result = api_instance.block_amount(bodyid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LedgerAccountApi->block_amount: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BlockAmount**](BlockAmount.md)|  | 
 **id** | **String**| Account ID | 

### Return type

[**Id**](Id.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_account**
> Account create_account(body)

Create new account

<h4>2 credits per API call.</h4><br/> <p>Creates a new account for the customer. This will create an account on Tatum Private Ledger. It is possible to create an account for every supported cryptocurrency, FIAT, any ERC20 token created within a Tatum instance, and Tatum virtual currencies. When the customer field is already present, the account is added to the customer's list of accounts. If the customer field is not present, a new customer is created along with the account.<br/> Every account has its own balance. Tatum supports 2 types of balances - accountBalance and availableBalance. The account balance represents all assets in the account, both available and blocked. The available balance in the account represents account balance minus the blocked amount in the account. The available balance should be used to determine how much a customer can send or withdraw from the account.<br/> An account is always created with a specific currency. Once the currency is set, it cannot be changed.<br/> When an account's currency is blockchain-based, like BTC or ETH, the account is usually created with xpub. Xpub represents an extended public key of the blockchain wallet, which will be connected to this account. Adding xpub to the account does not connect any specific blockchain address to this account. Xpub is just a generator of addresses, not an address itself. Every blockchain has different types of xpubs: <ul> <li><b>BTC</b> - xpub can be obtained from <a href=\"#operation/BtcGenerateWallet\">generate wallet</a></li> <li><b>LTC</b> - xpub can be obtained from <a href=\"#operation/LtcGenerateWallet\">generate wallet</a></li> <li><b>DOGE</b> - xpub can be obtained from <a href=\"#operation/DogeGenerateWallet\">generate wallet</a></li> <li><b>BCH</b> - xpub can be obtained from <a href=\"#operation/BchGenerateWallet\">generate wallet</a></li> <li><b>ADA</b> - xpub can be obtained from <a href=\"#operation/AdaGenerateWallet\">generate wallet</a></li> <li><b>ETH and ERC20</b> - xpub can be obtained from <a href=\"#operation/EthGenerateWallet\">generate wallet</a></li> <li><b>XRP</b> - xpub is the address field from <a href=\"#operation/XrpWallet\">generate account</a></li> <li><b>XLM</b> - xpub is the address field from <a href=\"#operation/XlmWallet\">generate account</a></li> <li><b>BNB</b> - xpub is the address field from <a href=\"#operation/BnbGenerateWallet\">generate account</a></li> <li><b>BSC</b> - xpub is the address field from <a href=\"#operation/BscGenerateWallet\">generate wallet</a></li> <li><b>EGLD</b> - no xpub, use mnemonic for the address field from <a href=\"#operation/EgldGenerateWallet\">generate wallet</a></li> <li><b>ALGO</b> - no xpub, use mnemonic for the address field from <a href=\"#operation/AlgoGenerateWallet\">generate wallet</a></li> <li><b>MATIC</b> - xpub is the address field from <a href=\"#operation/PolygonGenerateWallet\">generate wallet</a></li> <li><b>KCS</b> - xpub is the address field from <a href=\"#operation/KcsGenerateWallet\">generate wallet</a></li> <li><b>CELO, cEUR, cUSD and ERC20</b> - xpub is the address field from <a href=\"#operation/CeloGenerateWallet\">generate wallet</a></li> <li><b>TRON and TRC tokens</b> - xpub can be obtained from <a href=\"#operation/GenerateTronwallet\">generate wallet</a></li> <li><b>FLOW and FUSD</b> - xpub can be obtained from <a href=\"#operation/GenerateFlowwallet\">generate wallet</a></li> </ul> There are 2 options for connecting an account to a blockchain: <ul> <li>If xpub is present in the account, addresses are generated for the account via <a href=\"#operation/generateDepositAddress\">Create new deposit address</a>. This is the preferred mechanism.</li> <li>If xpub is not present in the account, addresses for this account are assigned manually via <a href=\"#operation/assignAddress\">Assign address</a>. This feature is used when there are already existing addresses to be used in Tatum.</li> </ul></p> 

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

api_instance = SwaggerClient::LedgerAccountApi.new
body = SwaggerClient::CreateAccount.new # CreateAccount | 


begin
  #Create new account
  result = api_instance.create_account(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LedgerAccountApi->create_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateAccount**](CreateAccount.md)|  | 

### Return type

[**Account**](Account.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_account_batch**
> Array&lt;Account&gt; create_account_batch(body)

Create multiple accounts in a batch call

<h4>2 credits per API call + 1 credit for every account created.</h4><br/> <p>Creates new accounts for the customer in a batch call.</p> 

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

api_instance = SwaggerClient::LedgerAccountApi.new
body = SwaggerClient::CreateAccountBatch.new # CreateAccountBatch | 


begin
  #Create multiple accounts in a batch call
  result = api_instance.create_account_batch(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LedgerAccountApi->create_account_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateAccountBatch**](CreateAccountBatch.md)|  | 

### Return type

[**Array&lt;Account&gt;**](Account.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **deactivate_account**
> deactivate_account(id)

Deactivate account

<h4>2 credits per API call.</h4><br/><p>Deactivates an account. Only accounts with account and available balances of zero can be deactivated. Deactivated accounts are not visible in the list of accounts, it is not possible to send funds to these accounts or perform transactions. However, they are still present in the ledger and all transaction histories.</p>

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

api_instance = SwaggerClient::LedgerAccountApi.new
id = 'id_example' # String | Account ID


begin
  #Deactivate account
  api_instance.deactivate_account(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LedgerAccountApi->deactivate_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Account ID | 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_all_block_amount**
> delete_all_block_amount(id)

Unblock all blocked amounts in an account

<h4>1 credit per API call, 1 credit for each deleted blockage. 1 API call + 2 blockages  = 3 credits.</h4><br/><p>Unblocks previously blocked amounts in an account. Increases the available balance in the account where the amount was blocked.</p>

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

api_instance = SwaggerClient::LedgerAccountApi.new
id = 'id_example' # String | Account ID


begin
  #Unblock all blocked amounts in an account
  api_instance.delete_all_block_amount(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LedgerAccountApi->delete_all_block_amount: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Account ID | 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_block_amount**
> delete_block_amount(id)

Unblock a blocked amount in an account

<h4>1 credit per API call.</h4><br/><p>Unblocks a previously blocked amount in an account. Increases the available balance in the account where the amount was blocked.</p>

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

api_instance = SwaggerClient::LedgerAccountApi.new
id = 'id_example' # String | Blockage ID


begin
  #Unblock a blocked amount in an account
  api_instance.delete_block_amount(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LedgerAccountApi->delete_block_amount: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Blockage ID | 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **freeze_account**
> freeze_account(id)

Freeze account

<h4>2 credits per API call.</h4><br/><p>Disables all outgoing transactions. Incoming transactions to the account are available. When an account is frozen, its available balance is set to 0. This operation will create a new blockage of type ACCOUNT_FROZEN, which is automatically deleted when the account is unfrozen.</p>

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

api_instance = SwaggerClient::LedgerAccountApi.new
id = 'id_example' # String | Account ID


begin
  #Freeze account
  api_instance.freeze_account(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LedgerAccountApi->freeze_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Account ID | 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_account_balance**
> AccountBalance get_account_balance(id)

Get account balance

<h4>1 credit per API call.</h4><br/><p>Get balance for the account.</p>

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

api_instance = SwaggerClient::LedgerAccountApi.new
id = 'id_example' # String | Account ID


begin
  #Get account balance
  result = api_instance.get_account_balance(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LedgerAccountApi->get_account_balance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Account ID | 

### Return type

[**AccountBalance**](AccountBalance.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_account_by_account_id**
> Account get_account_by_account_id(id)

Get account by ID

<h4>1 credit per API call.</h4><br/><p>Gets active account by ID. Displays all information regarding the given account.</p>

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

api_instance = SwaggerClient::LedgerAccountApi.new
id = 'id_example' # String | Account ID


begin
  #Get account by ID
  result = api_instance.get_account_by_account_id(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LedgerAccountApi->get_account_by_account_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Account ID | 

### Return type

[**Account**](Account.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_accounts_by_customer_id**
> Array&lt;Account&gt; get_accounts_by_customer_id(page_size, id, opts)

List all customer accounts

<h4>1 credit per API call.</h4><br/><p>Lists all accounts associated with a customer. Only active accounts are visible.</p>

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

api_instance = SwaggerClient::LedgerAccountApi.new
page_size = SwaggerClient::BigDecimal.new # BigDecimal | Max number of items per page is 50.
id = 'id_example' # String | Internal customer ID
opts = { 
  offset: SwaggerClient::BigDecimal.new, # BigDecimal | Offset to obtain the next page of data.
  account_code: 'account_code_example' # String | For bookkeeping to distinct account purpose.
}

begin
  #List all customer accounts
  result = api_instance.get_accounts_by_customer_id(page_size, id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LedgerAccountApi->get_accounts_by_customer_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_size** | **BigDecimal**| Max number of items per page is 50. | 
 **id** | **String**| Internal customer ID | 
 **offset** | **BigDecimal**| Offset to obtain the next page of data. | [optional] 
 **account_code** | **String**| For bookkeeping to distinct account purpose. | [optional] 

### Return type

[**Array&lt;Account&gt;**](Account.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_all_accounts**
> Array&lt;Account&gt; get_all_accounts(page_size, opts)

List all accounts

<h4>1 credit per API call.</h4><br/><p>Lists all accounts. Inactive accounts are also visible.</p>

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

api_instance = SwaggerClient::LedgerAccountApi.new
page_size = SwaggerClient::BigDecimal.new # BigDecimal | Max number of items per page is 50.
opts = { 
  offset: SwaggerClient::BigDecimal.new, # BigDecimal | Offset to obtain the next page of data.
  account_code: 'account_code_example' # String | For bookkeeping to distinct account purpose.
}

begin
  #List all accounts
  result = api_instance.get_all_accounts(page_size, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LedgerAccountApi->get_all_accounts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_size** | **BigDecimal**| Max number of items per page is 50. | 
 **offset** | **BigDecimal**| Offset to obtain the next page of data. | [optional] 
 **account_code** | **String**| For bookkeeping to distinct account purpose. | [optional] 

### Return type

[**Array&lt;Account&gt;**](Account.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_block_amount**
> Array&lt;Blockage&gt; get_block_amount(id, page_size, opts)

Get blocked amounts in an account

<h4>1 credit per API call.</h4><br/><p>Gets blocked amounts for an account.</p>

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

api_instance = SwaggerClient::LedgerAccountApi.new
id = 'id_example' # String | Account ID
page_size = SwaggerClient::BigDecimal.new # BigDecimal | Max number of items per page is 50.
opts = { 
  offset: SwaggerClient::BigDecimal.new # BigDecimal | Offset to obtain the next page of data.
}

begin
  #Get blocked amounts in an account
  result = api_instance.get_block_amount(id, page_size, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LedgerAccountApi->get_block_amount: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Account ID | 
 **page_size** | **BigDecimal**| Max number of items per page is 50. | 
 **offset** | **BigDecimal**| Offset to obtain the next page of data. | [optional] 

### Return type

[**Array&lt;Blockage&gt;**](Blockage.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_block_amount_by_id**
> Blockage get_block_amount_by_id(id)

Get blocked amount by ID

<h4>1 credit per API call.</h4><br/><p>Gets blocked amount by id.</p>

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

api_instance = SwaggerClient::LedgerAccountApi.new
id = 'id_example' # String | Blocked amount ID


begin
  #Get blocked amount by ID
  result = api_instance.get_block_amount_by_id(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LedgerAccountApi->get_block_amount_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Blocked amount ID | 

### Return type

[**Blockage**](Blockage.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **unblock_amount_with_transaction**
> TransactionResult unblock_amount_with_transaction(bodyid)

Unblock an amount in an account and perform a transaction

<h4>2 credits per API call.</h4><br/> <p>Unblocks a previously blocked amount in an account and invokes a ledger transaction from that account to a different recipient. If the request fails, the amount is not unblocked.</p> 

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

api_instance = SwaggerClient::LedgerAccountApi.new
body = SwaggerClient::UnblockAmount.new # UnblockAmount | 
id = 'id_example' # String | Blockage ID


begin
  #Unblock an amount in an account and perform a transaction
  result = api_instance.unblock_amount_with_transaction(bodyid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LedgerAccountApi->unblock_amount_with_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UnblockAmount**](UnblockAmount.md)|  | 
 **id** | **String**| Blockage ID | 

### Return type

[**TransactionResult**](TransactionResult.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **unfreeze_account**
> unfreeze_account(id)

Unfreeze account

<h4>2 credits per API call.</h4><br/><p>Unfreezes a previously frozen account. Unfreezing a non-frozen account not affect the account.</p>

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

api_instance = SwaggerClient::LedgerAccountApi.new
id = 'id_example' # String | Account ID


begin
  #Unfreeze account
  api_instance.unfreeze_account(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LedgerAccountApi->unfreeze_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Account ID | 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_account_by_account_id**
> update_account_by_account_id(bodyid)

Update account

<h4>2 credits per API call.</h4><br/><p>Update account by ID. Only a small number of fields can be updated.</p>

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

api_instance = SwaggerClient::LedgerAccountApi.new
body = SwaggerClient::UpdateAccount.new # UpdateAccount | 
id = 'id_example' # String | Account ID


begin
  #Update account
  api_instance.update_account_by_account_id(bodyid)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LedgerAccountApi->update_account_by_account_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateAccount**](UpdateAccount.md)|  | 
 **id** | **String**| Account ID | 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



