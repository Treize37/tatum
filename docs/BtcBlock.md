# SwaggerClient::BtcBlock

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hash** | **String** | Hash of block. | [optional] 
**height** | [**BigDecimal**](BigDecimal.md) | The number of blocks preceding a particular block on a block chain. | [optional] 
**depth** | [**BigDecimal**](BigDecimal.md) | The number of blocks following a particular block on a block chain, including current one. | [optional] 
**version** | [**BigDecimal**](BigDecimal.md) | Block version. | [optional] 
**prev_block** | **String** | Hash of the previous block. | [optional] 
**merkle_root** | **String** | The root node of a merkle tree, a descendant of all the hashed pairs in the tree. | [optional] 
**time** | [**BigDecimal**](BigDecimal.md) | Time of the block. | [optional] 
**bits** | [**BigDecimal**](BigDecimal.md) |  | [optional] 
**nonce** | [**BigDecimal**](BigDecimal.md) | Arbitrary number that is used in Bitcoin&#x27;s proof of work consensus algorithm. | [optional] 
**txs** | [**Array&lt;BtcTx&gt;**](BtcTx.md) |  | [optional] 

