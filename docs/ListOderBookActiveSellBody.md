# Tatum::ListOderBookActiveSellBody

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Account ID. If present, list current active sell trades for that account. | [optional] 
**customer_id** | **String** | Customer ID. If present, list current active buy trades for that customer. | [optional] 
**page_size** | [**BigDecimal**](BigDecimal.md) | Max number of items per page is 50. | 
**offset** | [**BigDecimal**](BigDecimal.md) | Offset to obtain next page of the data. | [optional] 
**pair** | **String** | Trade pair. If present, list current active sell trades for that pair. | [optional] 
**count** | **BOOLEAN** | Get the total trade pair count based on the filter. Either count or pageSize is accepted. | [optional] 
**trade_type** | **String** | Trade type. | [optional] 
**amount** | [**Array&lt;TransactionFilterAmount&gt;**](TransactionFilterAmount.md) | Amount of the trade. AND is used between filter options. | [optional] 
**fill** | [**Array&lt;TransactionFilterAmount&gt;**](TransactionFilterAmount.md) | Fill of the trade. AND is used between filter options. | [optional] 
**price** | [**Array&lt;TransactionFilterAmount&gt;**](TransactionFilterAmount.md) | Price of the trade. AND is used between filter options. | [optional] 
**created** | [**Array&lt;TransactionFilterAmount&gt;**](TransactionFilterAmount.md) | Created date of the trade. AND is used between filter options. | [optional] 
**sort** | [**OrderBookSort**](OrderBookSort.md) |  | [optional] 

