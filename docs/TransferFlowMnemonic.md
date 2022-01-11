# SwaggerClient::TransferFlowMnemonic

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender_account_id** | **String** | Sender account ID | 
**account** | **String** | Blockchain account to send from | 
**address** | **String** | Blockchain address to send assets | 
**amount** | **String** | Amount to be sent, in Flow. | 
**mnemonic** | **String** | Mnemonic to generate private key. | 
**index** | [**BigDecimal**](BigDecimal.md) | Index to the specific address from mnemonic. | 
**compliant** | **BOOLEAN** | Compliance check, if withdrawal is not compliant, it will not be processed. | [optional] 
**payment_id** | **String** | Identifier of the payment, shown for created Transaction within Tatum sender account. | [optional] 
**sender_note** | **String** | Note visible to owner of withdrawing account. | [optional] 

