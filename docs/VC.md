# SwaggerClient::VC

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Virtual currency name. Must be prefixed with &#x27;VC_&#x27;. | 
**supply** | **String** | Supply of virtual currency. | 
**account_id** | **String** | Virtual currency account. | 
**base_rate** | [**BigDecimal**](BigDecimal.md) | Exchange rate of the base pair. Each unit of the created curency will represent value of baseRate*1 basePair. | [default to 1]
**base_pair** | **String** | Base pair for virtual currency. Transaction value will be calculated according to this base pair. e.g. 1 VC_VIRTUAL is equal to 1 BTC, if basePair is set to BTC. | 
**customer_id** | **String** | ID of customer associated with virtual currency. | [optional] 
**description** | **String** | Used as a description within Tatum system. | [optional] 
**erc20_address** | **String** | Address of ERC20 token, when virtual currency is based on the Ethereum blockchain. | [optional] 
**issuer_account** | **String** | Blockchain account for XLM or XRP based virtual currencies, which is marked as the issuer of the custom blockchain asset. | [optional] 
**chain** | **String** | Blockchain, on which this virtual currency is paired on. Not present, when Tatum&#x27;s private ledger is used as a base ledger. | [optional] 
**initial_address** | **String** | Ethereum address, where initial supply was minted, when virtual currency is based on the Ethereum blockchain. | [optional] 

