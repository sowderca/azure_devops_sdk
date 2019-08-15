# azure_devops_sdk.model.DataSourceBindingBase

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**callbackContextTemplate** | **String** | Pagination format supported by this data source(ContinuationToken/SkipTop). | [optional] [default to null]
**callbackRequiredTemplate** | **String** | Subsequent calls needed? | [optional] [default to null]
**dataSourceName** | **String** | Gets or sets the name of the data source. | [optional] [default to null]
**endpointId** | **String** | Gets or sets the endpoint Id. | [optional] [default to null]
**endpointUrl** | **String** | Gets or sets the url of the service endpoint. | [optional] [default to null]
**headers** | [**List&lt;AuthorizationHeader&gt;**](AuthorizationHeader.md) | Gets or sets the authorization headers. | [optional] [default to []]
**initialContextTemplate** | **String** | Defines the initial value of the query params | [optional] [default to null]
**parameters** | **Map&lt;String, String&gt;** | Gets or sets the parameters for the data source. | [optional] [default to {}]
**requestContent** | **String** | Gets or sets http request body | [optional] [default to null]
**requestVerb** | **String** | Gets or sets http request verb | [optional] [default to null]
**resultSelector** | **String** | Gets or sets the result selector. | [optional] [default to null]
**resultTemplate** | **String** | Gets or sets the result template. | [optional] [default to null]
**target** | **String** | Gets or sets the target of the data source. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


