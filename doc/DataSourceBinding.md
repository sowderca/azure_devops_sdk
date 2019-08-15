# azure_devops_sdk.model.DataSourceBinding

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**callbackContextTemplate** | **String** | Pagination format supported by this data source(ContinuationToken/SkipTop). | [optional] [default to null]
**callBackRequiredTemplate** | **String** | Subsequent calls needed? | [optional] [default to null]
**dataSourceName** | **String** | Name of the datasource. | [optional] [default to null]
**endpointId** | **String** | Endpoint ID of the datasource. | [optional] [default to null]
**endpointUrl** | **String** | Endpoint URL of the datasource. | [optional] [default to null]
**initialContextTemplate** | **String** | Defines the initial value of the query params | [optional] [default to null]
**parameters** | **Map&lt;String, String&gt;** | Parameters of the datasource. | [optional] [default to {}]
**requestContent** | **String** | Gets or sets http request body | [optional] [default to null]
**requestVerb** | **String** | Gets or sets http request verb | [optional] [default to null]
**resultSelector** | **String** | Result selector applied on output of datasource result, for example jsonpath:$.value[?(@.properties.isEnabled &#x3D;&#x3D; true)]. | [optional] [default to null]
**resultTemplate** | **String** | Format of the return results, for example. { \&quot;Value\&quot; : \&quot;{{{id}}}\&quot;, \&quot;DisplayValue\&quot; : \&quot;{{{name}}}\&quot; }. | [optional] [default to null]
**target** | **String** | Target of the datasource. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


