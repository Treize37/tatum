# SwaggerClient::TransferAda

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender_account_id** | **String** | Sender account ID | 
**address** | **String** | Blockchain address to send assets to. | 
**amount** | **String** | Amount to be withdrawn to blockchain. | 
**compliant** | **BOOLEAN** | Compliance check, if withdrawal is not compliant, it will not be processed. | [optional] 
**fee** | **String** | Fee to be submitted as a transaction fee to blockchain. If none is set, default value of 0.5 ADA is used. | [optional] 
**key_pair** | [**Array&lt;TransferAdaKeyPair&gt;**](TransferAdaKeyPair.md) | Array of assigned blockchain addresses with their private keys. Either mnemonic, keyPair or signature Id must be present - depends on the type of account and xpub. Tatum KMS does not support keyPair type of off-chain transaction, only mnemonic based.  | [optional] 
**attr** | **String** | Used to parametrize withdrawal as a change address for left coins from transaction. XPub or attr must be used. | [optional] 
**mnemonic** | **String** | Mnemonic seed - usually 12-24 words with access to whole wallet. Either mnemonic, keyPair or signature Id must be present - depends on the type of account and xpub. Tatum KMS does not support keyPair type of off-chain transaction, only mnemonic based.  | [optional] 
**signature_id** | **String** | Signature hash of the mnemonic, which will be used to sign transactions locally. All signature Ids should be present, which might be used to sign transaction. Tatum KMS does not support keyPair type of off-chain transaction, only mnemonic based.  | [optional] 
**xpub** | **String** | Extended public key (xpub) of the wallet associated with the accounts. Should be present, when mnemonic is used. | [optional] 
**payment_id** | **String** | Identifier of the payment, shown for created Transaction within Tatum sender account. | [optional] 
**sender_note** | **String** | Note visible to owner of withdrawing account | [optional] 

