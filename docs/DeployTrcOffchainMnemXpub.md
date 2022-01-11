# Tatum::DeployTrcOffchainMnemXpub

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **String** | Name of the TRC token - stored as a symbol on Blockchain | 
**supply** | **String** | max supply of TRC token. | 
**decimals** | [**BigDecimal**](BigDecimal.md) | Number of decimal points of the token. | 
**type** | **String** | Type of TRC token to create. | 
**description** | **String** | Description of the TRC token | 
**url** | **String** | URL of the project. Applicable for TRC-10 only. | [optional] 
**base_pair** | **String** | Base pair for TRC token. 1 token will be equal to 1 unit of base pair. Transaction value will be calculated according to this base pair. | 
**base_rate** | [**BigDecimal**](BigDecimal.md) | Exchange rate of the base pair. Each unit of the created curency will represent value of baseRate*1 basePair. | [optional] [default to 1]
**customer** | [**CustomerRegistration**](CustomerRegistration.md) |  | [optional] 
**xpub** | **String** | Extended public key (xpub), from which address, where all initial supply will be stored, will be generated. Either xpub and derivationIndex, or address must be present, not both. | 
**derivation_index** | **Integer** | Derivation index for xpub to generate specific deposit address. | 
**mnemonic** | **String** | Mnemonic to generate private key for the deploy account of TRC, from which the gas will be paid (index will be used). If address is not present, mnemonic is used to generate xpub and index is set to 1. Either mnemonic and index or privateKey and address must be present, not both. | 
**index** | **Integer** | derivation index of address to pay for deployment of TRC | 

