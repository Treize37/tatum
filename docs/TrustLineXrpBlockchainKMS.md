# Tatum::TrustLineXrpBlockchainKMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from_account** | **String** | XRP account address. Must be the one used for generating deposit tags. | 
**issuer_account** | **String** | Blockchain address of the issuer of the assets to create trust line for. | 
**limit** | **String** | Amount of the assets to be permitted to send over this trust line. 0 means deletion of the trust line. | 
**token** | **String** | Asset name. Must be 160bit HEX string, e.g. SHA1. | 
**signature_id** | **String** | Identifier of the secret associated in signing application. Secret, or signature Id must be present. | 
**fee** | **String** | Fee to be paid, in XRP. If omitted, current fee will be calculated. | [optional] 

