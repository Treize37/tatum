# Tatum::EstimateFeeFromUTXO

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | Blockchain to estimate fee for. | 
**type** | **String** | Type of transaction | 
**from_utxo** | [**Array&lt;EstimateFeeFromUTXOFromUTXO&gt;**](EstimateFeeFromUTXOFromUTXO.md) | Array of transaction hashes, index of UTXO in it and corresponding private keys. Use this option if you want to calculate amount to send manually. Either fromUTXO or fromAddress must be present. | 
**to** | [**Array&lt;BtcTransactionFromAddressTo&gt;**](BtcTransactionFromAddressTo.md) | Array of addresses and values to send bitcoins to. Values must be set in BTC. Difference between from and to is transaction fee. | 

