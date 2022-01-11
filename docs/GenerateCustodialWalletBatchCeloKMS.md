# Tatum::GenerateCustodialWalletBatchCeloKMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Blockchain to work with. | 
**fee_currency** | **String** | Currency to pay for transaction gas | 
**signature_id** | **String** | Identifier of the private key associated in signing application. Private key, or signature Id must be present. | 
**index** | [**BigDecimal**](BigDecimal.md) | If signatureId is mnemonic-based, this is the index to the specific address from that mnemonic. | [optional] 
**batch_count** | [**BigDecimal**](BigDecimal.md) | Number of addresses to generate. | 
**owner** | **String** | Owner of the addresses. | 
**fee** | [**DeployErc20Fee**](DeployErc20Fee.md) |  | [optional] 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to the transaction. If not present, last known nonce will be used. | [optional] 

