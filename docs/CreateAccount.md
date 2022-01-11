# Tatum::CreateAccount

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currency** | **String** | Account currency. Supported values are BTC, BNB, LTC, DOGE, BCH, ETH, XLM, XRP, TRON, BSC, Tatum Virtual Currencies started with VC_ prefix (this includes FIAT currencies), USDT, WBTC, LEO, LINK, GMC, UNI, FREE, MKR, USDC, BAT, TUSD, BUSD, PAX, PAXG, PLTC, MMY, XCON, USDT_TRON, BETH, BUSD, BBTC, BADA, WBNB, BDOT, BXRP, BLTC, BBCH, CAKE, BUSD_BSC, ERC20, BEP20 or TRC-10/20 custom tokens registered in the Tatum Platform, XLM or XRP Assets created via Tatum Platform. ERC20 tokens and BEP20 tokens do not have Testnet blockchains, so it is impossible to use them in a non-production environment. You can emulate behaviour by &lt;a href&#x3D;\&quot;#operation/createErc20\&quot;&gt;registering your custom ERC20 token&lt;/a&gt; in the platform and receive tokens using &lt;a href&#x3D;\&quot;https://erc20faucet.com/\&quot; target&#x3D;\&quot;_blank\&quot;&gt;https://erc20faucet.com/&lt;/a&gt;.  | 
**xpub** | **String** | Extended public key to generate addresses from. | [optional] 
**customer** | [**CustomerRegistration**](CustomerRegistration.md) |  | [optional] 
**compliant** | **BOOLEAN** | Enable compliant checks. If this is enabled, it is impossible to create account if compliant check fails. | [optional] 
**account_code** | **String** | For bookkeeping to distinct account purpose. | [optional] 
**accounting_currency** | **String** | All transaction will be accounted in this currency for all accounts. Currency can be overridden per account level. If not set, customer accountingCurrency is used or EUR by default. ISO-4217 | [optional] 
**account_number** | **String** | Account number from external system. | [optional] 

