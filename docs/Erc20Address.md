# Tatum::Erc20Address

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **String** | ERC20/BEP20 token name. Used as a identifier within Tatum system and also in blockchain as a currency symbol. | 
**supply** | **String** | Supply of ERC20/BEP20 token. | 
**decimals** | [**BigDecimal**](BigDecimal.md) | Decimals of ERC20/BEP20 token. | 
**description** | **String** | Used as a description within Tatum system and in blockchain as a currency name. | 
**base_pair** | **String** | Base pair for ERC20/BEP20 token. Transaction value will be calculated according to this base pair. | 
**base_rate** | [**BigDecimal**](BigDecimal.md) | Exchange rate of the base pair. Each unit of the created curency will represent value of baseRate*1 basePair. | [optional] [default to 1]
**customer** | [**CustomerRegistration**](CustomerRegistration.md) |  | [optional] 
**accounting_currency** | **String** | All transaction will be billed in this currency for created account associated with this currency. If not set, EUR is used. ISO-4217 | [optional] 
**address** | **String** | Address on Ethereum blockchain, where all initial supply will be stored. Either xpub and derivationIndex, or address must be present, not both. | 

