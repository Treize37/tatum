# SwaggerClient::FlowAccountKeys

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**index** | [**BigDecimal**](BigDecimal.md) | Index of the public key. | [optional] 
**public_key** | **String** |  | [optional] 
**sign_algo** | [**BigDecimal**](BigDecimal.md) | Type of signature algorithm. 2 - ECDSA_secp256k1 | [optional] 
**hash_algo** | [**BigDecimal**](BigDecimal.md) | Type of hash algo. 3 - SHA3_256 | [optional] 
**sequence_number** | [**BigDecimal**](BigDecimal.md) | Number of outgoing transactions for this public key. | [optional] 
**revoked** | **BOOLEAN** |  | [optional] 
**weight** | [**BigDecimal**](BigDecimal.md) | Weight of the key. 1000 means single signature necessary. | [optional] 

