# azure_devops_sdk.model.GraphSubjectBase

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**ReferenceLinks**](ReferenceLinks.md) |  | [optional] [default to null]
**descriptor** | **String** | The descriptor is the primary way to reference the graph subject while the system is running. This field will uniquely identify the same graph subject across both Accounts and Organizations. | [optional] [default to null]
**displayName** | **String** | This is the non-unique display name of the graph subject. To change this field, you must alter its value in the source provider. | [optional] [default to null]
**url** | **String** | This url is the full route to the source resource of this graph subject. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


