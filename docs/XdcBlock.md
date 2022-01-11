# Tatum::XdcBlock

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**number** | [**BigDecimal**](BigDecimal.md) | The block number. &#x27;null&#x27; when its pending block. | [optional] 
**hash** | **String** | Hash of the block. &#x27;null&#x27; when its pending block. | [optional] 
**parent_hash** | **String** | Hash of the parent block. | [optional] 
**nonce** | **String** | Hash of the generated proof-of-work. &#x27;null&#x27; when its pending block. | [optional] 
**sha3_uncles** | **String** | SHA3 of the uncles data in the block. | [optional] 
**logs_bloom** | **String** | The bloom filter for the logs of the block. &#x27;null&#x27; when its pending block. | [optional] 
**transactions_root** | **String** | The root of the transaction trie of the block. | [optional] 
**state_root** | **String** | The root of the final state trie of the block. | [optional] 
**receipts_root** | **String** | The root of the transaction trie of the block. | [optional] 
**miner** | **String** | The address of the beneficiary to whom the mining rewards were given. | [optional] 
**difficulty** | **String** | Difficulty for this block. | [optional] 
**total_difficulty** | **String** | Total difficulty of the chain until this block. | [optional] 
**extra_data** | **String** | The &#x27;extra data&#x27; field of this block. | [optional] 
**size** | [**BigDecimal**](BigDecimal.md) | The size of this block in bytes. | [optional] 
**gas_limit** | [**BigDecimal**](BigDecimal.md) | The maximum gas allowed in this block. | [optional] 
**gas_used** | [**BigDecimal**](BigDecimal.md) | The total used gas by all transactions in this block. | [optional] 
**timestamp** | [**BigDecimal**](BigDecimal.md) | The unix timestamp for when the block was collated. | [optional] 
**transactions** | [**Array&lt;XdcTx&gt;**](XdcTx.md) | Array of transactions. | [optional] 
**uncles** | **Array&lt;String&gt;** | Array of uncle hashes. | [optional] 

