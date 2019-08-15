# azure_devops_sdk.model.AccessControlList

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**acesDictionary** | [**Map&lt;String, AccessControlEntry&gt;**](AccessControlEntry.md) | Storage of permissions keyed on the identity the permission is for. | [optional] [default to {}]
**includeExtendedInfo** | **bool** | True if this ACL holds ACEs that have extended information. | [optional] [default to null]
**inheritPermissions** | **bool** | True if the given token inherits permissions from parents. | [optional] [default to null]
**token** | **String** | The token that this AccessControlList is for. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


