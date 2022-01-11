# Tatum::BchBlock

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hash** | **String** | Hash of block. | [optional] 
**size** | [**BigDecimal**](BigDecimal.md) | Block size. | [optional] 
**height** | [**BigDecimal**](BigDecimal.md) | The number of blocks preceding a particular block on a block chain. | [optional] 
**version** | [**BigDecimal**](BigDecimal.md) | Block version. | [optional] 
**merkleroot** | **String** | The root node of a merkle tree, a descendant of all the hashed pairs in the tree. | [optional] 
**tx** | [**Array&lt;BchTx&gt;**](BchTx.md) | List of transactions present in the block. | [optional] 
**time** | [**BigDecimal**](BigDecimal.md) | Time of the block. | [optional] 
**nonce** | [**BigDecimal**](BigDecimal.md) | Arbitrary number that is used in Bitcoin&#x27;s proof of work consensus algorithm. | [optional] 
**difficulty** | [**BigDecimal**](BigDecimal.md) |  | [optional] 
**confirmations** | [**BigDecimal**](BigDecimal.md) | Number of blocks mined after this block. | [optional] 
**previousblockhash** | **String** | Hash of the previous block. | [optional] 
**nextblockhash** | **String** | Hash of the next block. | [optional] 

