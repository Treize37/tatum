# Tatum::Error403TxBalance

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error_code** | **String** | balance.insufficient | 
**message** | **String** | Insufficient balance for account ${transaction.senderAccountId} and payment amount ${transaction.amount}. Sender balance is ${senderAccount.balance.availableBalance as string}, amount is ${amount} | 
**status_code** | [**BigDecimal**](BigDecimal.md) | 403 | 

