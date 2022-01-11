# Tatum::EstimateFee

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Blockchain to estimate fee for. | 
**type** | **String** | Type of transaction | 
**sender** | **String** | Sender address, if type is TRANSFER_ERC20 | [optional] 
**recipient** | **String** | Blockchain address to send assets, if type is TRANSFER_ERC20 | [optional] 
**contract_address** | **String** | Contract address of ERC20 token, if type is TRANSFER_ERC20 | [optional] 
**amount** | **String** | Amount to be sent in ERC20, if type is TRANSFER_ERC20 | [optional] 
**enable_fungible_tokens** | **BOOLEAN** | If address should support ERC20 tokens, it should be marked as true. Valid only for DEPLOY_CUSTODIAL_WALLET. | [optional] 
**enable_non_fungible_tokens** | **BOOLEAN** | If address should support ERC721 tokens, it should be marked as true. Valid only for DEPLOY_CUSTODIAL_WALLET option. | [optional] 
**enable_semi_fungible_tokens** | **BOOLEAN** | If address should support ERC1155 tokens, it should be marked as true. Valid only for DEPLOY_CUSTODIAL_WALLET option. | [optional] 
**enable_batch_transactions** | **BOOLEAN** | If address should support batch transfers of the assets, it should be marked as true. Valid only for DEPLOY_CUSTODIAL_WALLET option. | [optional] 

