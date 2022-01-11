# SwaggerClient::DogeTx

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hash** | **String** | Transaction hash. | [optional] 
**size** | [**BigDecimal**](BigDecimal.md) | Size of the transaction. | [optional] 
**vsize** | [**BigDecimal**](BigDecimal.md) |  | [optional] 
**version** | [**BigDecimal**](BigDecimal.md) | Index of the transaction. | [optional] 
**vin** | [**Array&lt;DogeTxVin&gt;**](DogeTxVin.md) | List of transactions, from which assets are being sent. | [optional] 
**vout** | [**Array&lt;DogeTxVout&gt;**](DogeTxVout.md) | List of recipient addresses and amounts to send to each of them. | [optional] 
**locktime** | [**BigDecimal**](BigDecimal.md) |  | [optional] 

