# SwaggerClient::LtcTransactionAddress

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from_address** | [**Array&lt;BtcTransactionFromAddressFromAddress&gt;**](BtcTransactionFromAddressFromAddress.md) | Array of addresses and corresponding private keys. Tatum will automatically scan last 100 transactions for each address and will use all of the unspent values. We advise to use this option if you have 1 address per 1 transaction only. | 
**to** | [**Array&lt;LtcTransactionAddressTo&gt;**](LtcTransactionAddressTo.md) | Array of addresses and values to send Litecoins to. Values must be set in LTC. Difference between from and to is transaction fee. | 

