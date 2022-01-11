# SwaggerClient::TransferXrpKMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender_account_id** | **String** | Sender account ID | 
**account** | **String** | XRP account address. Must be the one used for generating deposit tags. | 
**address** | **String** | Blockchain address to send assets | 
**amount** | **String** | Amount to be sent, in XRP. | 
**compliant** | **BOOLEAN** | Compliance check, if withdrawal is not compliant, it will not be processed. | [optional] 
**attr** | **String** | Destination tag of the recipient account, if any. Must be stringified uint32. | [optional] 
**source_tag** | **Integer** | Source tag of sender account, if any. | [optional] 
**payment_id** | **String** | Identifier of the payment, shown for created Transaction within Tatum sender account. | [optional] 
**signature_id** | **String** | Identifier of the secret associated in signing application. Secret, or signature Id must be present. | 
**sender_note** | **String** | Note visible to owner of withdrawing account. | [optional] 

