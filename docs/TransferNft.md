# Tatum::TransferNft

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**value** | **String** | If token to be transferred is Royalty NFT token, this is a value to be paid as a cashback to the authors of the token. | [optional] 
**chain** | **String** | Chain to work with. | 
**to** | **String** | Blockchain address to send NFT token to | 
**token_id** | **String** | ID of token. | 
**contract_address** | **String** | Address of NFT token | 
**provenance** | **BOOLEAN** | True if the contract is provenance type | [optional] 
**provenance_data** | **String** | data you want to store with transaction, optional and valid only if provenance contract | [optional] 
**token_price** | **String** | current price of the token, valid only for provenance | [optional] 
**from_private_key** | **String** | Private key of sender address. Private key, or signature Id must be present. | 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to Ethereum transaction. If not present, last known nonce will be used. Setting nonce is not necessary in Algorand | [optional] 
**fee** | [**TransferNftFee**](TransferNftFee.md) |  | [optional] 

