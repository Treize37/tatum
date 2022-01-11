# Tatum::XlmTx

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | A unique identifier for this transaction. | [optional] 
**paging_token** | **String** | A cursor value for use in pagination. | [optional] 
**successful** | **BOOLEAN** | Indicates if this transaction was successful or not. | [optional] 
**hash** | **String** | A hex-encoded SHA-256 hash of this transaction’s XDR-encoded form. | [optional] 
**ledger** | [**BigDecimal**](BigDecimal.md) | The sequence number of the ledger that this transaction was included in. | [optional] 
**created_at** | **String** | The date this transaction was created. | [optional] 
**source_account** | **String** | The account that originates the transaction. | [optional] 
**source_account_sequence** | **String** | The source account’s sequence number that this transaction consumed. | [optional] 
**fee_paid** | [**BigDecimal**](BigDecimal.md) | The fee (in stroops) paid by the source account to apply this transaction to the ledger. | [optional] 
**fee_charged** | [**BigDecimal**](BigDecimal.md) |  | [optional] 
**max_fee** | [**BigDecimal**](BigDecimal.md) | The maximum fee (in stroops) that the source account was willing to pay. | [optional] 
**operation_count** | [**BigDecimal**](BigDecimal.md) | The number of operations contained within this transaction. | [optional] 
**envelope_xdr** | **String** | A base64 encoded string of the raw TransactionEnvelope XDR struct for this transaction. | [optional] 
**result_xdr** | **String** | A base64 encoded string of the raw TransactionResult XDR struct for this transaction. | [optional] 
**result_meta_xdr** | **String** | A base64 encoded string of the raw TransactionMeta XDR struct for this transaction | [optional] 
**fee_meta_xdr** | **String** | A base64 encoded string of the raw LedgerEntryChanges XDR struct produced by taking fees for this transaction. | [optional] 
**memo** | **String** | The optional memo attached to a transaction. Usually used as an account distiguisher. | [optional] 
**memo_type** | **String** | The type of memo. | [optional] 
**signatures** | **Array&lt;String&gt;** | An array of signatures used to sign this transaction. | [optional] 

