# Tatum::AlgoTx

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**close_rewards** | [**BigDecimal**](BigDecimal.md) | rewards applied to close-remainder-to account. | [optional] 
**closing_amount** | [**BigDecimal**](BigDecimal.md) | closing amount for transaction. | [optional] 
**confirmed_round** | [**BigDecimal**](BigDecimal.md) | Round when the transaction was confirmed. | [optional] 
**fee** | [**BigDecimal**](BigDecimal.md) | Transaction fee | [optional] 
**first_valid** | [**BigDecimal**](BigDecimal.md) | First valid round for this transaction. | [optional] 
**genesis_hash** | **String** | Hash of genesis block | [optional] 
**genesis_id** | **String** | genesis block ID. | [optional] 
**id** | **String** | transaction ID | [optional] 
**intra_round_offset** | [**BigDecimal**](BigDecimal.md) | Offset into the round where this transaction was confirmed. | [optional] 
**last_valid** | [**BigDecimal**](BigDecimal.md) | Last valid round for this transaction. | [optional] 
**note** | **String** | Free form data | [optional] 
**payment_transaction** | **Object** | payment Transaction | [optional] 
**receiver_rewards** | [**BigDecimal**](BigDecimal.md) | rewards applied to receiver account. | [optional] 
**round_time** | [**BigDecimal**](BigDecimal.md) | Time when the block this transaction is in was confirmed. | [optional] 
**sender** | **String** | Sender&#x27;s address | [optional] 
**sender_rewards** | [**BigDecimal**](BigDecimal.md) | rewards applied to sender account. | [optional] 
**signature** | **Object** | signature | [optional] 
**tx_type** | **String** | indicates what type of transaction this is. Different types have differnet fields. | [optional] 

