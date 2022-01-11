# SwaggerClient::VirtualCurrency

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Virtual currency name. Must be prefixed with &#x27;VC_&#x27;. | 
**supply** | **String** | Supply of virtual currency. | 
**base_pair** | **String** | Base pair for virtual currency. Transaction value will be calculated according to this base pair. e.g. 1 VC_VIRTUAL is equal to 1 BTC, if basePair is set to BTC. | 
**base_rate** | [**BigDecimal**](BigDecimal.md) | Exchange rate of the base pair. Each unit of the created curency will represent value of baseRate*1 basePair. | [optional] [default to 1]
**customer** | [**CustomerRegistration**](CustomerRegistration.md) |  | [optional] 
**description** | **String** | Used as a description within Tatum system. | [optional] 
**account_code** | **String** | For bookkeeping to distinct account purpose. | [optional] 
**account_number** | **String** | Account number from external system. | [optional] 
**accounting_currency** | **String** | All transaction will be billed in this currency for created account associated with this currency. If not set, EUR is used. ISO-4217 | [optional] 

