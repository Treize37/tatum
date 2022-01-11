# Tatum::Account

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Account ID. | 
**balance** | [**AccountBalance**](AccountBalance.md) |  | 
**currency** | **String** | Currency of account. | 
**frozen** | **BOOLEAN** | Indicates whether account is frozen or not. | 
**active** | **BOOLEAN** | Indicates whether account is active or not. | 
**customer_id** | **String** | ID of newly created customer or existing customer associated with account. | [optional] 
**account_code** | **String** | For bookkeeping to distinct account purpose. | [optional] 
**xpub** | **String** | Extended public key to generate addresses from. | [optional] 

