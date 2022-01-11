# Tatum::EgldBlock

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**nonce** | [**BigDecimal**](BigDecimal.md) | The block height. | [optional] 
**round** | [**BigDecimal**](BigDecimal.md) | The round number. | [optional] 
**hash** | **String** | Hash of the block. | [optional] 
**prev_block_hash** | **String** | Hash of the previous block. | [optional] 
**epoch** | [**BigDecimal**](BigDecimal.md) | An epoch is a sequence of consecutive rounds during which the configuration of the network does not change (currently aprox. 24 hrs in length). | [optional] 
**num_txs** | [**BigDecimal**](BigDecimal.md) | Number of transactions in current block. | [optional] 
**shard_blocks** | [**Array&lt;EgldShardBlock&gt;**](EgldShardBlock.md) | Array of shard blocks | [optional] 
**transactions** | [**Array&lt;EgldTx&gt;**](EgldTx.md) | Array of transactions. | [optional] 

