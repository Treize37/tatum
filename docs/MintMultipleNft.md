# Tatum::MintMultipleNft

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Chain to work with. | 
**to** | **Array&lt;String&gt;** | Blockchain address to send NFT token to. | 
**token_id** | **Array&lt;String&gt;** | ID of token to be created. | 
**url** | **Array&lt;String&gt;** | Metadata of the token. See https://eips.ethereum.org/EIPS/eip-721#specification for more details. | 
**author_addresses** | **Array&lt;Array&lt;String&gt;&gt;** | List of addresses for every token, where royalty cashback for every transfer of this NFT will be send. Royalties are paid in native blockchain currency, ETH or BSC. | [optional] 
**cashback_values** | **Array&lt;Array&lt;String&gt;&gt;** | List of values for every token, which will be paid as a royalty for author of the NFT token with every token transfer. This is exact value in native blockhain currency. | [optional] 
**contract_address** | **String** | Address of NFT token | 
**from_private_key** | **String** | Private key of sender address. Private key, or signature Id must be present. | 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to Ethereum transaction. If not present, last known nonce will be used. | [optional] 
**fee** | [**DeployErc20Fee**](DeployErc20Fee.md) |  | [optional] 

