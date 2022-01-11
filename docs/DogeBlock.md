# SwaggerClient::DogeBlock

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hash** | **String** | Hash of block. | [optional] 
**height** | [**BigDecimal**](BigDecimal.md) | The number of blocks preceding a particular block on a block chain. | [optional] 
**size** | [**BigDecimal**](BigDecimal.md) | The size of the block. | [optional] 
**confirmations** | [**BigDecimal**](BigDecimal.md) | Number of confirmations of that block. | [optional] 
**weight** | [**BigDecimal**](BigDecimal.md) | The weight of the block. | [optional] 
**version** | [**BigDecimal**](BigDecimal.md) | Block version. | [optional] 
**previousblockhash** | **String** | Hash of the previous block. | [optional] 
**merkle_root** | **String** | The root node of a merkle tree, a descendant of all the hashed pairs in the tree. | [optional] 
**time** | [**BigDecimal**](BigDecimal.md) | Time of the block. | [optional] 
**bits** | [**BigDecimal**](BigDecimal.md) |  | [optional] 
**nonce** | [**BigDecimal**](BigDecimal.md) | Arbitrary number that is used in Litecoin&#x27;s proof of work consensus algorithm. | [optional] 
**txs** | [**Array&lt;DogeTx&gt;**](DogeTx.md) |  | [optional] 

