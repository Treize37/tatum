# SwaggerClient::BchTransactionKMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from_utxo** | [**Array&lt;BchTransactionKMSFromUTXO&gt;**](BchTransactionKMSFromUTXO.md) | Array of transaction hashes, index of UTXO in it and corresponding private keys. Use this option if you want to calculate amount to send manually. Either fromUTXO or fromAddress must be present. | 
**to** | [**Array&lt;BchTransactionTo&gt;**](BchTransactionTo.md) | Array of addresses and values to send bitcoins to. Values must be set in BCH. Difference between from and to is transaction fee. | 

