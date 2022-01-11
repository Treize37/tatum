# SwaggerClient::Error400Data

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**target** | **Hash** | Request object present in the body of the HTTP request | 
**value** | [**BigDecimal**](BigDecimal.md) | Value of the target object which validation is wrong. Can be of any data type, example here is using type number. | [optional] 
**property** | **String** | Property name of the target object which validation is wrong | [optional] 
**constraints** | **Hash** | Object of failed constraints for the target object. Key is the constraint, value is detailed description of the failed constraint. | [optional] 

