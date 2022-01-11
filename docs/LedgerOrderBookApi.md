# SwaggerClient::LedgerOrderBookApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chart_request**](LedgerOrderBookApi.md#chart_request) | **POST** /v3/trade/chart | Obtain chart data from historical closed trades
[**delete_account_trades**](LedgerOrderBookApi.md#delete_account_trades) | **DELETE** /v3/trade/account/{id} | Cancel all existing trades for account
[**delete_trade**](LedgerOrderBookApi.md#delete_trade) | **DELETE** /v3/trade/{id} | Cancel existing trade
[**get_buy_trades**](LedgerOrderBookApi.md#get_buy_trades) | **GET** /v3/trade/buy | List all active buy trades
[**get_buy_trades_body**](LedgerOrderBookApi.md#get_buy_trades_body) | **POST** /v3/trade/buy | List all active buy trades
[**get_historical_trades**](LedgerOrderBookApi.md#get_historical_trades) | **GET** /v3/trade/history | List all historical trades
[**get_historical_trades_body**](LedgerOrderBookApi.md#get_historical_trades_body) | **POST** /v3/trade/history | List all historical trades
[**get_sell_trades**](LedgerOrderBookApi.md#get_sell_trades) | **GET** /v3/trade/sell | List all active sell trades
[**get_sell_trades_body**](LedgerOrderBookApi.md#get_sell_trades_body) | **POST** /v3/trade/sell | List all active sell trades
[**get_trade_by_id**](LedgerOrderBookApi.md#get_trade_by_id) | **GET** /v3/trade/{id} | Get existing trade
[**store_trade**](LedgerOrderBookApi.md#store_trade) | **POST** /v3/trade | Store buy / sell trade

# **chart_request**
> Array&lt;Chart&gt; chart_request(body)

Obtain chart data from historical closed trades

<h4>2 credits for API call.</h4><br/> <p>Obtain data from the closed trades for entering in the chart. Time interval is set between <i>from</i> and <i>to</i> and there is defined time frame. There can be obtained at most 200 time points in the time interval.</p> 

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

api_instance = SwaggerClient::LedgerOrderBookApi.new
body = SwaggerClient::ChartRequest.new # ChartRequest | 


begin
  #Obtain chart data from historical closed trades
  result = api_instance.chart_request(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LedgerOrderBookApi->chart_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ChartRequest**](ChartRequest.md)|  | 

### Return type

[**Array&lt;Chart&gt;**](Chart.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_account_trades**
> delete_account_trades(id)

Cancel all existing trades for account

<h4>1 credit for API call, 1 credit for each cancelled trade. 1 API call + 2 cancellations  = 3 credits.</h4><br/><p>Cancel all trades for account.</p>

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

api_instance = SwaggerClient::LedgerOrderBookApi.new
id = 'id_example' # String | Account ID


begin
  #Cancel all existing trades for account
  api_instance.delete_account_trades(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LedgerOrderBookApi->delete_account_trades: #{e}"
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



# **delete_trade**
> delete_trade(id)

Cancel existing trade

<h4>1 credit for API call</h4><br/><p>Cancel existing trade.</p>

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

api_instance = SwaggerClient::LedgerOrderBookApi.new
id = 'id_example' # String | Trade ID


begin
  #Cancel existing trade
  api_instance.delete_trade(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LedgerOrderBookApi->delete_trade: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Trade ID | 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_buy_trades**
> Array&lt;Trade&gt; get_buy_trades(page_size, opts)

List all active buy trades

<h4>1 credit per API call.</h4><br/><p>List all active buy trades.</p>

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

api_instance = SwaggerClient::LedgerOrderBookApi.new
page_size = SwaggerClient::BigDecimal.new # BigDecimal | Max number of items per page is 50.
opts = { 
  id: 'id_example', # String | Account ID. If present, list current active buy trades for that account.
  customer_id: 'customer_id_example', # String | Customer ID. If present, list current active buy trades for that customer.
  offset: SwaggerClient::BigDecimal.new, # BigDecimal | Offset to obtain next page of the data.
  pair: 'pair_example', # String | Trade pair. If present, list current active buy trades for that pair.
  count: true, # BOOLEAN | Get the total trade pair count based on the filter. Either count or pageSize is accepted.
  trade_type: 'trade_type_example' # String | Trade type.
}

begin
  #List all active buy trades
  result = api_instance.get_buy_trades(page_size, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LedgerOrderBookApi->get_buy_trades: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_size** | **BigDecimal**| Max number of items per page is 50. | 
 **id** | **String**| Account ID. If present, list current active buy trades for that account. | [optional] 
 **customer_id** | **String**| Customer ID. If present, list current active buy trades for that customer. | [optional] 
 **offset** | **BigDecimal**| Offset to obtain next page of the data. | [optional] 
 **pair** | **String**| Trade pair. If present, list current active buy trades for that pair. | [optional] 
 **count** | **BOOLEAN**| Get the total trade pair count based on the filter. Either count or pageSize is accepted. | [optional] 
 **trade_type** | **String**| Trade type. | [optional] 

### Return type

[**Array&lt;Trade&gt;**](Trade.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_buy_trades_body**
> Array&lt;Trade&gt; get_buy_trades_body(body)

List all active buy trades

<h4>1 credit per API call.</h4><br/><p>List all active buy trades.</p>

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

api_instance = SwaggerClient::LedgerOrderBookApi.new
body = SwaggerClient::ListOderBookActiveBuyBody.new # ListOderBookActiveBuyBody | 


begin
  #List all active buy trades
  result = api_instance.get_buy_trades_body(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LedgerOrderBookApi->get_buy_trades_body: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ListOderBookActiveBuyBody**](ListOderBookActiveBuyBody.md)|  | 

### Return type

[**Array&lt;Trade&gt;**](Trade.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_historical_trades**
> Array&lt;Trade&gt; get_historical_trades(page_size, opts)

List all historical trades

<h4>1 credit per API call.</h4><br/><p>List all historical trades. It is possible to list all trades, trades for specific trading pair and/or account.</p>

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

api_instance = SwaggerClient::LedgerOrderBookApi.new
page_size = SwaggerClient::BigDecimal.new # BigDecimal | Max number of items per page is 50.
opts = { 
  id: 'id_example', # String | Account ID. If present, only closed trades for given account will be present.
  pair: 'pair_example', # String | Trade pair. If present, only closed trades on given trade pair will be present.
  offset: SwaggerClient::BigDecimal.new, # BigDecimal | Offset to obtain next page of the data.
  count: true, # BOOLEAN | Get the total trade pair count based on the filter. Either count or pageSize is accepted.
  types: ['types_example'] # Array<String> | Trade types.
}

begin
  #List all historical trades
  result = api_instance.get_historical_trades(page_size, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LedgerOrderBookApi->get_historical_trades: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_size** | **BigDecimal**| Max number of items per page is 50. | 
 **id** | **String**| Account ID. If present, only closed trades for given account will be present. | [optional] 
 **pair** | **String**| Trade pair. If present, only closed trades on given trade pair will be present. | [optional] 
 **offset** | **BigDecimal**| Offset to obtain next page of the data. | [optional] 
 **count** | **BOOLEAN**| Get the total trade pair count based on the filter. Either count or pageSize is accepted. | [optional] 
 **types** | [**Array&lt;String&gt;**](String.md)| Trade types. | [optional] 

### Return type

[**Array&lt;Trade&gt;**](Trade.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_historical_trades_body**
> Array&lt;Trade&gt; get_historical_trades_body(opts)

List all historical trades

<h4>1 credit per API call.</h4><br/><p>List all historical trades. It is possible to list all trades, trades for specific trading pair and/or account.</p>

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

api_instance = SwaggerClient::LedgerOrderBookApi.new
opts = { 
  body: SwaggerClient::ListOderBookHistoryBody.new # ListOderBookHistoryBody | 
}

begin
  #List all historical trades
  result = api_instance.get_historical_trades_body(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LedgerOrderBookApi->get_historical_trades_body: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ListOderBookHistoryBody**](ListOderBookHistoryBody.md)|  | [optional] 

### Return type

[**Array&lt;Trade&gt;**](Trade.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_sell_trades**
> Array&lt;Trade&gt; get_sell_trades(page_size, opts)

List all active sell trades

<h4>1 credit per API call.</h4><br/><p>List all active sell trades.</p>

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

api_instance = SwaggerClient::LedgerOrderBookApi.new
page_size = SwaggerClient::BigDecimal.new # BigDecimal | Max number of items per page is 50.
opts = { 
  id: 'id_example', # String | Account ID. If present, list current active sell trades for that account.
  customer_id: 'customer_id_example', # String | Customer ID. If present, list current active buy trades for that customer.
  offset: SwaggerClient::BigDecimal.new, # BigDecimal | Offset to obtain next page of the data.
  pair: 'pair_example', # String | Trade pair. If present, list current active sell trades for that pair.
  count: true, # BOOLEAN | Get the total trade pair count based on the filter. Either count or pageSize is accepted.
  trade_type: 'trade_type_example' # String | Trade type.
}

begin
  #List all active sell trades
  result = api_instance.get_sell_trades(page_size, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LedgerOrderBookApi->get_sell_trades: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_size** | **BigDecimal**| Max number of items per page is 50. | 
 **id** | **String**| Account ID. If present, list current active sell trades for that account. | [optional] 
 **customer_id** | **String**| Customer ID. If present, list current active buy trades for that customer. | [optional] 
 **offset** | **BigDecimal**| Offset to obtain next page of the data. | [optional] 
 **pair** | **String**| Trade pair. If present, list current active sell trades for that pair. | [optional] 
 **count** | **BOOLEAN**| Get the total trade pair count based on the filter. Either count or pageSize is accepted. | [optional] 
 **trade_type** | **String**| Trade type. | [optional] 

### Return type

[**Array&lt;Trade&gt;**](Trade.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_sell_trades_body**
> Array&lt;Trade&gt; get_sell_trades_body(body)

List all active sell trades

<h4>1 credit per API call.</h4><br/><p>List all active sell trades.</p>

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

api_instance = SwaggerClient::LedgerOrderBookApi.new
body = SwaggerClient::ListOderBookActiveSellBody.new # ListOderBookActiveSellBody | 


begin
  #List all active sell trades
  result = api_instance.get_sell_trades_body(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LedgerOrderBookApi->get_sell_trades_body: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ListOderBookActiveSellBody**](ListOderBookActiveSellBody.md)|  | 

### Return type

[**Array&lt;Trade&gt;**](Trade.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_trade_by_id**
> Trade get_trade_by_id(id)

Get existing trade

<h4>1 credit for API call</h4><br/><p>Get existing opened trade.</p>

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

api_instance = SwaggerClient::LedgerOrderBookApi.new
id = 'id_example' # String | Trade ID


begin
  #Get existing trade
  result = api_instance.get_trade_by_id(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LedgerOrderBookApi->get_trade_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Trade ID | 

### Return type

[**Trade**](Trade.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **store_trade**
> Id store_trade(body)

Store buy / sell trade

<h4>2 credits for API call, 2 credits for each fill of the counter trade. 1 API call + 2 fills  = 6 credits.</h4><br/> <p>Store new buy / sell trade. If there is trade already available to fill, fill as much trades as possible.<br/> It is possible to charge fees for the trades. Fees are an extra amount on top of the trade amount and are paid in the currency of the 1st pair to the separate fee account, e.g. for BTC/ETH pair fees will be paid in BTC.</p>  <p> If you fill type of the trade with FUTURE_BUY or FUTURE_SELL the trade will behave as a trade future. The trade is concluded now but will be fulfilled in future. The date of fulfillment is by the “Seal Date” field. You can also block a percentage of the amount until the future trade has expired. </p> <p>Futures can also penalize contracting parties if they don’t have the agreed balance available in their accounts. The penalty is calculated in the following way: Penalty amount = (Percentage of incomplete deal amount because of shortage from user) × (Maximum Penalty percentage of futures deal based on blocked amount and time interval) × (total blocked value). </p> <p>Example of the BTC/USDT trade future:</p> <p>The maker creates a sell with the following properties: 1 BTC at a price of 60000 USDT, with a blocking percentage of 22%, a penalty percentage of 45%, a system commision of 1% and with an expiration time of within 12 hours.</p> <pre> {   \"type\": \"FUTURE_SELL\",   \"price\": \"60000\",   \"amount\": \"1\",   \"pair\": \"BTC/USDT\",   \"currency1AccountId\": \"60a236db1b57f60d62612bf3\",   \"currency2AccountId\": \"609d0696bf835c241ac2920f\",   \"fee\": 1,   \"feeAccountId\": \"609d0696bf835c251ac2920a\",   \"attr\": {     \"sealDate\": 1621990960631,     \"percentBlock\": 22,     \"percentPenalty\": 45   } } </pre>  The taker accepts the offer with a buy and blocks 13200 USDT (60000 USDT × 0.22) in their account. <pre> {   \"type\": \"FUTURE_BUY\",   \"price\": \"60000\",   \"amount\": \"1\",   \"pair\": \"BTC/USDT\",   \"currency1AccountId\": \"60a236db1b57f60d62612bf2\",   \"currency2AccountId\": \"609d0696bf835c241ac2920a\",   \"attr\": {     \"sealDate\": 1621990960631,     \"percentBlock\": 22,     \"percentPenalty\": 45   } } </pre> <p>At the time of the trade, the maker and taker have the following conditions. The maker has 0.65 BTC (35% deficit) in their account and the taker has 49200 USDT (18% deficit) in their account. </p>  <p> The maker penalty is equal to 0.35 × 0.22 × (0.45 × 1 BTC) = 0.03465 BTC. The taker penalty is equal to 0.18 × 0.22 × (0.45 × 60000 USDT) = 1069.2 USDT. </p> <p> The system commission for the maker is 1 BTC × 1% = 0.01 BTC. The system commission for the taker is 60000 USDT × 1% = 600 USDT. </p> <p> The maker’s assets after deducting penalties and commissions equals 0.65 - 0.03465 - 0.01 = 0.60535 BTC. The taker’s assets after deducting penalties and commissions equals 49200 - 1069.2 - 600 = 47530.8 USDT. </p> <p> The amount received by the maker after the trade is (0.60535 × 60000) + 1069.2 = 37390.2 USDT and the taker receives 0.60535 + 0.03465 = 0.64 BTC. </p> 

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

api_instance = SwaggerClient::LedgerOrderBookApi.new
body = SwaggerClient::CreateTrade.new # CreateTrade | 


begin
  #Store buy / sell trade
  result = api_instance.store_trade(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LedgerOrderBookApi->store_trade: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateTrade**](CreateTrade.md)|  | 

### Return type

[**Id**](Id.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



