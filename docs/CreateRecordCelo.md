# Tatum::CreateRecordCelo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | **String** | Log data to be stored on a blockchain. | 
**chain** | **String** | Blockchain, where to store log data. | 
**fee_currency** | **String** | Currency to pay for transaction gas | 
**from_private_key** | **String** | Private key of account, from which the transaction will be initiated. If not present, transaction fee will be debited from Tatum internal account and additional credits will be charged. | [optional] 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to Ethereum transaction. If not present, last known nonce will be used. | [optional] 
**to** | **String** | Blockchain address to store log on. If not defined, it will be stored on an address, from which the transaction was being made. | [optional] 

