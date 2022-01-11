# SwaggerClient::TransferEthBlockchainKMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | **String** | Additinal data, that can be passed to blockchain transaction as data property. Only for ETH transactions. | [optional] 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to Ethereum transaction. If not present, last known nonce will be used. | [optional] 
**to** | **String** | Blockchain address to send assets | 
**currency** | **String** | Currency to transfer from Ethereum Blockchain Account. | 
**fee** | [**DeployErc20Fee**](DeployErc20Fee.md) |  | [optional] 
**amount** | **String** | Amount to be sent in Ether. | 
**signature_id** | **String** | Identifier of the private key associated in signing application. Private key, or signature Id must be present. | 
**index** | [**BigDecimal**](BigDecimal.md) | If signatureId is mnemonic-based, this is the index to the specific address from that mnemonic. | [optional] 

