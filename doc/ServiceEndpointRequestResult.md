# azure_devops_sdk.model.ServiceEndpointRequestResult

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**callbackContextParameters** | **Map&lt;String, String&gt;** | Gets or sets the parameters used to make subsequent calls to the data source | [optional] [default to {}]
**callbackRequired** | **bool** | Gets or sets the flat that decides if another call to the data source is to be made | [optional] [default to null]
**errorMessage** | **String** | Gets or sets the error message of the service endpoint request result. | [optional] [default to null]
**result** | [**JToken**](JToken.md) |  | [optional] [default to null]
**statusCode** | **String** | Gets or sets the status code of the service endpoint request result. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


