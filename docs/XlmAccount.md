# SwaggerClient::XlmAccount

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | A unique identifier for this account. | [optional] 
**account_id** | **String** | This account’s public key encoded in a base32 string representation. | [optional] 
**sequence** | **String** | This account’s current sequence number. For use when submitting this account’s next transaction. | [optional] 
**subentry_count** | [**BigDecimal**](BigDecimal.md) | The number of subentries on this account. | [optional] 
**last_modified_ledger** | [**BigDecimal**](BigDecimal.md) | The ID of the last ledger that included changes to this account. | [optional] 
**thresholds** | [**XlmAccountThresholds**](XlmAccountThresholds.md) |  | [optional] 
**flags** | [**XlmAccountFlags**](XlmAccountFlags.md) |  | [optional] 
**balances** | [**Array&lt;XlmAccountBalances&gt;**](XlmAccountBalances.md) | The assets this account holds. | [optional] 
**signers** | [**Array&lt;XlmAccountSigners&gt;**](XlmAccountSigners.md) | The public keys and associated weights that can be used to authorize transactions for this account. Used for multi-sig. | [optional] 
**data** | **Object** | An array of account data fields. | [optional] 

