# Tatum::BtcTransactionFromUTXOKMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from_utxo** | [**Array&lt;BtcTransactionFromUTXOKMSFromUTXO&gt;**](BtcTransactionFromUTXOKMSFromUTXO.md) | Array of transaction hashes, index of UTXO in it and corresponding private keys. Use this option if you want to calculate amount to send manually. Either fromUTXO or fromAddress must be present. | 
**to** | [**Array&lt;BtcTransactionFromAddressTo&gt;**](BtcTransactionFromAddressTo.md) | Array of addresses and values to send bitcoins to. Values must be set in BTC. Difference between from and to is transaction fee. | 

