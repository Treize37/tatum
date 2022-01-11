# SwaggerClient::VirtualCurrencyUpdate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Virtual currency name, which will be updated. It is not possible to update the name of the virtual currency. | 
**base_rate** | [**BigDecimal**](BigDecimal.md) | Exchange rate of the base pair. Each unit of the created curency will represent value of baseRate*1 basePair. | [optional] [default to 1]
**base_pair** | **String** | Base pair for virtual currency. Transaction value will be calculated according to this base pair. e.g. 1 VC_VIRTUAL is equal to 1 BTC, if basePair is set to BTC. | [optional] 

