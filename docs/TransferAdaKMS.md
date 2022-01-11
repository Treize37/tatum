# Tatum::TransferAdaKMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | **String** | Blockchain address to send assets to | 
**amount** | **String** | Amount to be sent in ADA. | 
**compliant** | **BOOLEAN** | Compliance check, if withdrawal is not compliant, it will not be processed. | [optional] 
**fee** | **String** | Fee to be submitted as a transaction fee to blockchain. If none is set, default value of 1 ADA is used. | [optional] 
**from** | **String** | Blockchain address to send assets from | 
**signature_id** | **String** | Identifier of the mnemonic / private key associated in signing application. When hash identifies mnemonic, index must be present to represent specific account to pay from. Private key, mnemonic or signature Id must be present.  | 
**index** | **Integer** | Derivation index of sender address. | [optional] 
**payment_id** | **String** | Identifier of the payment, shown for created Transaction within Tatum sender account. | [optional] 
**sender_account_id** | **String** | Sender account ID | 
**sender_note** | **String** | Note visible to owner of withdrawing account | [optional] 

