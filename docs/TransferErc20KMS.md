# SwaggerClient::TransferErc20KMS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender_account_id** | **String** | Sender account ID | 
**address** | **String** | Blockchain address to send ERC20 token to | 
**amount** | **String** | Amount to be sent. | 
**compliant** | **BOOLEAN** | Compliance check, if withdrawal is not compliant, it will not be processed. | [optional] 
**currency** | **String** | ERC20 symbol. Required only for calls from Tatum Middleware. | [optional] 
**gas_limit** | **String** | Gas limit for transaction in gas price. If not set, automatic calculation will be used. | [optional] 
**gas_price** | **String** | Gas price in Gwei. If not set, automatic calculation will be used. | [optional] 
**signature_id** | **String** | Identifier of the mnemonic / private key associated in signing application. When hash identifies mnemonic, index must be present to represent specific account to pay from. Private key, mnemonic or signature Id must be present.  | 
**index** | **Integer** | Derivation index of sender address. | [optional] 
**nonce** | [**BigDecimal**](BigDecimal.md) | Nonce to be set to Ethereum transaction. If not present, last known nonce will be used. | [optional] 
**payment_id** | **String** | Identifier of the payment, shown for created Transaction within Tatum sender account. | [optional] 
**sender_note** | **String** | Note visible to owner of withdrawing account | [optional] 

