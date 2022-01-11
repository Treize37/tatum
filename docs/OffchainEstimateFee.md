# Tatum::OffchainEstimateFee

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender_account_id** | **String** | Sender account ID | 
**address** | **String** | Blockchain address to send assets to. For BTC, LTC, DOGE and BCH, it is possible to enter list of multiple recipient blockchain addresses as a comma separated string. | 
**amount** | **String** | Amount to be withdrawn to blockchain. | 
**multiple_amounts** | **Array&lt;String&gt;** | For BTC, LTC, DOGE and BCH, it is possible to enter list of multiple recipient blockchain amounts. List of recipient addresses must be present in the address field and total sum of amounts must be equal to the amount field. | [optional] 
**attr** | **String** | Used to parametrize withdrawal as a change address for left coins from transaction. XPub or attr must be used. | [optional] 
**xpub** | **String** | Extended public key (xpub) of the wallet associated with the accounts. | [optional] 

