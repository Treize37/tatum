# SwaggerClient::OffChainBlockchainApi

All URIs are relative to *https://api-eu1.tatum.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ada_transfer_offchain**](OffChainBlockchainApi.md#ada_transfer_offchain) | **POST** /v3/offchain/ada/transfer | Send ADA from Tatum ledger to blockchain
[**algo_deploy_erc20_ledger**](OffChainBlockchainApi.md#algo_deploy_erc20_ledger) | **POST** /v3/offchain/algo/erc20/deploy | Deploy Algo ERC20 to Blockchain and Ledger
[**algo_transfer**](OffChainBlockchainApi.md#algo_transfer) | **POST** /v3/offchain/algorand/transfer | Send ALGO or Erc20 from Tatum ledger to blockchain
[**bch_transfer**](OffChainBlockchainApi.md#bch_transfer) | **POST** /v3/offchain/bcash/transfer | Send Bitcoin Cash from Tatum account to address
[**bnb_asset_offchain**](OffChainBlockchainApi.md#bnb_asset_offchain) | **POST** /v3/offchain/bnb/asset | Create BNB based Asset
[**bnb_transfer**](OffChainBlockchainApi.md#bnb_transfer) | **POST** /v3/offchain/bnb/transfer | Send BNB from Tatum ledger to blockchain
[**bsc_deploy_bep20**](OffChainBlockchainApi.md#bsc_deploy_bep20) | **POST** /v3/offchain/bsc/bep20/deploy | Deploy BSC BEP20 Smart Contract to Blockchain and Ledger
[**bsc_or_bep_transfer**](OffChainBlockchainApi.md#bsc_or_bep_transfer) | **POST** /v3/offchain/bsc/transfer | Send BSC or BEP20 from Tatum ledger to blockchain
[**btc_transfer**](OffChainBlockchainApi.md#btc_transfer) | **POST** /v3/offchain/bitcoin/transfer | Send Bitcoin from Tatum account to address
[**celo_deploy_erc20_ledger**](OffChainBlockchainApi.md#celo_deploy_erc20_ledger) | **POST** /v3/offchain/celo/erc20/deploy | Deploy Celo ERC-20 Smart Contract to Blockchain and Ledger
[**celo_or_erc20_transfer**](OffChainBlockchainApi.md#celo_or_erc20_transfer) | **POST** /v3/offchain/celo/transfer | Send Celo, cUSD, cEUR or ERC-20 from Tatum ledger to blockchain
[**create_bep20**](OffChainBlockchainApi.md#create_bep20) | **POST** /v3/offchain/bsc/bep20 | Register new BEP20 token in the ledger
[**create_celo_erc20**](OffChainBlockchainApi.md#create_celo_erc20) | **POST** /v3/offchain/celo/erc20 | Register new Celo ERC-20 token in the ledger
[**create_erc20**](OffChainBlockchainApi.md#create_erc20) | **POST** /v3/offchain/ethereum/erc20 | Register new ERC20 token in the ledger
[**create_hrm20**](OffChainBlockchainApi.md#create_hrm20) | **POST** /v3/offchain/one/hrm20 | Register new ONE HRM20 token in the ledger
[**create_trc**](OffChainBlockchainApi.md#create_trc) | **POST** /v3/offchain/tron/trc | Register new TRC-10/20 token in the ledger
[**create_xdc20**](OffChainBlockchainApi.md#create_xdc20) | **POST** /v3/offchain/xdc/erc20 | Register new XDC ERC20 token in the ledger
[**doge_transfer**](OffChainBlockchainApi.md#doge_transfer) | **POST** /v3/offchain/dogecoin/transfer | Send Dogecoin from Tatum account to address
[**egld_transfer**](OffChainBlockchainApi.md#egld_transfer) | **POST** /v3/offchain/egld/transfer | Send EGLD from Tatum ledger to blockchain
[**eth_deploy_erc20**](OffChainBlockchainApi.md#eth_deploy_erc20) | **POST** /v3/offchain/ethereum/erc20/deploy | Deploy Ethereum ERC20 Smart Contract to Blockchain and Ledger
[**eth_transfer**](OffChainBlockchainApi.md#eth_transfer) | **POST** /v3/offchain/ethereum/transfer | Send Ethereum from Tatum ledger to blockchain
[**eth_transfer_erc20**](OffChainBlockchainApi.md#eth_transfer_erc20) | **POST** /v3/offchain/ethereum/erc20/transfer | Transfer Ethereum ERC20 from Tatum ledger to blockchain
[**flow_transfer**](OffChainBlockchainApi.md#flow_transfer) | **POST** /v3/offchain/flow/transfer | Send Flow or FUSD from Tatum account to address
[**kcs_deploy_erc20_ledger**](OffChainBlockchainApi.md#kcs_deploy_erc20_ledger) | **POST** /v3/offchain/kcs/erc20/deploy | Deploy Kcs ERC20 Smart Contract to Blockchain and Ledger
[**kcs_transfer**](OffChainBlockchainApi.md#kcs_transfer) | **POST** /v3/offchain/kcs/transfer | Send KCS from Tatum ledger to blockchain
[**ltc_transfer**](OffChainBlockchainApi.md#ltc_transfer) | **POST** /v3/offchain/litecoin/transfer | Send Litecoin from Tatum account to address
[**offchain_estimate_fee**](OffChainBlockchainApi.md#offchain_estimate_fee) | **POST** /v3/offchain/blockchain/estimate | Estimate ledger to blockchain transaction fee
[**one_deploy_hrm20**](OffChainBlockchainApi.md#one_deploy_hrm20) | **POST** /v3/offchain/one/hrm20/deploy | Deploy ONE HRM20 Smart Contract to Blockchain and Ledger
[**one_transfer**](OffChainBlockchainApi.md#one_transfer) | **POST** /v3/offchain/one/transfer | Send ONE or HRM-20 from Tatum ledger to blockchain
[**polygon_transfer**](OffChainBlockchainApi.md#polygon_transfer) | **POST** /v3/offchain/polygon/transfer | Send MATIC from Tatum ledger to blockchain
[**register_erc20_token**](OffChainBlockchainApi.md#register_erc20_token) | **POST** /v3/offchain/token/{chain} | Register new token in the ledger
[**store_celo_erc20_address**](OffChainBlockchainApi.md#store_celo_erc20_address) | **POST** /v3/offchain/celo/erc20/{name}/{address} | Set Celo ERC-20 token contract address
[**store_token_address**](OffChainBlockchainApi.md#store_token_address) | **POST** /v3/offchain/token/{name}/{address} | Set ERC20/BEP20/HRM20/TRC20 token contract address
[**store_trc_address**](OffChainBlockchainApi.md#store_trc_address) | **POST** /v3/offchain/tron/trc/{name}/{address} | Set TRC token contract address
[**tron_deploy_trc**](OffChainBlockchainApi.md#tron_deploy_trc) | **POST** /v3/offchain/tron/trc/deploy | Deploy Tron TRC-10/20 Smart Contract to Blockchain and Ledger
[**tron_transfer_offchain**](OffChainBlockchainApi.md#tron_transfer_offchain) | **POST** /v3/offchain/tron/transfer | Send Tron or TRC asset from Tatum ledger to blockchain
[**xdc_deploy_erc20**](OffChainBlockchainApi.md#xdc_deploy_erc20) | **POST** /v3/offchain/xdc/erc20/deploy | Deploy XDC ERC20 Smart Contract to Blockchain and Ledger
[**xdc_transfer**](OffChainBlockchainApi.md#xdc_transfer) | **POST** /v3/offchain/xdc/transfer | Send XDC or ERC-20 from Tatum ledger to blockchain
[**xlm_asset_offchain**](OffChainBlockchainApi.md#xlm_asset_offchain) | **POST** /v3/offchain/xlm/asset | Create XLM based Asset
[**xlm_transfer**](OffChainBlockchainApi.md#xlm_transfer) | **POST** /v3/offchain/xlm/transfer | Send XLM / Asset from Tatum ledger to blockchain
[**xrp_asset_offchain**](OffChainBlockchainApi.md#xrp_asset_offchain) | **POST** /v3/offchain/xrp/asset | Create XRP based Asset
[**xrp_transfer**](OffChainBlockchainApi.md#xrp_transfer) | **POST** /v3/offchain/xrp/transfer | Send XRP from Tatum ledger to blockchain

# **ada_transfer_offchain**
> InlineResponse20019 ada_transfer_offchain(body)

Send ADA from Tatum ledger to blockchain

<h4>10 credits per API call.</h4><br/><p>Send ADA asset from Tatum Ledger to account. This will create Tatum internal withdrawal request with ID. If every system works as expected, withdrawal request is marked as complete and transaction id is assigned to it. <ul> <li>If ADA server connection is unavailable, withdrawal request is cancelled.</li> <li>If blockchain transfer is successful, but is it not possible to reach Tatum, transaction id of blockchain transaction is returned and withdrawal request must be completed manually, otherwise all other withdrawals will be pending.</li> </ul> It is possible to perform ledger to blockchain transaction for ledger accounts without blockchain address assigned to them.<br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and losing funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::AdaTransferBody.new # AdaTransferBody | 


begin
  #Send ADA from Tatum ledger to blockchain
  result = api_instance.ada_transfer_offchain(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->ada_transfer_offchain: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AdaTransferBody**](AdaTransferBody.md)|  | 

### Return type

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **algo_deploy_erc20_ledger**
> InlineResponse20021 algo_deploy_erc20_ledger(body)

Deploy Algo ERC20 to Blockchain and Ledger

<h4>4 credits per API call.</h4><br/> <p>Deploy Algorand ERC20 Smart Contract. This is a helper method, which is combination of <a href=\"#operation/createErc20\">Register new Algorand ERC20 token in the ledger</a> and <a href=\"#operation/AlgoDeployErc20Blockchain\">Deploy blockchain ERC-20</a>.<br/> <br/> <br/> After deploying a contract to blockchain, the contract address will become available and must be stored within Tatum. Otherwise, it will not be possible to interact with it and starts automatic blockchain synchronization.<br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and losing funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::Erc20DeployBody4.new # Erc20DeployBody4 | 


begin
  #Deploy Algo ERC20 to Blockchain and Ledger
  result = api_instance.algo_deploy_erc20_ledger(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->algo_deploy_erc20_ledger: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Erc20DeployBody4**](Erc20DeployBody4.md)|  | 

### Return type

[**InlineResponse20021**](InlineResponse20021.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **algo_transfer**
> InlineResponse20019 algo_transfer(body)

Send ALGO or Erc20 from Tatum ledger to blockchain

<h4>4 credits per API call.</h4><br/> <p>Send ALGO or Erc20 from Tatum Ledger to account. This will create Tatum internal withdrawal request with ID. If every system works as expected, withdrawal request is marked as complete and transaction id is assigned to it. <br/> <br/> <ul> <li>If server connection is unavailable, withdrawal request is cancelled.</li> <li>If blockchain transfer is successful, but is it not possible to reach Tatum, transaction id of blockchain transaction is returned and withdrawal request must be completed manually, otherwise all other withdrawals will be pending.</li> </ul> It is possible to perform ledger to blockchain transaction for ledger accounts without blockchain address assigned to them.<br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and losing funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. Before transfer Algorand Erc20, you need to do zero transfer for preparing to be enable receive the token on recepient. </p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::AlgorandTransferBody.new # AlgorandTransferBody | 


begin
  #Send ALGO or Erc20 from Tatum ledger to blockchain
  result = api_instance.algo_transfer(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->algo_transfer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AlgorandTransferBody**](AlgorandTransferBody.md)|  | 

### Return type

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **bch_transfer**
> InlineResponse20019 bch_transfer(body)

Send Bitcoin Cash from Tatum account to address

<h4>10 credits per API call.</h4><br/> <p>Send Bitcoin Cash from Tatum account to address. This will create Tatum internal withdrawal request with ID. If every system works as expected, withdrawal request is marked as complete and transaction id is assigned to it. <ul> <li>If Bitcoin Cash server connection is unavailable, withdrawal request is cancelled.</li> <li>If blockchain transfer is successful, but is it not possible to reach Tatum, transaction id of blockchain transaction is returned and withdrawal request must be completed manually, otherwise all other withdrawals will be pending.</li> </ul> There are two possibilites how the transaction on the blockchain can be created: <ul> <li>Using mnemonic - all of the addresses, that are generated from the mnemonic are scanned for the incoming deposits which are used as a source of the transaction. Assets, which are not used in a transaction are moved to the system address wih the derivation index 0. Address with index 0 cannot be assigned automatically to any account and is used for custodial wallet use cases. For non-custodial wallets, field <b>attr</b> should be present and it should be address with the index 1 of the connected wallet.</li> <li>Using keyPair - addresses which are used as a source of the transaction are entered manually</li> </ul> It is possible to perform ledger to blockchain transaction for ledger accounts without blockchain address assigned to them.<br/> This method is a helper method, which internally wraps these steps: <ol> <li><a href=\"#operation/storeWithdrawal\">Store withdrawal</a> - create a ledger transaction, which debits the assets on the sender account.</li> <li><a href=\"#operation/BchTransferBlockchain\">Perform blockchain transaction</a> - </li> <li><a href=\"#operation/completeWithdrawal\">Complete withdrawal</a> - move the withdrawal to the completed state, when all of the previous steps were successful.</li> </ol> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and losing funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages.</p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::BcashTransferBody.new # BcashTransferBody | 


begin
  #Send Bitcoin Cash from Tatum account to address
  result = api_instance.bch_transfer(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->bch_transfer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BcashTransferBody**](BcashTransferBody.md)|  | 

### Return type

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **bnb_asset_offchain**
> bnb_asset_offchain(body)

Create BNB based Asset

<h4>2 credits per API call.</h4><br/><p> <p>Create BNB-based Asset in Tatum Ledger. Asset must be created and configured on Binance blockhain before. Please see <a href=\"https://docs.binance.org/tokens.html\" targer=\"_blank\">Create Asset</a>. This API call will create Tatum internal Virtual Currency. It is possible to create Tatum ledger accounts with off-chain support. </p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::CreateBnbAsset.new # CreateBnbAsset | 


begin
  #Create BNB based Asset
  api_instance.bnb_asset_offchain(body)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->bnb_asset_offchain: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateBnbAsset**](CreateBnbAsset.md)|  | 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **bnb_transfer**
> InlineResponse20019 bnb_transfer(body)

Send BNB from Tatum ledger to blockchain

<h4>10 credits per API call.</h4><br/><p> <p>Send BNB or BNB Asset from account to account. This will create Tatum internal withdrawal request with ID. When every system works as expected, withdrawal request is marked as complete and transaction id is assigned to it. <ul> <li>If BNB server connection is unavailable, withdrawal request is cancelled.</li> <li>If blockchain transfer is successful, but is it not possible to reach Tatum, transaction id of blockchain transaction is returned and withdrawal request must be completed manually, otherwise all other withdrawals will be pending.</li> </ul> It is possible to perform ledger to blockchain transaction for ledger accounts without blockchain address assigned to them.<br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and losing funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::BnbTransferBody.new # BnbTransferBody | 


begin
  #Send BNB from Tatum ledger to blockchain
  result = api_instance.bnb_transfer(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->bnb_transfer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BnbTransferBody**](BnbTransferBody.md)|  | 

### Return type

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **bsc_deploy_bep20**
> InlineResponse20020 bsc_deploy_bep20(body)

Deploy BSC BEP20 Smart Contract to Blockchain and Ledger

<h4>4 credits per API call.</h4><br/> <p>Deploy BSC BEP20 Smart Contract. This is a helper method, which is combination of <a href=\"#operation/createBep20\">Register new BEP20 token in the ledger</a> and <a href=\"#operation/BscDeployBep20Blockchain\">Deploy blockchain BEP20</a>.<br/> <br/> <br/> After deploying a contract to blockchain, the contract address will become available and must be stored within Tatum. Otherwise, it will not be possible to interact with it and starts automatic blockchain synchronization.<br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and losing funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::Bep20DeployBody.new # Bep20DeployBody | 


begin
  #Deploy BSC BEP20 Smart Contract to Blockchain and Ledger
  result = api_instance.bsc_deploy_bep20(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->bsc_deploy_bep20: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Bep20DeployBody**](Bep20DeployBody.md)|  | 

### Return type

[**InlineResponse20020**](InlineResponse20020.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **bsc_or_bep_transfer**
> InlineResponse20019 bsc_or_bep_transfer(body)

Send BSC or BEP20 from Tatum ledger to blockchain

<h4>4 credits per API call.</h4><br/> <p>Send BSC or BEP20 from Tatum Ledger to account. This will create Tatum internal withdrawal request with ID. If every system works as expected, withdrawal request is marked as complete and transaction id is assigned to it. <br/> <br/> <ul> <li>If BSC server connection is unavailable, withdrawal request is cancelled.</li> <li>If blockchain transfer is successful, but is it not possible to reach Tatum, transaction id of blockchain transaction is returned and withdrawal request must be completed manually, otherwise all other withdrawals will be pending.</li> </ul> It is possible to perform ledger to blockchain transaction for ledger accounts without blockchain address assigned to them.<br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and losing funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::BscTransferBody.new # BscTransferBody | 


begin
  #Send BSC or BEP20 from Tatum ledger to blockchain
  result = api_instance.bsc_or_bep_transfer(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->bsc_or_bep_transfer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BscTransferBody**](BscTransferBody.md)|  | 

### Return type

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **btc_transfer**
> InlineResponse20019 btc_transfer(body)

Send Bitcoin from Tatum account to address

<h4>2 credits per API call.</h4><br/> <p>Send Bitcoin from Tatum account to address. This will create Tatum internal withdrawal request with ID. If every system works as expected, withdrawal request is marked as complete and transaction id is assigned to it. <ul> <li>If Bitcoin server connection is unavailable, withdrawal request is cancelled.</li> <li>If blockchain transfer is successful, but is it not possible to reach Tatum, transaction id of blockchain transaction is returned and withdrawal request must be completed manually, otherwise all other withdrawals will be pending.</li> </ul> There are two possibilites how the transaction on the blockchain can be created: <ul> <li>Using mnemonic - all of the addresses, that are generated from the mnemonic are scanned for the incoming deposits which are used as a source of the transaction. Assets, which are not used in a transaction are moved to the system address wih the derivation index 0. Address with index 0 cannot be assigned automatically to any account and is used for custodial wallet use cases. For non-custodial wallets, field <b>attr</b> should be present and it should be address with the index 1 of the connected wallet.</li> <li>Using keyPair - addresses which are used as a source of the transaction are entered manually</li> </ul> It is possible to perform ledger to blockchain transaction for ledger accounts without blockchain address assigned to them.<br/> This method is a helper method, which internally wraps these steps: <ol> <li><a href=\"#operation/storeWithdrawal\">Store withdrawal</a> - create a ledger transaction, which debits the assets on the sender account.</li> <li><a href=\"#operation/BtcTransferBlockchain\">Perform blockchain transaction</a> - </li> <li><a href=\"#operation/completeWithdrawal\">Complete withdrawal</a> - move the withdrawal to the completed state, when all of the previous steps were successful.</li> </ol> When some of the steps fails, <a href=\"#operation/cancelInProgressWithdrawal\">Cancel withdrawal</a> operation is used, which cancels withdrawal and creates refund transaction to the sender account.</li> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and losing funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages.</p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::BitcoinTransferBody.new # BitcoinTransferBody | 


begin
  #Send Bitcoin from Tatum account to address
  result = api_instance.btc_transfer(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->btc_transfer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BitcoinTransferBody**](BitcoinTransferBody.md)|  | 

### Return type

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **celo_deploy_erc20_ledger**
> InlineResponse20020 celo_deploy_erc20_ledger(body)

Deploy Celo ERC-20 Smart Contract to Blockchain and Ledger

<h4>4 credits per API call.</h4><br/> <p>Deploy Celo ERC-20 Smart Contract. This is a helper method, which is combination of <a href=\"#operation/createCeloErc20\">Register new Celo ERC-20 token in the ledger</a> and <a href=\"#operation/CeloDeployErc20\">Deploy blockchain ERC-20</a>.<br/> <br/> <br/> After deploying a contract to blockchain, the contract address will become available and must be stored within Tatum. Otherwise, it will not be possible to interact with it and starts automatic blockchain synchronization.<br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and losing funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::Erc20DeployBody2.new # Erc20DeployBody2 | 


begin
  #Deploy Celo ERC-20 Smart Contract to Blockchain and Ledger
  result = api_instance.celo_deploy_erc20_ledger(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->celo_deploy_erc20_ledger: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Erc20DeployBody2**](Erc20DeployBody2.md)|  | 

### Return type

[**InlineResponse20020**](InlineResponse20020.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **celo_or_erc20_transfer**
> InlineResponse20019 celo_or_erc20_transfer(body)

Send Celo, cUSD, cEUR or ERC-20 from Tatum ledger to blockchain

<h4>4 credits per API call.</h4><br/> <p>Send Celo or ERC-20 from Tatum Ledger to account. This will create Tatum internal withdrawal request with ID. If every system works as expected, withdrawal request is marked as complete and transaction id is assigned to it. <br/> <br/> <ul> <li>If Celo server connection is unavailable, withdrawal request is cancelled.</li> <li>If blockchain transfer is successful, but is it not possible to reach Tatum, transaction id of blockchain transaction is returned and withdrawal request must be completed manually, otherwise all other withdrawals will be pending.</li> </ul> It is possible to perform ledger to blockchain transaction for ledger accounts without blockchain address assigned to them.<br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and losing funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::CeloTransferBody.new # CeloTransferBody | 


begin
  #Send Celo, cUSD, cEUR or ERC-20 from Tatum ledger to blockchain
  result = api_instance.celo_or_erc20_transfer(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->celo_or_erc20_transfer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CeloTransferBody**](CeloTransferBody.md)|  | 

### Return type

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_bep20**
> Erc20Response create_bep20(body)

Register new BEP20 token in the ledger

<h4>2 credits per API call.</h4><br/> <p>This method is deprecated. Use <a href=\"#operation/registerErc20Token\">Register token</a> instead.</p> <p>First step to create new BEP20 token with given supply on BSC blockchain with support of Tatum's private ledger.<br/> <br/> <br/> This method only creates Tatum Private ledger virtual currency with predefined parameters. It will not generate any blockchain smart contract.<br/> The whole supply of BEP20 token is stored in the customer's newly created account. Then it is possible to create new Tatum accounts with BEP20 token name as account's currency.<br/> Newly created account is frozen until the specific BEP20 smart contract address is linked with the Tatum virtual currency, representing the token.<br/> Order of the steps to create BEP20 smart contract with Tatum private ledger support: <ol> <li><a href=\"#operation/registerErc20Token\">Register BEP20 token</a> - creates a virtual currency within Tatum</li> <li><a href=\"#operation/BscDeployErc20Blockchain\">Deploy BEP20 smart contract</a> - create new BEP20 smart contract on the blockchain</li> <li><a href=\"#operation/storeTokenAddress\">Store BEP20 smart contract address</a> - link newly created BEP20 smart contract address with Tatum virtual currency - this operation enables frozen account and enables ledger synchronization for BEP20 Tatum accounts</li> </ol> There is a helper method <a href=\"#operation/EthDeployErc20\">Deploy BSC BEP20 Smart Contract to Blockchain and Ledger</a>, which wraps first 2 steps into 1 method.<br/> Address on the blockchain, where all initial supply will be transferred, can be defined via the address or xpub and derivationIndex. When xpub is present, the account connected to this virtualCurrency will be set as the account's xpub. </p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::BscBep20Body.new # BscBep20Body | 


begin
  #Register new BEP20 token in the ledger
  result = api_instance.create_bep20(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->create_bep20: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BscBep20Body**](BscBep20Body.md)|  | 

### Return type

[**Erc20Response**](Erc20Response.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_celo_erc20**
> Erc20Response create_celo_erc20(body)

Register new Celo ERC-20 token in the ledger

<h4>2 credits per API call.</h4><br/> <p>This method is deprecated. Use <a href=\"#operation/registerErc20Token\">Register token</a> instead.</p> <p>First step to create new ERC-20 token with given supply on Celo blockchain with support of Tatum's private ledger.<br/> <br/> <br/> This method only creates Tatum Private ledger virtual currency with predefined parameters. It will not generate any blockchain smart contract.<br/> The whole supply of ERC-20 token is stored in the customer's newly created account. Then it is possible to create new Tatum accounts with ERC-20 token name as account's currency.<br/> Newly created account is frozen until the specific ERC-20 smart contract address is linked with the Tatum virtual currency, representing the token.<br/> Order of the steps to create ERC-20 smart contract with Tatum private ledger support: <ol> <li><a href=\"#operation/registerErc20Token\">Register Celo ERC-20 token</a> - creates a virtual currency within Tatum</li> <li><a href=\"#operation/CeloDeployErc20\">Deploy Celo ERC-20 smart contract</a> - create new ERC-20 smart contract on the blockchain</li> <li><a href=\"#operation/storeTokenAddress\">Store Celo ERC-20 smart contract address</a> - link newly created ERC-20 smart contract address with Tatum virtual currency - this operation enables frozen account and enables ledger synchronization for ERC-20 Tatum accounts</li> </ol> There is a helper method <a href=\"#operation/CeloDeployErc20Ledger\">Deploy Celo ERC-20 Smart Contract to Blockchain and Ledger</a>, which wraps first 2 steps into 1 method.<br/> Address on the blockchain, where all initial supply will be transferred, can be defined via the address or xpub and derivationIndex. When xpub is present, the account connected to this virtualCurrency will be set as the account's xpub. </p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::CeloErc20Body.new # CeloErc20Body | 


begin
  #Register new Celo ERC-20 token in the ledger
  result = api_instance.create_celo_erc20(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->create_celo_erc20: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CeloErc20Body**](CeloErc20Body.md)|  | 

### Return type

[**Erc20Response**](Erc20Response.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_erc20**
> Erc20Response create_erc20(body)

Register new ERC20 token in the ledger

<h4>2 credits per API call.</h4><br/> <p>This method is deprecated. Use <a href=\"#operation/registerErc20Token\">Register token</a> instead.</p> <p>First step to create new ERC20 token with given supply on Ethereum blockchain with support of Tatum's private ledger.<br/> This method only creates Tatum Private ledger virtual currency with predefined parameters. It will not generate any blockchain smart contract.<br/> The whole supply of ERC20 token is stored in the customer's newly created account. Then it is possible to create new Tatum accounts with ERC20 token name as account's currency.<br/> Newly created account is frozen until the specific ERC20 smart contract address is linked with the Tatum virtual currency, representing the token.<br/> Order of the steps to create ERC20 smart contract with Tatum private ledger support: <ol> <li><a href=\"#operation/registerErc20Token\">Create ERC20 token</a> - creates a virtual currency within Tatum</li> <li><a href=\"#operation/EthDeployErc20Blockchain\">Deploy ERC20 smart contract</a> - create new ERC20 smart contract on the blockchain</li> <li><a href=\"#operation/storeTokenAddress\">Store ERC20 smart contract address</a> - link newly created ERC20 smart contract address with Tatum virtual currency - this operation enables frozen account and enables ledger synchronization for ERC20 Tatum accounts</li> </ol> There is a helper method <a href=\"#operation/EthDeployErc20\">Deploy Ethereum ERC20 Smart Contract to Blockchain and Ledger</a>, which wraps first 2 steps into 1 method.<br/> Address on the blockchain, where all initial supply will be transferred, can be defined via the address or xpub and derivationIndex. When xpub is present, the account connected to this virtualCurrency will be set as the account's xpub. </p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::EthereumErc20Body.new # EthereumErc20Body | 


begin
  #Register new ERC20 token in the ledger
  result = api_instance.create_erc20(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->create_erc20: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EthereumErc20Body**](EthereumErc20Body.md)|  | 

### Return type

[**Erc20Response**](Erc20Response.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_hrm20**
> Erc20Response create_hrm20(body)

Register new ONE HRM20 token in the ledger

<h4>2 credits per API call.</h4><br/> <p>This method is deprecated. Use <a href=\"#operation/registerErc20Token\">Register token</a> instead.</p> <p>First step to create new HRM20 token with given supply on ONE blockchain with support of Tatum's private ledger.<br/> <br/> <br/> This method only creates Tatum Private ledger virtual currency with predefined parameters. It will not generate any blockchain smart contract.<br/> The whole supply of HRM20 token is stored in the customer's newly created account. Then it is possible to create new Tatum accounts with HRM20 token name as account's currency.<br/> Newly created account is frozen until the specific HRM20 smart contract address is linked with the Tatum virtual currency, representing the token.<br/> Order of the steps to create HRM20 smart contract with Tatum private ledger support: <ol> <li><a href=\"#operation/registerErc20Token\">Register HRM20 token</a> - creates a virtual currency within Tatum</li> <li><a href=\"#operation/Erc20Deploy\">Deploy HRM20 smart contract</a> - create new HRM20 smart contract on the blockchain</li> <li><a href=\"#operation/storeTokenAddress\">Store HRM20 smart contract address</a> - link newly created HRM20 smart contract address with Tatum virtual currency - this operation enables frozen account and enables ledger synchronization for HRM20 Tatum accounts</li> </ol> There is a helper method <a href=\"#operation/Erc20Deploy\">Deploy ONE HRM20 Smart Contract to Blockchain and Ledger</a>, which wraps first 2 steps into 1 method.<br/> Address on the blockchain, where all initial supply will be transferred, can be defined via the address or xpub and derivationIndex. When xpub is present, the account connected to this virtualCurrency will be set as the account's xpub. </p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::OneHrm20Body.new # OneHrm20Body | 


begin
  #Register new ONE HRM20 token in the ledger
  result = api_instance.create_hrm20(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->create_hrm20: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**OneHrm20Body**](OneHrm20Body.md)|  | 

### Return type

[**Erc20Response**](Erc20Response.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_trc**
> Erc20Response create_trc(body)

Register new TRC-10/20 token in the ledger

<h4>10 credits per API call.</h4><br/> <p>First step to create new TRC 10/20 token with given supply on the Tron blockchain with support of Tatum's private ledger.<br/> This method only creates Tatum Private ledger virtual currency with predefined parameters. It will not generate any blockchain smart contract.<br/> The whole supply of TRC 10/20 token is stored in the customer's newly created account. Then it is possible to create new Tatum accounts with TRC 10/20 token name as account's currency.<br/> Newly created account is frozen until the specific TRC 10/20 smart contract address is linked with the Tatum virtual currency, representing the token.<br/> Order of the steps to create TRC 10/20 smart contract with Tatum private ledger support: <ol> <li><a href=\"#operation/createTrc\">Create TRC 10/20 token</a> - creates a virtual currency within Tatum</li> <li><a href=\"#operation/TronCreateTrc20\">Deploy TRC 10</a> or <a href=\"#operation/TronCreateTrc10\">TRC 20 smart contract</a> - create new TRC 10/20 smart contract on the blockchain</li> <li><a href=\"#operation/storeTrcAddress\">Store TRC 10/20 smart contract address</a> - link newly created TRC 10/20 smart contract address with Tatum virtual currency - this operation enables frozen account and enables ledger synchronization for TRC 10/20 Tatum accounts</li> </ol> There is a helper method <a href=\"#operation/TronDeployTrc\">Deploy TRC 10/20 Smart Contract to Blockchain and Ledger</a>, which wraps first 2 steps into 1 method.<br/> Address on the blockchain, where all initial supply will be transferred, can be defined via the address or xpub and derivationIndex. When xpub is present, the account connected to this virtualCurrency will be set as the account's xpub. </p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::Trc.new # Trc | 


begin
  #Register new TRC-10/20 token in the ledger
  result = api_instance.create_trc(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->create_trc: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Trc**](Trc.md)|  | 

### Return type

[**Erc20Response**](Erc20Response.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_xdc20**
> Erc20Response create_xdc20(body)

Register new XDC ERC20 token in the ledger

<h4>2 credits per API call.</h4><br/> <p>This method is deprecated. Use <a href=\"#operation/registerErc20Token\">Register token</a> instead.</p> <p>First step to create new ERC20 token with given supply on XDC blockchain with support of Tatum's private ledger.<br/> <br/> <br/> This method only creates Tatum Private ledger virtual currency with predefined parameters. It will not generate any blockchain smart contract.<br/> The whole supply of ERC20 token is stored in the customer's newly created account. Then it is possible to create new Tatum accounts with ERC20 token name as account's currency.<br/> Newly created account is frozen until the specific ERC20 smart contract address is linked with the Tatum virtual currency, representing the token.<br/> Order of the steps to create ERC20 smart contract with Tatum private ledger support: <ol> <li><a href=\"#operation/registerErc20Token\">Register ERC20 token</a> - creates a virtual currency within Tatum</li> <li><a href=\"#operation/Erc20Deploy\">Deploy ERC20 smart contract</a> - create new ERC20 smart contract on the blockchain</li> <li><a href=\"#operation/storeTokenAddress\">Store ERC20 smart contract address</a> - link newly created ERC20 smart contract address with Tatum virtual currency - this operation enables frozen account and enables ledger synchronization for ERC20 Tatum accounts</li> </ol> There is a helper method <a href=\"#operation/Erc20Deploy\">Deploy XDC ERC20 Smart Contract to Blockchain and Ledger</a>, which wraps first 2 steps into 1 method.<br/> Address on the blockchain, where all initial supply will be transferred, can be defined via the address or xpub and derivationIndex. When xpub is present, the account connected to this virtualCurrency will be set as the account's xpub. </p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::XdcErc20Body.new # XdcErc20Body | 


begin
  #Register new XDC ERC20 token in the ledger
  result = api_instance.create_xdc20(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->create_xdc20: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**XdcErc20Body**](XdcErc20Body.md)|  | 

### Return type

[**Erc20Response**](Erc20Response.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **doge_transfer**
> InlineResponse20019 doge_transfer(body)

Send Dogecoin from Tatum account to address

<h4>4 credits per API call.</h4><br/> <p>Send Dogecoin from Tatum account to address. This will create Tatum internal withdrawal request with ID. If every system works as expected, withdrawal request is marked as complete and transaction id is assigned to it. <ul> <li>If Dogecoin server connection is unavailable, withdrawal request is cancelled.</li> <li>If blockchain transfer is successful, but is it not possible to reach Tatum, transaction id of blockchain transaction is returned and withdrawal request must be completed manually, otherwise all other withdrawals will be pending.</li> </ul> There are two possibilites how the transaction on the blockchain can be created: <ul> <li>Using mnemonic - all of the addresses, that are generated from the mnemonic are scanned for the incoming deposits which are used as a source of the transaction. Assets, which are not used in a transaction are moved to the system address wih the derivation index 0. Address with index 0 cannot be assigned automatically to any account and is used for custodial wallet use cases. For non-custodial wallets, field <b>attr</b> should be present and it should be address with the index 1 of the connected wallet.</li> <li>Using keyPair - addresses which are used as a source of the transaction are entered manually</li> </ul> It is possible to perform ledger to blockchain transaction for ledger accounts without blockchain address assigned to them.<br/> This method is a helper method, which internally wraps these steps: <ol> <li><a href=\"#operation/storeWithdrawal\">Store withdrawal</a> - create a ledger transaction, which debits the assets on the sender account.</li> <li><a href=\"#operation/DogeTransferBlockchain\">Perform blockchain transaction</a> - </li> <li><a href=\"#operation/completeWithdrawal\">Complete withdrawal</a> - move the withdrawal to the completed state, when all of the previous steps were successful.</li> </ol> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and losing funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages.</p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::DogecoinTransferBody.new # DogecoinTransferBody | 


begin
  #Send Dogecoin from Tatum account to address
  result = api_instance.doge_transfer(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->doge_transfer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DogecoinTransferBody**](DogecoinTransferBody.md)|  | 

### Return type

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **egld_transfer**
> InlineResponse20019 egld_transfer(body)

Send EGLD from Tatum ledger to blockchain

<h4>4 credits per API call.</h4><br/> <p>Send EGLD from Tatum Ledger to account. This will create Tatum internal withdrawal request with ID. If every system works as expected, withdrawal request is marked as complete and transaction id is assigned to it. <br/> <br/> <ul> <li>If server connection is unavailable, withdrawal request is cancelled.</li> <li>If blockchain transfer is successful, but is it not possible to reach Tatum, transaction id of blockchain transaction is returned and withdrawal request must be completed manually, otherwise all other withdrawals will be pending.</li> </ul> It is possible to perform ledger to blockchain transaction for ledger accounts without blockchain address assigned to them.<br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and losing funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::EgldTransferBody.new # EgldTransferBody | 


begin
  #Send EGLD from Tatum ledger to blockchain
  result = api_instance.egld_transfer(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->egld_transfer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EgldTransferBody**](EgldTransferBody.md)|  | 

### Return type

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **eth_deploy_erc20**
> InlineResponse20020 eth_deploy_erc20(body)

Deploy Ethereum ERC20 Smart Contract to Blockchain and Ledger

<h4>4 credits per API call.</h4><br/> <p>Deploy Ethereum ERC20 Smart Contract. This is a helper method, which is combination of <a href=\"#operation/createErc20\">Register new ERC20 token in the ledger</a> and <a href=\"#operation/EthDeployErc20Blockchain\">Deploy blockchain ERC20</a>.<br/> After deploying a contract to blockchain, the contract address will become available and must be stored within Tatum. Otherwise, it will not be possible to interact with it and starts automatic blockchain synchronization.<br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and losing funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::Erc20DeployBody.new # Erc20DeployBody | 


begin
  #Deploy Ethereum ERC20 Smart Contract to Blockchain and Ledger
  result = api_instance.eth_deploy_erc20(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->eth_deploy_erc20: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Erc20DeployBody**](Erc20DeployBody.md)|  | 

### Return type

[**InlineResponse20020**](InlineResponse20020.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **eth_transfer**
> InlineResponse20019 eth_transfer(body)

Send Ethereum from Tatum ledger to blockchain

<h4>4 credits per API call.</h4><br/><p>Send Ethereum from Tatum Ledger to account. This will create Tatum internal withdrawal request with ID. If every system works as expected, withdrawal request is marked as complete and transaction id is assigned to it. <ul> <li>If Ethereum server connection is unavailable, withdrawal request is cancelled.</li> <li>If blockchain transfer is successful, but is it not possible to reach Tatum, transaction id of blockchain transaction is returned and withdrawal request must be completed manually, otherwise all other withdrawals will be pending.</li> </ul> It is possible to perform ledger to blockchain transaction for ledger accounts without blockchain address assigned to them.<br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and losing funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::EthereumTransferBody.new # EthereumTransferBody | 


begin
  #Send Ethereum from Tatum ledger to blockchain
  result = api_instance.eth_transfer(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->eth_transfer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EthereumTransferBody**](EthereumTransferBody.md)|  | 

### Return type

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **eth_transfer_erc20**
> InlineResponse20019 eth_transfer_erc20(body)

Transfer Ethereum ERC20 from Tatum ledger to blockchain

<h4>4 credits per API call.</h4><br/> <p>Transfer Ethereum ERC20 Smart Contract Tokens from Tatum account to blockchain address. This will create Tatum internal withdrawal request with ID. If every system works as expected, withdrawal request is marked as complete and transaction id is assigned to it. <ul> <li>If Ethereum server connection is unavailable, withdrawal request is cancelled.</li> <li>If blockchain transfer is successful, but is it not possible to reach Tatum, transaction id of blockchain transaction is returned and withdrawal request must be completed manually, otherwise all other withdrawals will be pending.</li> </ul> It is possible to perform ledger to blockchain transaction for ledger accounts without blockchain address assigned to them.<br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and losing funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::Erc20TransferBody.new # Erc20TransferBody | 


begin
  #Transfer Ethereum ERC20 from Tatum ledger to blockchain
  result = api_instance.eth_transfer_erc20(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->eth_transfer_erc20: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Erc20TransferBody**](Erc20TransferBody.md)|  | 

### Return type

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **flow_transfer**
> InlineResponse20019 flow_transfer(body)

Send Flow or FUSD from Tatum account to address

<h4>100 credits per API call. Tatum covers the fee connected to the transaction costs in subscription credits. This operation can be done on mainnet only for paid plans.</h4><br/> <p>Send Flow or FUSD from Tatum account to address. This will create Tatum internal withdrawal request with ID. If every system works as expected, withdrawal request is marked as complete and transaction id is assigned to it. <ul> <li>If Flow server connection is unavailable, withdrawal request is cancelled.</li> <li>If blockchain transfer is successful, but is it not possible to reach Tatum, transaction id of blockchain transaction is returned and withdrawal request must be completed manually, otherwise all other withdrawals will be pending.</li> </ul> There are two possibilites how the transaction on the blockchain can be created: <ul> <li>Using mnemonic and index - private key is generated based on the index in the mnemonic.</li> <li>Using secret - private keys is entered manually.</li> </ul> It is possible to perform ledger to blockchain transaction for ledger accounts without blockchain address assigned to them.<br/> This method is a helper method, which internally wraps these steps: <ol> <li><a href=\"#operation/storeWithdrawal\">Store withdrawal</a> - create a ledger transaction, which debits the assets on the sender account.</li> <li><a href=\"#operation/FlowTransferBlockchain\">Perform blockchain transaction</a> - </li> <li><a href=\"#operation/completeWithdrawal\">Complete withdrawal</a> - move the withdrawal to the completed state, when all of the previous steps were successful.</li> </ol> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and losing funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages.</p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::FlowTransferBody.new # FlowTransferBody | 


begin
  #Send Flow or FUSD from Tatum account to address
  result = api_instance.flow_transfer(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->flow_transfer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**FlowTransferBody**](FlowTransferBody.md)|  | 

### Return type

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **kcs_deploy_erc20_ledger**
> InlineResponse20020 kcs_deploy_erc20_ledger(body)

Deploy Kcs ERC20 Smart Contract to Blockchain and Ledger

<h4>4 credits per API call.</h4><br/> <p>Deploy Kcs ERC20 Smart Contract. This is a helper method, which is combination of <a href=\"#operation/createErc20\">Register new Kcs ERC20 token in the ledger</a> and <a href=\"#operation/KcsDeployErc20Blockchain\">Deploy blockchain ERC-20</a>.<br/> <br/> <br/> After deploying a contract to blockchain, the contract address will become available and must be stored within Tatum. Otherwise, it will not be possible to interact with it and starts automatic blockchain synchronization.<br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and losing funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::Erc20DeployBody3.new # Erc20DeployBody3 | 


begin
  #Deploy Kcs ERC20 Smart Contract to Blockchain and Ledger
  result = api_instance.kcs_deploy_erc20_ledger(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->kcs_deploy_erc20_ledger: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Erc20DeployBody3**](Erc20DeployBody3.md)|  | 

### Return type

[**InlineResponse20020**](InlineResponse20020.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **kcs_transfer**
> InlineResponse20019 kcs_transfer(body)

Send KCS from Tatum ledger to blockchain

<h4>4 credits per API call.</h4><br/><p>Send KCS or ERC20 on KCS from Tatum Ledger to account. This will create Tatum internal withdrawal request with ID. If every system works as expected, withdrawal request is marked as complete and transaction id is assigned to it. <ul> <li>If KCS server connection is unavailable, withdrawal request is cancelled.</li> <li>If blockchain transfer is successful, but is it not possible to reach Tatum, transaction id of blockchain transaction is returned and withdrawal request must be completed manually, otherwise all other withdrawals will be pending.</li> </ul> It is possible to perform ledger to blockchain transaction for ledger accounts without blockchain address assigned to them.<br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and losing funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::KcsTransferBody.new # KcsTransferBody | 


begin
  #Send KCS from Tatum ledger to blockchain
  result = api_instance.kcs_transfer(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->kcs_transfer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**KcsTransferBody**](KcsTransferBody.md)|  | 

### Return type

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ltc_transfer**
> InlineResponse20019 ltc_transfer(body)

Send Litecoin from Tatum account to address

<h4>10 credits per API call.</h4><br/> <p>Send Litecoin from Tatum account to address. This will create Tatum internal withdrawal request with ID. If every system works as expected, withdrawal request is marked as complete and transaction id is assigned to it. <ul> <li>If Litecoin server connection is unavailable, withdrawal request is cancelled.</li> <li>If blockchain transfer is successful, but is it not possible to reach Tatum, transaction id of blockchain transaction is returned and withdrawal request must be completed manually, otherwise all other withdrawals will be pending.</li> </ul> There are two possibilites how the transaction on the blockchain can be created: <ul> <li>Using mnemonic - all of the addresses, that are generated from the mnemonic are scanned for the incoming deposits which are used as a source of the transaction. Assets, which are not used in a transaction are moved to the system address wih the derivation index 0. Address with index 0 cannot be assigned automatically to any account and is used for custodial wallet use cases. For non-custodial wallets, field <b>attr</b> should be present and it should be address with the index 1 of the connected wallet.</li> <li>Using keyPair - addresses which are used as a source of the transaction are entered manually</li> </ul> It is possible to perform ledger to blockchain transaction for ledger accounts without blockchain address assigned to them.<br/> This method is a helper method, which internally wraps these steps: <ol> <li><a href=\"#operation/storeWithdrawal\">Store withdrawal</a> - create a ledger transaction, which debits the assets on the sender account.</li> <li><a href=\"#operation/LtcTransferBlockchain\">Perform blockchain transaction</a> - </li> <li><a href=\"#operation/completeWithdrawal\">Complete withdrawal</a> - move the withdrawal to the completed state, when all of the previous steps were successful.</li> </ol> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and losing funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages.</p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::LitecoinTransferBody.new # LitecoinTransferBody | 


begin
  #Send Litecoin from Tatum account to address
  result = api_instance.ltc_transfer(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->ltc_transfer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**LitecoinTransferBody**](LitecoinTransferBody.md)|  | 

### Return type

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **offchain_estimate_fee**
> FeeBtc offchain_estimate_fee(body)

Estimate ledger to blockchain transaction fee

<h4>2 credits per API call.</h4><br/> <p>Estimate current transaction fee for ledger to blockchain transaction.<br/> Supported blockchains: <ul> <li>Bitcoin</li> <li>Litecoin</li> <li>Dogecoin</li> </ul> </p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::OffchainEstimateFee.new # OffchainEstimateFee | 


begin
  #Estimate ledger to blockchain transaction fee
  result = api_instance.offchain_estimate_fee(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->offchain_estimate_fee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**OffchainEstimateFee**](OffchainEstimateFee.md)|  | 

### Return type

[**FeeBtc**](FeeBtc.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **one_deploy_hrm20**
> InlineResponse20020 one_deploy_hrm20(body, opts)

Deploy ONE HRM20 Smart Contract to Blockchain and Ledger

<h4>4 credits per API call.</h4><br/> <p>Deploy ONE HRM20 Smart Contract. This is a helper method, which is combination of <a href=\"#operation/createHrm20\">Register new HRM20 token in the ledger</a> and <a href=\"#operation/Erc20Deploy\">Deploy blockchain HRM20</a>.<br/> <br/> <br/> After deploying a contract to blockchain, the contract address will become available and must be stored within Tatum. Otherwise, it will not be possible to interact with it and starts automatic blockchain synchronization.<br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and losing funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::Hrm20DeployBody.new # Hrm20DeployBody | 
opts = { 
  shard_id: SwaggerClient::BigDecimal.new # BigDecimal | Shard to operate on
}

begin
  #Deploy ONE HRM20 Smart Contract to Blockchain and Ledger
  result = api_instance.one_deploy_hrm20(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->one_deploy_hrm20: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Hrm20DeployBody**](Hrm20DeployBody.md)|  | 
 **shard_id** | **BigDecimal**| Shard to operate on | [optional] [default to 0]

### Return type

[**InlineResponse20020**](InlineResponse20020.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **one_transfer**
> InlineResponse20019 one_transfer(body, opts)

Send ONE or HRM-20 from Tatum ledger to blockchain

<h4>4 credits per API call.</h4><br/> <p>Send ONE or HRM20 from Tatum Ledger to account. This will create Tatum internal withdrawal request with ID. If every system works as expected, withdrawal request is marked as complete and transaction id is assigned to it. <br/> <br/> <ul> <li>If ONE server connection is unavailable, withdrawal request is cancelled.</li> <li>If blockchain transfer is successful, but is it not possible to reach Tatum, transaction id of blockchain transaction is returned and withdrawal request must be completed manually, otherwise all other withdrawals will be pending.</li> </ul> It is possible to perform ledger to blockchain transaction for ledger accounts without blockchain address assigned to them.<br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and losing funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::OneTransferBody.new # OneTransferBody | 
opts = { 
  shard_id: SwaggerClient::BigDecimal.new # BigDecimal | Shard to operate on
}

begin
  #Send ONE or HRM-20 from Tatum ledger to blockchain
  result = api_instance.one_transfer(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->one_transfer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**OneTransferBody**](OneTransferBody.md)|  | 
 **shard_id** | **BigDecimal**| Shard to operate on | [optional] [default to 0]

### Return type

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **polygon_transfer**
> InlineResponse20019 polygon_transfer(body)

Send MATIC from Tatum ledger to blockchain

<h4>4 credits per API call.</h4><br/><p>Send MATIC or ERC20 on Polygon from Tatum Ledger to account. This will create Tatum internal withdrawal request with ID. If every system works as expected, withdrawal request is marked as complete and transaction id is assigned to it. <ul> <li>If Polygon server connection is unavailable, withdrawal request is cancelled.</li> <li>If blockchain transfer is successful, but is it not possible to reach Tatum, transaction id of blockchain transaction is returned and withdrawal request must be completed manually, otherwise all other withdrawals will be pending.</li> </ul> It is possible to perform ledger to blockchain transaction for ledger accounts without blockchain address assigned to them.<br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and losing funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::PolygonTransferBody.new # PolygonTransferBody | 


begin
  #Send MATIC from Tatum ledger to blockchain
  result = api_instance.polygon_transfer(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->polygon_transfer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PolygonTransferBody**](PolygonTransferBody.md)|  | 

### Return type

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **register_erc20_token**
> Erc20Response register_erc20_token(bodychain)

Register new token in the ledger

<h4>2 credits per API call.</h4><br/> <p>First step to create new ERC|HRM|BEP-20 token with given supply on chosen blockchain with support of Tatum's private ledger.<br/> <br/> <br/> This method only creates Tatum Private ledger virtual currency with predefined parameters. It will not generate any blockchain smart contract.<br/> The whole supply of token is stored in the customer's newly created account. Then it is possible to create new Tatum accounts with token name as account's currency.<br/> Newly created account is frozen until the specific smart contract address is linked with the Tatum virtual currency, representing the token.<br/> Order of the steps to create smart contract with Tatum private ledger support: <ol> <li><a href=\"#operation/registerErc20Token\">Register token</a> - creates a virtual currency within Tatum</li> <li>Deploy smart contract - create new smart contract on the blockchain</li> <li><a href=\"#operation/storeTokenAddress\">Store smart contract address</a> - link newly created smart contract address with Tatum virtual currency - this operation enables frozen account and enables ledger synchronization for Tatum accounts</li> </ol> Address on the blockchain, where all initial supply will be transferred, can be defined via the address or xpub and derivationIndex. When xpub is present, the account connected to this virtualCurrency will be set as the account's xpub. </p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::TokenChainBody.new # TokenChainBody | 
chain = 'chain_example' # String | Blockchain to work with


begin
  #Register new token in the ledger
  result = api_instance.register_erc20_token(bodychain)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->register_erc20_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TokenChainBody**](TokenChainBody.md)|  | 
 **chain** | **String**| Blockchain to work with | 

### Return type

[**Erc20Response**](Erc20Response.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **store_celo_erc20_address**
> store_celo_erc20_address(address, name)

Set Celo ERC-20 token contract address

<h4>2 credits per API call.</h4><br/> <b>This method is deprecated. Please use <a href=\"#operation/storeTokenAddress\">Set Token address</a>.</b><br/> <p>Set contract address of ERC-20 token. This must be done in order to communicate with ERC-20 smart contract. <br/> <br/> After creating and deploying ERC-20 token to CELO blockchain, smart contract address is generated and must be set within Tatum. Otherwise Tatum platform will not be able to detect incoming deposits of ERC-20 and do withdrawals from Tatum accounts to other blockchain addresses.</p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
address = 'address_example' # String | ERC-20 contract address
name = 'name_example' # String | ERC-20 symbol name.


begin
  #Set Celo ERC-20 token contract address
  api_instance.store_celo_erc20_address(address, name)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->store_celo_erc20_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| ERC-20 contract address | 
 **name** | **String**| ERC-20 symbol name. | 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **store_token_address**
> store_token_address(address, name)

Set ERC20/BEP20/HRM20/TRC20 token contract address

<h4>2 credits per API call.</h4><br/> <p>Set contract address of ERC20/BEP20/HRM20 token. This must be done in order to communicate with smart contract. <br/> <br/> After creating and deploying ERC20 token to blockchain, smart contract address is generated and must be set within Tatum. In Algorand case the address should be token AssetID, for example: 55351976 Otherwise Tatum platform will not be able to detect incoming deposits of ERC20 and do withdrawals from Tatum accounts to other blockchain addresses.</p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
address = 'address_example' # String | Contract address
name = 'name_example' # String | Symbol name.


begin
  #Set ERC20/BEP20/HRM20/TRC20 token contract address
  api_instance.store_token_address(address, name)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->store_token_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Contract address | 
 **name** | **String**| Symbol name. | 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **store_trc_address**
> store_trc_address(address, name)

Set TRC token contract address

<h4>2 credits per API call.</h4><br/> <b>This method is deprecated. Please use <a href=\"#operation/storeTokenAddress\">Set Token address</a>.</b><br/> <p>Set contract address of TRC 10/20 token. This must be done in order to communicate with TRC 10/20 smart contract. After creating and deploying TRC 10/20 token to Tron blockchain, smart contract address is generated and must be set within Tatum. Otherwise Tatum platform will not be able to detect incoming deposits of TRC 10/20 and do withdrawals from Tatum accounts to other blockchain addresses.</p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
address = 'address_example' # String | TRC-10 Token ID or TRC-20 contract address
name = 'name_example' # String | TRC 10/20 symbol name.


begin
  #Set TRC token contract address
  api_instance.store_trc_address(address, name)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->store_trc_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| TRC-10 Token ID or TRC-20 contract address | 
 **name** | **String**| TRC 10/20 symbol name. | 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **tron_deploy_trc**
> InlineResponse20020 tron_deploy_trc(body)

Deploy Tron TRC-10/20 Smart Contract to Blockchain and Ledger

<h4>10 credits per API call.</h4><br/> <p>Deploy Tron TRC-10/20 Smart Contract. This is a helper method, which is combination of <a href=\"#operation/createTrc\">Register new TRC-10/20 token in the ledger</a> and <a href=\"#operation/TronCreateTrc20\">Deploy blockchain TRC20</a> or <a href=\"#operation/TronCreateTrc10\">Deploy blockchain TRC10</a>.<br/> After deploying a contract to blockchain, the contract address will become available and must be stored within Tatum. Otherwise, it will not be possible to interact with it and starts automatic blockchain synchronization.<br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and losing funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::TrcDeployBody.new # TrcDeployBody | 


begin
  #Deploy Tron TRC-10/20 Smart Contract to Blockchain and Ledger
  result = api_instance.tron_deploy_trc(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->tron_deploy_trc: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TrcDeployBody**](TrcDeployBody.md)|  | 

### Return type

[**InlineResponse20020**](InlineResponse20020.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **tron_transfer_offchain**
> InlineResponse20019 tron_transfer_offchain(body)

Send Tron or TRC asset from Tatum ledger to blockchain

<h4>10 credits per API call.</h4><br/><p>Send Tron or TRC asset from Tatum Ledger to account. This will create Tatum internal withdrawal request with ID. If every system works as expected, withdrawal request is marked as complete and transaction id is assigned to it. <ul> <li>If Tron server connection is unavailable, withdrawal request is cancelled.</li> <li>If blockchain transfer is successful, but is it not possible to reach Tatum, transaction id of blockchain transaction is returned and withdrawal request must be completed manually, otherwise all other withdrawals will be pending.</li> </ul> It is possible to perform ledger to blockchain transaction for ledger accounts without blockchain address assigned to them.<br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and losing funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::TronTransferBody.new # TronTransferBody | 


begin
  #Send Tron or TRC asset from Tatum ledger to blockchain
  result = api_instance.tron_transfer_offchain(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->tron_transfer_offchain: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TronTransferBody**](TronTransferBody.md)|  | 

### Return type

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **xdc_deploy_erc20**
> InlineResponse20020 xdc_deploy_erc20(body)

Deploy XDC ERC20 Smart Contract to Blockchain and Ledger

<h4>4 credits per API call.</h4><br/> <p>Deploy XDC ERC20 Smart Contract. This is a helper method, which is combination of <a href=\"#operation/createXdc20\">Register new ERC20 token in the ledger</a> and <a href=\"#operation/Erc20Deploy\">Deploy blockchain ERC20</a>.<br/> <br/> <br/> After deploying a contract to blockchain, the contract address will become available and must be stored within Tatum. Otherwise, it will not be possible to interact with it and starts automatic blockchain synchronization.<br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and losing funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::Erc20DeployBody1.new # Erc20DeployBody1 | 


begin
  #Deploy XDC ERC20 Smart Contract to Blockchain and Ledger
  result = api_instance.xdc_deploy_erc20(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->xdc_deploy_erc20: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Erc20DeployBody1**](Erc20DeployBody1.md)|  | 

### Return type

[**InlineResponse20020**](InlineResponse20020.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **xdc_transfer**
> InlineResponse20019 xdc_transfer(body)

Send XDC or ERC-20 from Tatum ledger to blockchain

<h4>4 credits per API call.</h4><br/> <p>Send XDC or ERC20 from Tatum Ledger to account. This will create Tatum internal withdrawal request with ID. If every system works as expected, withdrawal request is marked as complete and transaction id is assigned to it. <br/> <br/> <ul> <li>If XDC server connection is unavailable, withdrawal request is cancelled.</li> <li>If blockchain transfer is successful, but is it not possible to reach Tatum, transaction id of blockchain transaction is returned and withdrawal request must be completed manually, otherwise all other withdrawals will be pending.</li> </ul> It is possible to perform ledger to blockchain transaction for ledger accounts without blockchain address assigned to them.<br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and losing funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::XdcTransferBody.new # XdcTransferBody | 


begin
  #Send XDC or ERC-20 from Tatum ledger to blockchain
  result = api_instance.xdc_transfer(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->xdc_transfer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**XdcTransferBody**](XdcTransferBody.md)|  | 

### Return type

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **xlm_asset_offchain**
> xlm_asset_offchain(body)

Create XLM based Asset

<h4>2 credits per API call.</h4><br/><p> <p>Create XLM-based Asset in Tatum Ledger. Asset must be created and configured on XLM blockhain before using <a href=\"#operation/XlmTrustLineBlockchain\">Create trust line</a>. This API call will create Tatum internal Virtual Currency. It is possible to create Tatum ledger accounts with off-chain support. </p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::CreateXlmAsset.new # CreateXlmAsset | 


begin
  #Create XLM based Asset
  api_instance.xlm_asset_offchain(body)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->xlm_asset_offchain: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateXlmAsset**](CreateXlmAsset.md)|  | 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **xlm_transfer**
> InlineResponse20019 xlm_transfer(body)

Send XLM / Asset from Tatum ledger to blockchain

<h4>10 credits per API call.</h4><br/><p> <p>Send XLM or XLM-based Assets from account to account. This will create Tatum internal withdrawal request with ID. When every system works as expected, withdrawal request is marked as complete and transaction id is assigned to it. <ul> <li>If XLM server connection is unavailable, withdrawal request is cancelled.</li> <li>If blockchain transfer is successful, but is it not possible to reach Tatum, transaction id of blockchain transaction is returned and withdrawal request must be completed manually, otherwise all other withdrawals will be pending.</li> </ul> It is possible to perform ledger to blockchain transaction for ledger accounts without blockchain address assigned to them.<br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and losing funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::XlmTransferBody.new # XlmTransferBody | 


begin
  #Send XLM / Asset from Tatum ledger to blockchain
  result = api_instance.xlm_transfer(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->xlm_transfer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**XlmTransferBody**](XlmTransferBody.md)|  | 

### Return type

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **xrp_asset_offchain**
> xrp_asset_offchain(body)

Create XRP based Asset

<h4>2 credits per API call.</h4><br/><p> <p>Create XRP-based Asset in Tatum Ledger. Asset must be created and configured on XRP blockhain before using <a href=\"#operation/XrpTrustLineBlockchain\">Create trust line</a>. This API call will create Tatum internal Virtual Currency. It is possible to create Tatum ledger accounts with off-chain support. </p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::CreateXrpAsset.new # CreateXrpAsset | 


begin
  #Create XRP based Asset
  api_instance.xrp_asset_offchain(body)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->xrp_asset_offchain: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateXrpAsset**](CreateXrpAsset.md)|  | 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **xrp_transfer**
> InlineResponse20019 xrp_transfer(body)

Send XRP from Tatum ledger to blockchain

<h4>10 credits per API call.</h4><br/><p> <p>Send XRP from account to account. This will create Tatum internal withdrawal request with ID. When every system works as expected, withdrawal request is marked as complete and transaction id is assigned to it. <ul> <li>If XRP server connection is unavailable, withdrawal request is cancelled.</li> <li>If blockchain transfer is successful, but is it not possible to reach Tatum, transaction id of blockchain transaction is returned and withdrawal request must be completed manually, otherwise all other withdrawals will be pending.</li> </ul> It is possible to perform ledger to blockchain transaction for ledger accounts without blockchain address assigned to them.<br/> This operation needs the private key of the blockchain address. Every time the funds are transferred, the transaction must be signed with the corresponding private key. No one should ever send it's own private keys to the internet because there is a strong possibility of stealing keys and losing funds. In this method, it is possible to enter privateKey or signatureId. PrivateKey should be used only for quick development on testnet versions of blockchain when there is no risk of losing funds. In production, <a href=\"https://github.com/tatumio/tatum-kms\" target=\"_blank\">Tatum KMS</a> should be used for the highest security standards, and signatureId should be present in the request. Alternatively, using the Tatum client library for supported languages. </p> 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = SwaggerClient::OffChainBlockchainApi.new
body = SwaggerClient::XrpTransferBody.new # XrpTransferBody | 


begin
  #Send XRP from Tatum ledger to blockchain
  result = api_instance.xrp_transfer(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OffChainBlockchainApi->xrp_transfer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**XrpTransferBody**](XrpTransferBody.md)|  | 

### Return type

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



