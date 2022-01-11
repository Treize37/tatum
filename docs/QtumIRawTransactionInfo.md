# SwaggerClient::QtumIRawTransactionInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**txid** | **String** | transaction hash | [optional] 
**version** | [**BigDecimal**](BigDecimal.md) | version number | [optional] 
**locktime** | [**BigDecimal**](BigDecimal.md) | locktime | [optional] 
**receipt** | [**Array&lt;QtumIRawTransactionInfoReceipt&gt;**](QtumIRawTransactionInfoReceipt.md) | transaction receipts | [optional] 
**vin** | [**Array&lt;QtumIRawTransactionInfoVin&gt;**](QtumIRawTransactionInfoVin.md) |  | [optional] 
**vout** | [**Array&lt;QtumIRawTransactionInfoVout&gt;**](QtumIRawTransactionInfoVout.md) |  | [optional] 
**confirmations** | [**BigDecimal**](BigDecimal.md) | number of confirmations | [optional] 
**time** | [**BigDecimal**](BigDecimal.md) | time of txn | [optional] 
**value_out** | [**BigDecimal**](BigDecimal.md) | out value | [optional] 
**value_in** | [**BigDecimal**](BigDecimal.md) | in value | [optional] 
**fees** | [**BigDecimal**](BigDecimal.md) | txn fees | [optional] 
**blockhash** | **String** | block hash | [optional] 
**blockheight** | [**BigDecimal**](BigDecimal.md) | block height | [optional] 
**isqrc20_transfer** | **BOOLEAN** | is qrc20 transfer? | [optional] 

