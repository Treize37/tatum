# Tatum::XrpAccountAccountData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account** | **String** | The identifying address of this account, such as rf1BiGeXwwQoi8Z2ueFYTEXSwuJYfV2Jpn. | [optional] 
**balance** | **String** | The account&#x27;s current XRP balance in drops, represented as a string. | [optional] 
**flags** | [**BigDecimal**](BigDecimal.md) | A bit-map of boolean flags enabled for this account. | [optional] 
**ledger_entry_type** | **String** | The value 0x0061, mapped to the string AccountRoot, indicates that this is an AccountRoot object. | [optional] 
**owner_count** | [**BigDecimal**](BigDecimal.md) | The number of objects this account owns in the ledger, which contributes to its owner reserve. | [optional] 
**previous_txn_id** | **String** | The identifying hash of the transaction that most recently modified this object. | [optional] 
**previous_txn_lgr_seq** | [**BigDecimal**](BigDecimal.md) | The index of the ledger that contains the transaction that most recently modified this object. | [optional] 
**sequence** | [**BigDecimal**](BigDecimal.md) | The sequence number of the next valid transaction for this account. (Each account starts with Sequence &#x3D; 1 and increases each time a transaction is made.) | [optional] 
**index** | **String** |  | [optional] 

