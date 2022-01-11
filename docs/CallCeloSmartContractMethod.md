# SwaggerClient::CallCeloSmartContractMethod

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contract_address** | **String** | Address of token | 
**method_name** | **String** | Name of the method to invoke on smart contract. | 
**method_abi** | **Object** | ABI of the method to invoke. | 
**params** | **Array&lt;String&gt;** | Parameters of the method to be invoked. | 
**amount** | **String** | Amount of the assets to be sent. | [optional] 
**from_private_key** | **String** | Private key of sender address. Private key, or signature Id must be present. | 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to transaction. If not present, last known nonce will be used. | [optional] 
**fee** | [**DeployErc20Fee**](DeployErc20Fee.md) |  | [optional] 
**fee_currency** | **String** | Currency to pay for transaction gas | 

