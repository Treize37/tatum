# SwaggerClient::GenerateCustodialWalletTron

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Blockchain to work with. | 
**fee_limit** | [**BigDecimal**](BigDecimal.md) | Fee in TRX to be paid. | 
**from_private_key** | **String** | Private key of account, from which the transaction will be initiated. | 
**enable_fungible_tokens** | **BOOLEAN** | If address should support ERC20 tokens, it should be marked as true. | 
**enable_non_fungible_tokens** | **BOOLEAN** | If address should support ERC721 tokens, it should be marked as true. | 
**enable_semi_fungible_tokens** | **BOOLEAN** | If address should support ERC1155 tokens, it should be marked as true. Not supported for TRON. | 
**enable_batch_transactions** | **BOOLEAN** | If address should support batch transfers of the assets, it should be marked as true. | 

