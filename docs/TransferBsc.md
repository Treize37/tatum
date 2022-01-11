# Tatum::TransferBsc

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to Binance Smart Chain transaction. If not present, last known nonce will be used. | [optional] 
**address** | **String** | Blockchain address to send assets | 
**amount** | **String** | Amount to be sent. | 
**compliant** | **BOOLEAN** | Compliance check, if withdrawal is not compliant, it will not be processed. | [optional] 
**from_private_key** | **String** | Private key of sender address. Either mnemonic and index, privateKey or signature Id must be present - depends on the type of account and xpub. | 
**payment_id** | **String** | Identifier of the payment, shown for created Transaction within Tatum sender account. | [optional] 
**sender_account_id** | **String** | Sender account ID | 
**sender_note** | **String** | Note visible to owner of withdrawing account | [optional] 
**gas_limit** | **String** | Gas limit for transaction in gas price. If not set, automatic calculation will be used. | [optional] 
**gas_price** | **String** | Gas price in Gwei. If not set, automatic calculation will be used. | [optional] 

