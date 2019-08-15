# azure_devops_sdk.model.DataSourceDetails

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dataSourceName** | **String** | Gets or sets the data source name. | [optional] [default to null]
**dataSourceUrl** | **String** | Gets or sets the data source url. | [optional] [default to null]
**headers** | [**List&lt;AuthorizationHeader&gt;**](AuthorizationHeader.md) | Gets or sets the request headers. | [optional] [default to []]
**initialContextTemplate** | **String** | Gets or sets the initialization context used for the initial call to the data source | [optional] [default to null]
**parameters** | **Map&lt;String, String&gt;** | Gets the parameters of data source. | [optional] [default to {}]
**requestContent** | **String** | Gets or sets the data source request content. | [optional] [default to null]
**requestVerb** | **String** | Gets or sets the data source request verb. Get/Post are the only implemented types | [optional] [default to null]
**resourceUrl** | **String** | Gets or sets the resource url of data source. | [optional] [default to null]
**resultSelector** | **String** | Gets or sets the result selector. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


