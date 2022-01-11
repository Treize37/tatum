# Tatum::Address

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | **String** | Blockchain address. | 
**currency** | **String** | Currency of generated address. BTC, LTC, DOGE, BCH, ETH, XRP, XLM, BNB, TRX, ERC20, TRC20. | 
**derivation_key** | **Integer** | Derivation key index for given address. | [optional] 
**xpub** | **String** | Extended public key to derive address from. In case of XRP, this is account address, since address is defined as DestinationTag, which is address field. In case of XLM, this is account address, since address is defined as message, which is address field. | [optional] 
**destination_tag** | [**BigDecimal**](BigDecimal.md) | In case of XRP, destinationTag is the distinguisher of the account. | [optional] 
**memo** | **String** | In case of BNB, message is the distinguisher of the account. | [optional] 
**message** | **String** | In case of XLM, message is the distinguisher of the account. | [optional] 

