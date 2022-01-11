# Tatum::EstimateFeeCustodial

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Blockchain to estimate fee for. | 
**type** | **String** | Type of transaction | 
**sender** | **String** | Sender address | 
**recipient** | **String** | Blockchain address to send assets | 
**contract_address** | **String** | Contract address of the token | 
**custodial_address** | **String** | Contract address of custodial wallet contract | 
**amount** | **String** | Amount to be sent in native asset, ERC20 or ERC1155 | 
**token_type** | [**BigDecimal**](BigDecimal.md) | Type of the token to transfer from custodial wallet. 0 - ERC20, 1 - ERC721, 2 - ERC1155, 3 - native asset | 

