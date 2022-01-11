# Tatum::FlowTx

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reference_block_id** | **String** | Id of the block | [optional] 
**script** | **String** | Script to execute in the transaction | [optional] 
**args** | [**Array&lt;FlowTxArgs&gt;**](FlowTxArgs.md) | Args to the transaction | [optional] 
**gas_limit** | [**BigDecimal**](BigDecimal.md) | Gas limit for the transaction | [optional] 
**proposal_key** | [**FlowTxProposalKey**](FlowTxProposalKey.md) |  | [optional] 
**payer** | **String** | Address from which the assets and fees were debited | [optional] 
**payload_signatures** | [**Array&lt;FlowTxPayloadSignatures&gt;**](FlowTxPayloadSignatures.md) | Array of payload signatures. | [optional] 
**envelope_signatures** | [**Array&lt;FlowTxPayloadSignatures&gt;**](FlowTxPayloadSignatures.md) | Array of envelope signatures. | [optional] 
**status** | [**BigDecimal**](BigDecimal.md) | Status of the transaction | [optional] 
**status_code** | [**BigDecimal**](BigDecimal.md) | Status cofe of the transaction | [optional] 
**error_message** | **String** |  | [optional] 
**events** | [**Array&lt;FlowTxEvents&gt;**](FlowTxEvents.md) |  | [optional] 

