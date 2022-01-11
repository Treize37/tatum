# Tatum::TransferAlgo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender_account_id** | **String** | Sender account ID | 
**account** | **String** | Blockchain account to send from | 
**address** | **String** | Blockchain address to send assets | 
**amount** | **String** | Amount to be sent, in Algo. | 
**private_key** | **String** | Secret for account. Secret, or signature Id must be present. | 
**compliant** | **BOOLEAN** | Compliance check, if withdrawal is not compliant, it will not be processed. | [optional] 
**payment_id** | **String** | Identifier of the payment, shown for created Transaction within Tatum sender account. | [optional] 
**sender_note** | **String** | Note without any spaces. | [optional] 

