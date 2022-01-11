# Tatum::MintNftKMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Chain to work with. | 
**token_id** | **String** | ID of token to be created. | 
**to** | **String** | Blockchain address to send NFT token to | 
**contract_address** | **String** | Address of NFT token | 
**erc20** | [****](.md) | Address of custom ERC20 token | [optional] 
**url** | **String** | Metadata of the token. See https://eips.ethereum.org/EIPS/eip-721#specification for more details. | 
**provenance** | **BOOLEAN** | True if the contract is provenance type | [optional] 
**author_addresses** | **Array&lt;String&gt;** | List of addresses, where royalty cashback for every transfer of this NFT will be send. Royalties are paid in native blockchain currency, like BSC or ETH. | [optional] 
**cashback_values** | **Array&lt;String&gt;** | List of values, which will be paid as a royalty for author of the NFT token with every token transfer. This is exact value in native blockhain currency and percentage value in case of provenance | [optional] 
**fixed_values** | **Array&lt;String&gt;** | List of fixed values, if fixed value is greater than cashback value, it will be transferred to the authors instead.This is exact value in native blockhain currency. | [optional] 
**index** | [**BigDecimal**](BigDecimal.md) | If signatureId is mnemonic-based, this is the index to the specific address from that mnemonic. | [optional] 
**signature_id** | **String** | Identifier of the private key associated in signing application. Private key, or signature Id must be present. | 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to Ethereum transaction. If not present, last known nonce will be used. | [optional] 
**fee** | [**DeployErc20Fee**](DeployErc20Fee.md) |  | [optional] 

