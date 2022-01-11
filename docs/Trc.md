# Tatum::Trc

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **String** | TRC token name. Used as a identifier within Tatum system and also in blockchain as a currency symbol. | 
**supply** | **String** | Supply of TRC tokens. | 
**decimals** | [**BigDecimal**](BigDecimal.md) | Number of decimal points of the token. | 
**type** | **String** | Type of TRC token to create. | 
**description** | **String** | Used as a description within Tatum system and in blockchain as a currency name. | 
**url** | **String** | URL of the project. Applicable for TRC-10 only. | [optional] 
**base_pair** | **String** | Base pair for TRC token. Transaction value will be calculated according to this base pair. | 
**base_rate** | [**BigDecimal**](BigDecimal.md) | Exchange rate of the base pair. Each unit of the created curency will represent value of baseRate*1 basePair. | [optional] [default to 1]
**customer** | [**CustomerRegistration**](CustomerRegistration.md) |  | [optional] 
**accounting_currency** | **String** | All transaction will be billed in this currency for created account associated with this currency. If not set, EUR is used. ISO-4217 | [optional] 
**derivation_index** | **Integer** | Derivation index for xpub to generate specific deposit address. | [optional] 
**xpub** | **String** | Extended public key (xpub), from which address, where all initial supply will be stored, will be generated. Either xpub and derivationIndex, or address must be present, not both. | [optional] 
**address** | **String** | Address on Tron blockchain, where all initial supply will be stored. Either xpub and derivationIndex, or address must be present, not both. | [optional] 

