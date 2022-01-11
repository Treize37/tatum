# Tatum::OffchainTransactionResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID of withdrawal. If transaction is not valid in blockchain, use this id to cancel withdrawal. | 
**tx_id** | **String** | TX hash of successful transaction. | 
**completed** | **BOOLEAN** | Whethet withdrawal was completed in Tatum&#x27;s internal ledger. If not, it must be done manually. | 

