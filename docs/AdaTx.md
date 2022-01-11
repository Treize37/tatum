# Tatum::AdaTx

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hash** | **String** | Transaction hash. | [optional] 
**fee** | **String** | Fee paid for this transaction, in LTC. | [optional] 
**block** | [**BigDecimal**](BigDecimal.md) | Index of the block this transaction belongs to. | [optional] 
**included_at** | **String** | Time of the transaction. | [optional] 
**inputs** | [**Array&lt;AdaTxInputs&gt;**](AdaTxInputs.md) | List of transactions, from which assets are being sent. | [optional] 
**outputs** | [**Array&lt;AdaUTXO&gt;**](AdaUTXO.md) | List of recipient addresses and amounts to send to each of them. | [optional] 

