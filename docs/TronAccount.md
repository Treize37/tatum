# SwaggerClient::TronAccount

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | **String** | Account address | 
**free_net_usage** | [**BigDecimal**](BigDecimal.md) | Free usage of the network | 
**balance** | [**BigDecimal**](BigDecimal.md) | Balance of the TRX, in SUN. SUN is 1/1000000 TRX. | 
**trc10** | [**Array&lt;TronAccountTrc10&gt;**](TronAccountTrc10.md) |  | 
**trc20** | **Array&lt;Object&gt;** |  | 
**create_time** | [**BigDecimal**](BigDecimal.md) | Date of creation of the account in UTC millis. | 
**asset_issued_id** | **String** | ID of the issued TRC10 token, if any. | [optional] 
**asset_issued_name** | [**BigDecimal**](BigDecimal.md) | Balance of the issued TRC10 token, if any. | [optional] 

