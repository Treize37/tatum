# Tatum::Trade

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID of the trade | [optional] 
**type** | **String** | Type of the trade, BUY or SELL | [optional] 
**price** | **String** | Price to buy / sell | [optional] 
**amount** | **String** | Amount of the trade to be bought / sold | [optional] 
**pair** | **String** | Trading pair | [optional] 
**is_maker** | **BOOLEAN** | If closed trade was Maker or Taker trade | [optional] 
**fill** | **String** | How much of the trade was already filled. | [optional] 
**fee_account_id** | **String** | ID of the account where fee will be paid, if any. If trade is a BUY or FUTURE_BUY type, feeAccountId must have same currency as a currency of currency2AccountId, and vice versa if trade is a SELL or FUTURE_SELL type, feeAccountId must have same currency as a currency of currency1AccountId. | [optional] 
**fee** | [**BigDecimal**](BigDecimal.md) | Percentage of the trade amount to be paid as a fee. | [optional] 
**currency1_account_id** | **String** | ID of the account of the currenc 1 trade currency | [optional] 
**currency2_account_id** | **String** | ID of the account of the currenc 2 trade currency | [optional] 
**created** | [**BigDecimal**](BigDecimal.md) | Creation date, UTC millis | [optional] 
**attr** | [**TradeAttr**](TradeAttr.md) |  | [optional] 

