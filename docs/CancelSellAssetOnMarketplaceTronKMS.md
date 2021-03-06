# Tatum::CancelSellAssetOnMarketplaceTronKMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Blockchain to work with. | 
**contract_address** | **String** | Address of the marketplace smart contract. | 
**from** | **String** | Address of the recipient of the fee for the trade. | 
**signature_id** | **String** | Identifier of the private key associated in signing application. Private key, or signature Id must be present. | 
**index** | [**BigDecimal**](BigDecimal.md) | If signatureId is mnemonic-based, this is the index to the specific address from that mnemonic. | [optional] 
**erc20_address** | **String** | Optional address of the TRC20 token, which will be used as a selling currency of the NFT. | [optional] 
**from_private_key** | **String** | Private key of sender address. Private key, or signature Id must be present. | [optional] 
**fee_limit** | [**BigDecimal**](BigDecimal.md) | Fee in TRX to be paid. | 

