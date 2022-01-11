# SwaggerClient::TransferQuorum

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **String** | Blockchain address to send transaction from | 
**to** | **String** | Blockchain address to send transaction to | 
**data** | **String** | Additinal data, that can be passed to blockchain transaction as data property. | [optional] 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to transaction. If not present, last known nonce will be used. | [optional] 
**amount** | **String** | Amount to be sent in native asset in HEX. | [optional] 

