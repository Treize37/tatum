# SwaggerClient::ApproveCeloErc20KMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Chain to work with. | 
**amount** | **String** | Amount to be approved for the spender. | 
**spender** | **String** | Blockchain address of the new spender. | 
**contract_address** | **String** | Address of ERC-20 token | 
**signature_id** | **String** | Identifier of the private key associated in signing application. Private key, or signature Id must be present. | 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to Celo transaction. If not present, last known nonce will be used. | [optional] 
**fee_currency** | **String** | Currency to pay for transaction gas | 
