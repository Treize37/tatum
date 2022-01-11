# SwaggerClient::DogeTransactionUTXOKMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from_utxo** | [**Array&lt;DogeTransactionUTXOKMSFromUTXO&gt;**](DogeTransactionUTXOKMSFromUTXO.md) | Array of transaction hashes, index of UTXO in it and corresponding private keys. Use this option if you want to calculate amount to send manually. Either fromUTXO or fromAddress must be present. | 
**to** | [**Array&lt;DogeTransactionUTXOKMSTo&gt;**](DogeTransactionUTXOKMSTo.md) | Array of addresses and values to send Litecoins to. Values must be set in LTC. Difference between from and to is transaction fee. | 
**fee** | **String** | Fee to be paid in DOGE. | [optional] 
**change_address** | **String** | Address, where unspent funds will be transferred. | [optional] 

