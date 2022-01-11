# SwaggerClient::BtcTransactionFromAddressKMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from_address** | [**Array&lt;BtcTransactionFromAddressKMSFromAddress&gt;**](BtcTransactionFromAddressKMSFromAddress.md) | Array of addresses and corresponding private keys. Tatum will automatically scan last 100 transactions for each address and will use all of the unspent values. We advise to use this option if you have 1 address per 1 transaction only. | 
**to** | [**Array&lt;BtcTransactionFromAddressTo&gt;**](BtcTransactionFromAddressTo.md) | Array of addresses and values to send bitcoins to. Values must be set in BTC. Difference between from and to is transaction fee. | 

