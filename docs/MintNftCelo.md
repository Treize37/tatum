# SwaggerClient::MintNftCelo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Chain to work with. | 
**token_id** | **String** | ID of token to be created. | [optional] 
**to** | **String** | Blockchain address to send NFT token to | 
**erc20** | [****](.md) | Address of custom ERC20 token | [optional] 
**contract_address** | **String** | Address of NFT token | [optional] 
**url** | **String** | Metadata of the token. See https://eips.ethereum.org/EIPS/eip-721#specification for more details. | 
**author_addresses** | **Array&lt;String&gt;** | List of addresses, where royalty cashback for every transfer of this NFT will be send. Royalties are paid in native blockchain currency CELO. | [optional] 
**provenance** | **BOOLEAN** | True if the contract is provenance type | [optional] 
**cashback_values** | **Array&lt;String&gt;** | List of values, which will be paid as a royalty for author of the NFT token with every token transfer. This is exact value in native blockhain currency and percentage value in case of provenance | [optional] 
**fixed_values** | **Array&lt;String&gt;** | List of fixed values, if fixed value is greater than cashback value, it will be transferred to the authors instead.This is exact value in native blockhain currency. | [optional] 
**from_private_key** | **String** | Private key of sender address. Private key, or signature Id must be present. | [optional] 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to Celo transaction. If not present, last known nonce will be used. | [optional] 
**fee_currency** | **String** | Currency to pay for transaction gas | 

