# Tatum::Transaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** | Source account - source of transaction(s) | 
**counter_account_id** | **String** | Counter account - transaction(s) destination account. In case of blockchain recipient, this is addess of blockchain account. | [optional] 
**currency** | **String** | Transaction currency | 
**amount** | **String** | Amount in account&#x27;s currency | 
**anonymous** | **BOOLEAN** | Whether the transaction is anonymous. If true, counter account owner does not see source account. | 
**created** | [**BigDecimal**](BigDecimal.md) | Time in UTC of transaction. | 
**market_value** | [**MarketValue**](MarketValue.md) |  | 
**operation_type** | **String** | Type of operation. | 
**transaction_type** | **String** | Type of payment. | 
**reference** | **String** | Transaction internal reference - unique identifier within Tatum ledger. In order of failure, use this value to search for problems. | 
**transaction_code** | **String** | For bookkeeping to distinct transaction purpose. | [optional] 
**sender_note** | **String** | Note visible for sender. | [optional] 
**recipient_note** | **String** | Note visible for both sender and recipient. | [optional] 
**payment_id** | **String** | Payment ID defined in payment order by sender. | [optional] 
**attr** | **String** | Present only for operationType WITHDRAWAL and XLM / XRP based accounts it represents message or destinationTag of the recipient, if present. | [optional] 
**address** | **String** | For operationType DEPOSIT it represents address, on which was deposit credited for the account. | [optional] 
**tx_id** | **String** | For operationType DEPOSIT, BLOCKCHAIN_TRANSACTION it represents transaction id, for which deposit occured. | [optional] 

