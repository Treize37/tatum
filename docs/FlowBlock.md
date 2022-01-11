# SwaggerClient::FlowBlock

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Hash of the block. | [optional] 
**parent_id** | **String** | Hash of the parent block. | [optional] 
**height** | [**BigDecimal**](BigDecimal.md) | The block number. | [optional] 
**timestamp** | **String** | Timestamp of the block. | [optional] 
**transactions** | **Array&lt;String&gt;** | Array of transaction IDs. | [optional] 
**signatures** | **Array&lt;String&gt;** | Array of signatures. | [optional] 
**block_seals** | [**Array&lt;FlowBlockBlockSeals&gt;**](FlowBlockBlockSeals.md) | Array of block seals. | [optional] 

