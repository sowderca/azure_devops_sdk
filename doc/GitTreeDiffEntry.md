# azure_devops_sdk.model.GitTreeDiffEntry

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**baseObjectId** | **String** | SHA1 hash of the object in the base tree, if it exists. Will be null in case of adds. | [optional] [default to null]
**changeType** | **String** | Type of change that affected this entry. | [optional] [default to null]
**objectType** | **String** | Object type of the tree entry. Blob, Tree or Commit(\&quot;submodule\&quot;) | [optional] [default to null]
**path** | **String** | Relative path in base and target trees. | [optional] [default to null]
**targetObjectId** | **String** | SHA1 hash of the object in the target tree, if it exists. Will be null in case of deletes. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


