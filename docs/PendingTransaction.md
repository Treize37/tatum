# SwaggerClient::PendingTransaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID of the pending transaction | 
**chain** | **String** | Blockchain of the transaction | 
**hashes** | **Array&lt;String&gt;** | List of the signature Ids to be used to sign transaction. Those hashes should be in order of signing for the BTC, LTC or BCH blockchains. | 
**serialized_transaction** | **String** | Serialized data of the transaction to be signed. It can be JSON, HEX or any other representation based on the blockchain. | 
**withdrawal_id** | **String** | ID of the pending off-chain withdrawal connected to this transaction | [optional] 
**index** | [**BigDecimal**](BigDecimal.md) | In case of mnemonic type of signature Id, this is the index to the specific account that should be used for signature. | [optional] 
**tx_id** | **String** | TX hash of successful transaction. | [optional] 
**withdrawal_responses** | [**Array&lt;ResponseData&gt;**](ResponseData.md) | Additional information used for BTC, LTC, DOGE and BCH off-chain to blockchain transactions. | [optional] 

