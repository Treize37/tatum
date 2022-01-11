# Tatum::LtcTransactionUTXO

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from_utxo** | [**Array&lt;BchTransactionFromUTXO&gt;**](BchTransactionFromUTXO.md) | Array of transaction hashes, index of UTXO in it and corresponding private keys. Use this option if you want to calculate amount to send manually. Either fromUTXO or fromAddress must be present. | 
**to** | [**Array&lt;LtcTransactionAddressTo&gt;**](LtcTransactionAddressTo.md) | Array of addresses and values to send Litecoins to. Values must be set in LTC. Difference between from and to is transaction fee. | 

