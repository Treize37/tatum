# SwaggerClient::TransferCustodialWalletBatchTron

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Blockchain to work with. | 
**custodial_address** | **String** | Address of custodial wallet to transfer from | 
**token_address** | **Array&lt;String&gt;** | Address of the token to transfer. Not valid for native address transfers. | [optional] 
**contract_type** | [**Array&lt;BigDecimal&gt;**](BigDecimal.md) | Type of the asset to transfer. 0 - ERC20, 1 - ERC721, 3 - native asset | 
**recipient** | **Array&lt;String&gt;** | Blockchain address to send assets to | 
**amount** | **Array&lt;String&gt;** | Amount of the assets to be sent. Not valid for ERC-721 tokens. | [optional] 
**token_id** | **Array&lt;String&gt;** | ID of token, if transaction is for ERC-721. | [optional] 
**from_private_key** | **String** | Private key of sender address. Private key, or signature Id must be present. | 
**fee_limit** | [**BigDecimal**](BigDecimal.md) | Fee in TRX to be paid. | 

