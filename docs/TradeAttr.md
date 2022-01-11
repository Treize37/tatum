# Tatum::TradeAttr

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**seal_date** | [**BigDecimal**](BigDecimal.md) | Time in UTC when the future will be filled. | 
**percent_block** | [**BigDecimal**](BigDecimal.md) | Percentage of the future amount which the selling or buying account must have available for the future’s creation. This amount will be blocked until the future is filled or expires. | [optional] 
**percent_penalty** | [**BigDecimal**](BigDecimal.md) | If one of the parties doesn’t have the full amount of the future at the time of expiration filled, the party will be penalized. | [optional] 

