# SwaggerClient::TransferXrpBlockchainAssetKMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from_account** | **String** | XRP account address. Must be the one used for generating deposit tags. | 
**to** | **String** | Blockchain address to send assets | 
**amount** | **String** | Amount to be sent, in XRP. | 
**signature_id** | **String** | Identifier of the secret associated in signing application. Secret, or signature Id must be present. | 
**fee** | **String** | Fee to be paid, in XRP. If omitted, current fee will be calculated. | [optional] 
**source_tag** | **Integer** | Source tag of sender account, if any. | [optional] 
**destination_tag** | **Integer** | Destination tag of recipient account, if any. | [optional] 
**issuer_account** | **String** | Blockchain address of the issuer of the assets to create trust line for. | 
**token** | **String** | Asset name. Must be 160bit HEX string, e.g. SHA1. | 

