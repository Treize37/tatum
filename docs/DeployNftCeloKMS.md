# SwaggerClient::DeployNftCeloKMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Chain to work with. | 
**name** | **String** | Name of the NFT token | 
**public_mint** | **BOOLEAN** | True if the contract is publicMint type | [optional] 
**symbol** | **String** | Symbol of the NFT token | 
**index** | [**BigDecimal**](BigDecimal.md) | If signatureId is mnemonic-based, this is the index to the specific address from that mnemonic. | [optional] 
**signature_id** | **String** | Identifier of the private key associated in signing application. Private key, or signature Id must be present. | 
**nonce** | [**BigDecimal**](BigDecimal.md) |  | [optional] 
**provenance** | **BOOLEAN** | True if the contract is provenance type | [optional] 
**fee_currency** | **String** | Currency to pay for transaction gas | 

