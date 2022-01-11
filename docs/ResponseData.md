# Tatum::ResponseData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | [**Address**](Address.md) |  | [optional] 
**amount** | [**BigDecimal**](BigDecimal.md) | Amount of unprocessed transaction outputs, that can be used for withdrawal. Bitcoin, Litecoin, Bitcoin Cash only. | [optional] 
**v_in** | **String** | Last used unprocessed transaction output, that can be used. Bitcoin, Litecoin, Bitcoin Cash only. If -1, it indicates prepared vOut with amount to be transferred to pool address. | [optional] 
**v_in_index** | **Integer** | Index of last used unprocessed transaction output in raw transaction, that can be used. Bitcoin, Litecoin, Bitcoin Cash only. | [optional] 
**script_pub_key** | **String** | Script of last unprocessed UTXO. Bitcoin SV only. | [optional] 

