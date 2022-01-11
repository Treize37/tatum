# SwaggerClient::CreateTransaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender_account_id** | **String** | Internal sender account ID within Tatum platform | 
**recipient_account_id** | **String** | Internal recipient account ID within Tatum platform | 
**amount** | **String** | Amount to be sent. | 
**anonymous** | **BOOLEAN** | Anonymous transaction does not show sender account to recipient, default is false | [optional] [default to false]
**compliant** | **BOOLEAN** | Enable compliant checks. Transaction will not be processed, if compliant check fails. | [optional] 
**transaction_code** | **String** | For bookkeeping to distinct transaction purpose. | [optional] 
**payment_id** | **String** | Payment ID, External identifier of the payment, which can be used to pair transactions within Tatum accounts. | [optional] 
**recipient_note** | **String** | Note visible to both, sender and recipient | [optional] 
**base_rate** | [**BigDecimal**](BigDecimal.md) | Exchange rate of the base pair. Only applicable for Tatum&#x27;s Virtual currencies Ledger transactions. Override default exchange rate for the Virtual Currency. | [optional] [default to 1]
**sender_note** | **String** | Note visible to sender | [optional] 

