# SwaggerClient::TransferXlm

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender_account_id** | **String** | Sender account ID | 
**from_account** | **String** | Blockchain account to send from | 
**address** | **String** | Blockchain address to send assets | 
**amount** | **String** | Amount to be sent, in XLM or XLM-based Asset. | 
**secret** | **String** | Secret for account. Secret, or signature Id must be present. | 
**compliant** | **BOOLEAN** | Compliance check, if withdrawal is not compliant, it will not be processed. | [optional] 
**attr** | **String** | Short message to recipient. Usually used as an account discriminator. It can be either 28 characters long ASCII text, 64 characters long HEX string or uint64 number. When using as an account disciminator in Tatum Offchain ledger, can be in format of destination_acc|source_acc. | [optional] 
**payment_id** | **String** | Identifier of the payment, shown for created Transaction within Tatum sender account. | [optional] 
**sender_note** | **String** | Note visible to owner of withdrawing account. | [optional] 

