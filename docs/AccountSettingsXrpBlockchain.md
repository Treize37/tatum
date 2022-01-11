# SwaggerClient::AccountSettingsXrpBlockchain

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from_account** | **String** | XRP account address. Must be the one used for generating deposit tags. | 
**from_secret** | **String** | Secret for account. Secret, or signature Id must be present. | 
**fee** | **String** | Fee to be paid, in XRP. If omitted, current fee will be calculated. | [optional] 
**rippling** | **BOOLEAN** | Should be true, if an account is the issuer of assets. | [optional] 
**require_destination_tag** | **BOOLEAN** | Should be true, if an account should support off-chain processing. | [optional] 

