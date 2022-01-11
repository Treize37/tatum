# Tatum::EgldTx

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | Type of transaction. | [optional] 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce of the transaction. | [optional] 
**round** | [**BigDecimal**](BigDecimal.md) | The round number. | [optional] 
**epoch** | [**BigDecimal**](BigDecimal.md) | An epoch is a sequence of consecutive rounds during which the configuration of the network does not change (currently aprox. 24 hrs in length). | [optional] 
**value** | **String** | Transferred value. | [optional] 
**receiver** | **String** | Address of the receiver. | [optional] 
**sender** | **String** | Address of the sender. | [optional] 
**gas_price** | [**BigDecimal**](BigDecimal.md) | Gas price provided by the sender | [optional] 
**gas_limit** | [**BigDecimal**](BigDecimal.md) | Gas provided by the sender | [optional] 
**data** | **String** | Data field in transaction. | [optional] 
**signature** | **String** | Signature of the transaction. | [optional] 
**source_shard** | [**BigDecimal**](BigDecimal.md) | Source shard. | [optional] 
**destination_shard** | [**BigDecimal**](BigDecimal.md) | Destination shard. | [optional] 
**block_nonce** | [**BigDecimal**](BigDecimal.md) | Nonce of block which contains current transaction. | [optional] 
**block_hash** | **String** | Hash of block which contains current transaction. | [optional] 
**miniblock_hash** | **String** | Miniblock hash. | [optional] 
**timestamp** | [**BigDecimal**](BigDecimal.md) | The unix timestamp for when the block was collated. | [optional] 
**status** | **String** | Status of the transaction. | [optional] 
**hyperblock_nonce** | [**BigDecimal**](BigDecimal.md) | Nonce of the hyperblockwhere this transaction was in. | [optional] 
**hyperblock_hash** | **String** | Hash of the hyperblock where this transaction was in. | [optional] 

