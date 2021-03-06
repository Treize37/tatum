# Tatum::TransferDogeMnemonic

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender_account_id** | **String** | Sender account ID | 
**address** | **String** | Blockchain address to send assets to. For BTC, LTC, DOGE and BCH, it is possible to enter list of multiple recipient blockchain addresses as a comma separated string. | 
**amount** | **String** | Amount to be withdrawn to blockchain. | 
**compliant** | **BOOLEAN** | Compliance check, if withdrawal is not compliant, it will not be processed. | [optional] 
**fee** | **String** | Fee to be submitted as a transaction fee to blockchain. If none is set, default value of 1 DOGE is used. | [optional] 
**multiple_amounts** | **Array&lt;String&gt;** | For BTC, LTC, DOGE and BCH, it is possible to enter list of multiple recipient blockchain amounts. List of recipient addresses must be present in the address field and total sum of amounts must be equal to the amount field. | [optional] 
**attr** | **String** | Used to parametrize withdrawal as a change address for left coins from transaction. XPub or attr must be used. | [optional] 
**mnemonic** | **String** | Mnemonic seed - usually 12-24 words with access to whole wallet. Either mnemonic, keyPair or signature Id must be present - depends on the type of account and xpub. Tatum KMS does not support keyPair type of off-chain transaction, only mnemonic based.  | 
**xpub** | **String** | Extended public key (xpub) of the wallet associated with the accounts. Should be present, when mnemonic is used. | 
**payment_id** | **String** | Identifier of the payment, shown for created Transaction within Tatum sender account. | [optional] 
**sender_note** | **String** | Note visible to owner of withdrawing account | [optional] 

