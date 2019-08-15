# azure_devops_sdk.model.ServiceEndpoint

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**administratorsGroup** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**authorization** | [**EndpointAuthorization**](EndpointAuthorization.md) |  | [optional] [default to null]
**createdBy** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**data** | **Map&lt;String, String&gt;** |  | [optional] [default to {}]
**description** | **String** | Gets or sets the description of endpoint. | [optional] [default to null]
**groupScopeId** | **String** | This is a deprecated field. | [optional] [default to null]
**id** | **String** | Gets or sets the identifier of this endpoint. | [optional] [default to null]
**isReady** | **bool** | EndPoint state indicator | [optional] [default to null]
**isShared** | **bool** | Indicates whether service endpoint is shared with other projects or not. | [optional] [default to null]
**name** | **String** | Gets or sets the friendly name of the endpoint. | [optional] [default to null]
**operationStatus** | [**JObject**](JObject.md) |  | [optional] [default to null]
**owner** | **String** | Owner of the endpoint Supported values are \&quot;library\&quot;, \&quot;agentcloud\&quot; | [optional] [default to null]
**readersGroup** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**type** | **String** | Gets or sets the type of the endpoint. | [optional] [default to null]
**url** | **String** | Gets or sets the url of the endpoint. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


