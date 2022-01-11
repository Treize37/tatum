# Tatum::TransferBnb

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender_account_id** | **String** | Sender account ID | 
**address** | **String** | Blockchain address to send assets | 
**amount** | **String** | Amount to be sent, in BNB. | 
**compliant** | **BOOLEAN** | Compliance check, if withdrawal is not compliant, it will not be processed. | [optional] 
**attr** | **String** | Memo of the recipient account, if any. | [optional] 
**payment_id** | **String** | Identifier of the payment, shown for created Transaction within Tatum sender account. | [optional] 
**from_private_key** | **String** | Private key of sender address. | 
**sender_note** | **String** | Note visible to owner of withdrawing account. | [optional] 

