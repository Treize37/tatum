# Tatum::XrpTx

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hash** | **String** | The SHA-512 hash of the transaction | [optional] 
**ledger_index** | [**BigDecimal**](BigDecimal.md) | The ledger index of the ledger that includes this transaction. | [optional] 
**account** | **String** | The unique address of the account that initiated the transaction. | [optional] 
**amount** | **String** | Amount of transaction, in drops. 1 drop &#x3D; 0.000001 XRP. | [optional] 
**destination** | **String** | Recipient account address. | [optional] 
**fee** | **String** | Integer amount of XRP, in drops, to be destroyed as a cost for distributing this transaction to the network. Some transaction types have different minimum requirements. | [optional] 
**transaction_type** | **String** | Type of the transaction. XRp supports more than 18 transaction types. For the payment, Payment type is used. | [optional] 
**flags** | [**BigDecimal**](BigDecimal.md) | Set of bit-flags for this transaction. | [optional] 
**last_ledger_sequence** | [**BigDecimal**](BigDecimal.md) | Last ledger, in which this transaction could have occured. | [optional] 
**sequence** | [**BigDecimal**](BigDecimal.md) | The sequence number of the account sending the transaction. A transaction is only valid if the Sequence number is exactly 1 greater than the previous transaction from the same account. | [optional] 
**date** | [**BigDecimal**](BigDecimal.md) | Timestamp of the transaction, in Ripple epoch (946684800 seconds after Unix Epoch) | [optional] 
**in_ledger** | [**BigDecimal**](BigDecimal.md) | Ledger, in which transaction took place. | [optional] 
**signing_pub_key** | **String** |  | [optional] 
**txn_signature** | **String** |  | [optional] 
**meta** | [**XrpTxMeta**](XrpTxMeta.md) |  | [optional] 
**validated** | **BOOLEAN** | Whether or not the transaction is included in a validated ledger. Any transaction not yet in a validated ledger is subject to change. | [optional] 

