# SwaggerClient::TransferErc20BlockchainKMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**to** | **String** | Blockchain address to send ERC20 token to | 
**amount** | **String** | Amount to be sent. | 
**contract_address** | **String** | Address of ERC20 token | 
**digits** | [**BigDecimal**](BigDecimal.md) | Number of decimal points that ERC20 token has. | 
**index** | [**BigDecimal**](BigDecimal.md) | If signatureId is mnemonic-based, this is the index to the specific address from that mnemonic. | [optional] 
**signature_id** | **String** | Identifier of the private key associated in signing application. Private key, or signature Id must be present. | 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to XDC transaction. If not present, last known nonce will be used. | [optional] 
**fee** | [**DeployErc20Fee**](DeployErc20Fee.md) |  | [optional] 

