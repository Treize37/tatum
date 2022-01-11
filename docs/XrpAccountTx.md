# SwaggerClient::XrpAccountTx

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account** | **String** | Unique Address identifying the related account. | [optional] 
**ledger_index_max** | [**BigDecimal**](BigDecimal.md) | The ledger index of the earliest ledger actually searched for transactions. | [optional] 
**ledger_index_min** | [**BigDecimal**](BigDecimal.md) | The ledger index of the most recent ledger actually searched for transactions. | [optional] 
**marker** | [**XrpAccountTxMarker**](XrpAccountTxMarker.md) |  | [optional] 
**transactions** | [**Array&lt;XrpAccountTxTransactions&gt;**](XrpAccountTxTransactions.md) | Array of transactions matching the request&#x27;s criteria, as explained below. | [optional] 

