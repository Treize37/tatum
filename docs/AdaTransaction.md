# Tatum::AdaTransaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from_address** | [**Array&lt;AdaTransactionFromAddress&gt;**](AdaTransactionFromAddress.md) | Array of addresses and corresponding private keys. Tatum will automatically scan last unspent transactions for each address and will use all of the unspent values. We advise to use this option if you have 1 address per 1 transaction only. | [optional] 
**from_utxo** | [**Array&lt;AdaTransactionFromUTXO&gt;**](AdaTransactionFromUTXO.md) | Array of transaction hashes, index of UTXO in it and corresponding private keys. Use this option if you want to calculate amount to send manually. Either fromUTXO or fromAddress must be present. | [optional] 
**to** | [**Array&lt;AdaTransactionTo&gt;**](AdaTransactionTo.md) | Array of addresses and values to send Litecoins to. Values must be set in LTC. Difference between from and to is transaction fee. | 

