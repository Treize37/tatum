# SwaggerClient::TransferFlowKMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender_account_id** | **String** | Sender account ID | 
**account** | **String** | Blockchain account to send from | 
**address** | **String** | Blockchain address to send assets | 
**amount** | **String** | Amount to be sent, in Flow. | 
**signature_id** | **String** | Identifier of the secret associated in signing application. Secret, or signature Id must be present. | 
**index** | [**BigDecimal**](BigDecimal.md) | If signatureId is mnemonic-based, this is the index to the specific address from that mnemonic. | [optional] 
**compliant** | **BOOLEAN** | Compliance check, if withdrawal is not compliant, it will not be processed. | [optional] 
**payment_id** | **String** | Identifier of the payment, shown for created Transaction within Tatum sender account. | [optional] 
**sender_note** | **String** | Note visible to owner of withdrawing account. | [optional] 

