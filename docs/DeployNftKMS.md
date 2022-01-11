# SwaggerClient::DeployNftKMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Chain to work with. | 
**name** | **String** | Name of the NFT token | 
**provenance** | **BOOLEAN** | True if the contract is provenance type | [optional] 
**public_mint** | **BOOLEAN** | True if the contract is publicMint type | [optional] 
**symbol** | **String** | Symbol of the NFT token | 
**index** | [**BigDecimal**](BigDecimal.md) | If signatureId is mnemonic-based, this is the index to the specific address from that mnemonic. | [optional] 
**signature_id** | **String** | Identifier of the private key associated in signing application. Private key, or signature Id must be present. | 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to Ethereum transaction. If not present, last known nonce will be used. | [optional] 
**fee** | [**DeployErc20Fee**](DeployErc20Fee.md) |  | [optional] 

