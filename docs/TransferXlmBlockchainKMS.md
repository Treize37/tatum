# SwaggerClient::TransferXlmBlockchainKMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from_account** | **String** | Blockchain account to send assets from | 
**to** | **String** | Blockchain address to send assets | 
**amount** | **String** | Amount to be sent, in XLM. | 
**signature_id** | **String** | Identifier of the secret associated in signing application. Secret, or signature Id must be present. | 
**initialize** | **BOOLEAN** | Set to true, if the destination address is not yet initialized and should be funded for the first time. | [optional] [default to false]
**message** | **String** | Short message to recipient. It can be either 28 characters long ASCII text, 64 characters long HEX string or uint64 number. | [optional] 

