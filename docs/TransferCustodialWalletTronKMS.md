# SwaggerClient::TransferCustodialWalletTronKMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Blockchain to work with. | 
**custodial_address** | **String** | Address of custodial wallet to transfer from | 
**token_address** | **String** | Address of the token to transfer. Not valid for native address transfers. | [optional] 
**contract_type** | [**BigDecimal**](BigDecimal.md) | Type of the asset to transfer. 0 - ERC20, 1 - ERC721, 3 - native asset | 
**recipient** | **String** | Blockchain address to send assets to | 
**amount** | **String** | Amount of the assets to be sent. Not valid for ERC-721 tokens. | [optional] 
**token_id** | **String** | ID of token, if transaction is for ERC-721 or ERC-1155. | [optional] 
**signature_id** | **String** | Identifier of the private key associated in signing application. Private key, or signature Id must be present. | 
**index** | [**BigDecimal**](BigDecimal.md) | If signatureId is mnemonic-based, this is the index to the specific address from that mnemonic. | [optional] 
**fee_limit** | [**BigDecimal**](BigDecimal.md) | Fee in TRX to be paid. | 
**from** | **String** | Sender address of TRON account in Base58 format. | 

