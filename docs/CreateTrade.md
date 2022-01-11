# SwaggerClient::CreateTrade

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | Type of the trade, BUY, SELL, FUTURE_BUY, FUTURE_SELL | 
**price** | **String** | Price to buy / sell | 
**amount** | **String** | Amount of the trade to be bought / sold | 
**pair** | **String** | Trading pair | 
**currency1_account_id** | **String** | ID of the account of the currency 1 trade currency | 
**currency2_account_id** | **String** | ID of the account of the currency 2 trade currency | 
**fee_account_id** | **String** | ID of the account where fee will be paid, if any. If trade is a BUY or FUTURE_BUY type, feeAccountId must have same currency as a currency of currency2AccountId, and vice versa if trade is a SELL or FUTURE_SELL type, feeAccountId must have same currency as a currency of currency1AccountId. | [optional] 
**fee** | [**BigDecimal**](BigDecimal.md) | Percentage of the trade amount to be paid as a fee. | [optional] 
**attr** | [**CreateTradeAttr**](CreateTradeAttr.md) |  | 

