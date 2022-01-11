# SwaggerClient::TransactionFilterLedger

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account** | **String** | Source account - source of transaction(s). | [optional] 
**counter_account** | **String** | Counter account - transaction(s) destination account. | [optional] 
**currency** | **String** | Currency of the transactions. | [optional] 
**from** | **Integer** | Starting date to search for transactions from in UTC millis. If not present, search all history. | [optional] 
**amount** | [**Array&lt;TransactionFilterAmount&gt;**](TransactionFilterAmount.md) | Amount of the transaction. AND is used between filter options. | [optional] 
**currencies** | **Array&lt;String&gt;** | List of currencies of the transactions. | [optional] 
**transaction_type** | **String** | Type of payment | [optional] 
**transaction_types** | **Array&lt;String&gt;** | Types of payment | [optional] 
**op_type** | **String** | Type of operation. | [optional] 
**transaction_code** | **String** | For bookkeeping to distinct transaction purpose. | [optional] 
**payment_id** | **String** | Payment ID defined in payment order by sender. | [optional] 
**recipient_note** | **String** | Recipient note defined in payment order by sender. | [optional] 
**sender_note** | **String** | Sender note defined in payment order by sender. | [optional] 
**to** | **Integer** | Date until to search for transactions in UTC millis. If not present, search up till now. | [optional] 

