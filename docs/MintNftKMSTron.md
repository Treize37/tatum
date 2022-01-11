# Tatum::MintNftKMSTron

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Chain to work with. | 
**account** | **String** | Blockchain address to perform transaction from | 
**token_id** | **String** | ID of token to be created. | 
**to** | **String** | Blockchain address to send NFT token to | 
**contract_address** | **String** | Address of NFT token | 
**url** | **String** | Metadata of the token. See https://eips.ethereum.org/EIPS/eip-721#specification for more details. | 
**author_addresses** | **Array&lt;String&gt;** | List of addresses, where royalty cashback for every transfer of this NFT will be send. Royalties are paid in native blockchain currency TRON. | [optional] 
**cashback_values** | **Array&lt;String&gt;** | List of values, which will be paid as a royalty for author of the NFT token with every token transfer. This is exact value in native blockhain currency. | [optional] 
**index** | [**BigDecimal**](BigDecimal.md) | If signatureId is mnemonic-based, this is the index to the specific address from that mnemonic. | [optional] 
**signature_id** | **String** | Identifier of the private key associated in signing application. Private key, or signature Id must be present. | 
**fee_limit** | [**BigDecimal**](BigDecimal.md) | Max limit for fee to be paid, in TRX. | 

