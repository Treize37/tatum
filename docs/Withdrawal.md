# Tatum::Withdrawal

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender_account_id** | **String** | Sender account ID | 
**address** | **String** | Blockchain address to send assets to. For BTC, LTC, DOGE and BCH, it is possible to enter list of multiple recipient blockchain addresses as a comma separated string. | 
**amount** | **String** | Amount to be withdrawn to blockchain. | 
**attr** | **String** | &lt;p&gt;Used to parametrize withdrawal. Used for XRP withdrawal to define destination tag of recipient, or XLM memo of the recipient, if needed.&lt;br/&gt; For Bitcoin, Litecoin, Bitcoin Cash, used as a change address for left coins from transaction.&lt;/p&gt;  | [optional] 
**compliant** | **BOOLEAN** | Compliance check, if withdrawal is not compliant, it will not be processed. | [optional] 
**fee** | **String** | Fee to be submitted as a transaction fee to blockchain. | 
**multiple_amounts** | **Array&lt;String&gt;** | For BTC, LTC, DOGE and BCH, it is possible to enter list of multiple recipient blockchain amounts. List of recipient addresses must be present in the address field and total sum of amounts must be equal to the amount field. | [optional] 
**payment_id** | **String** | Identifier of the payment, shown for created Transaction within Tatum sender account. | [optional] 
**sender_note** | **String** | Note visible to owner of withdrawing account | [optional] 

