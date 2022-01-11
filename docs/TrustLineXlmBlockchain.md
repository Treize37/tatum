# Tatum::TrustLineXlmBlockchain

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from_account** | **String** | XLM account address. Must be the one used for generating deposit tags. | 
**issuer_account** | **String** | Blockchain address of the issuer of the assets to create trust line for. | 
**token** | **String** | Asset name. | 
**from_secret** | **String** | Secret for account. Secret, or signature Id must be present. | 
**limit** | **String** | Amount of the assets to be permitted to send over this trust line. 0 means deletion of the trust line. When no limit is specified, maximum amount available is permitted. | [optional] 

