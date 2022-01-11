# SwaggerClient::TransferEthBlockchain

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | **String** | Additinal data, that can be passed to blockchain transaction as data property. Only for ETH transactions. | [optional] 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to Ethereum transaction. If not present, last known nonce will be used. | [optional] 
**to** | **String** | Blockchain address to send assets | 
**currency** | **String** | Currency to transfer from Ethereum Blockchain Account. | 
**fee** | [**DeployErc20Fee**](DeployErc20Fee.md) |  | [optional] 
**amount** | **String** | Amount to be sent in Ether. | [optional] 
**from_private_key** | **String** | Private key of sender address. Private key, or signature Id must be present. | 

