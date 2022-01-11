# SwaggerClient::VirtualCurrencyOperation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** | Ledger account with currency of the virtual currency, on which the operation will be performed. | 
**amount** | **String** | Amount of virtual currency to operate within this operation. | 
**payment_id** | **String** | Identifier of the payment, shown for created Transaction within Tatum sender account. | [optional] 
**reference** | **String** | Reference of the payment. | [optional] 
**transaction_code** | **String** | For bookkeeping to distinct transaction purpose. | [optional] 
**recipient_note** | **String** | Note visible to both, sender and recipient. Available for both Mint and Revoke operations | [optional] 
**counter_account** | **String** | External account identifier. By default, there is no counterAccount present in the transaction. | [optional] 
**sender_note** | **String** | Note visible to sender. Available in Revoke operation. | [optional] 

