# Tatum::LtcBlock

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hash** | **String** | Hash of block. | [optional] 
**height** | [**BigDecimal**](BigDecimal.md) | The number of blocks preceding a particular block on a block chain. | [optional] 
**version** | [**BigDecimal**](BigDecimal.md) | Block version. | [optional] 
**prev_block** | **String** | Hash of the previous block. | [optional] 
**merkle_root** | **String** | The root node of a merkle tree, a descendant of all the hashed pairs in the tree. | [optional] 
**ts** | [**BigDecimal**](BigDecimal.md) | Time of the block. | [optional] 
**bits** | [**BigDecimal**](BigDecimal.md) |  | [optional] 
**nonce** | [**BigDecimal**](BigDecimal.md) | Arbitrary number that is used in Litecoin&#x27;s proof of work consensus algorithm. | [optional] 
**txs** | [**Array&lt;LtcTx&gt;**](LtcTx.md) |  | [optional] 

