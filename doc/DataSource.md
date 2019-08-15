# azure_devops_sdk.model.DataSource

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**authenticationScheme** | [**AuthenticationSchemeReference**](AuthenticationSchemeReference.md) |  | [optional] [default to null]
**callbackContextTemplate** | **String** | Gets or sets the pagination format supported by this data source(ContinuationToken/SkipTop). | [optional] [default to null]
**callbackRequiredTemplate** | **String** | Gets or sets the template to check if subsequent call is needed. | [optional] [default to null]
**endpointUrl** | **String** | Gets or sets the endpoint url of the data source. | [optional] [default to null]
**headers** | [**List&lt;AuthorizationHeader&gt;**](AuthorizationHeader.md) | Gets or sets the authorization headers of the request. | [optional] [default to []]
**initialContextTemplate** | **String** | Gets or sets the initial value of the query params. | [optional] [default to null]
**name** | **String** | Gets or sets the name of the data source. | [optional] [default to null]
**requestContent** | **String** | Gets or sets the request content of the endpoint request. | [optional] [default to null]
**requestVerb** | **String** | Gets or sets the request method of the endpoint request. | [optional] [default to null]
**resourceUrl** | **String** | Gets or sets the resource url of the endpoint request. | [optional] [default to null]
**resultSelector** | **String** | Gets or sets the result selector to filter the response of the endpoint request. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


