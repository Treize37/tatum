# Tatum::VetBlock

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**number** | **Integer** | block number (height) | [optional] 
**id** | **String** | block identifier | [optional] 
**size** | **Integer** | RLP encoded block size in bytes | [optional] 
**parent_id** | **String** | parent block ID | [optional] 
**timestamp** | **Integer** | block unix timestamp | [optional] 
**gas_limit** | **Integer** | block gas limit (max allowed accumulative gas usage of transactions) | [optional] 
**beneficiary** | **String** | Address of account to receive block reward | [optional] 
**gas_used** | **Integer** | accumulative gas usage of transactions | [optional] 
**total_score** | **Integer** | sum of all ancestral blocks&#x27; score | [optional] 
**txs_root** | **String** | root hash of transactions in the block | [optional] 
**txs_features** | **Integer** | supported txs features bitset | [optional] 
**state_root** | **String** | root hash of accounts state | [optional] 
**receipts_root** | **String** | root hash of transaction receipts | [optional] 
**signer** | **String** | the one who signed this block | [optional] 
**transactions** | **Array&lt;String&gt;** | transactions IDs | [optional] 

