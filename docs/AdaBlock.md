# SwaggerClient::AdaBlock

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hash** | **String** | Hash of block. | [optional] 
**number** | [**BigDecimal**](BigDecimal.md) | The number of blocks preceding a particular block on a block chain. | [optional] 
**epoch_no** | [**BigDecimal**](BigDecimal.md) | Number of the epoch the block is included in. | [optional] 
**slot_no** | [**BigDecimal**](BigDecimal.md) | Number of the slot the block is included in. | [optional] 
**merkle_root** | **String** | The root node of a merkle tree, a descendant of all the hashed pairs in the tree. | [optional] 
**forged_at** | **String** | Time of the block. | [optional] 
**fees** | [**BigDecimal**](BigDecimal.md) | Sum of fees paid in the block. | [optional] 
**slot_in_epoch** | [**BigDecimal**](BigDecimal.md) | Number of the slot in the epoch. | [optional] 
**transactions** | [**Array&lt;AdaTx&gt;**](AdaTx.md) |  | [optional] 

