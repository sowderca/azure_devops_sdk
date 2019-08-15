# azure_devops_sdk.model.GitTreeRef

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**ReferenceLinks**](ReferenceLinks.md) |  | [optional] [default to null]
**objectId** | **String** | SHA1 hash of git object | [optional] [default to null]
**size** | **int** | Sum of sizes of all children | [optional] [default to null]
**treeEntries** | [**List&lt;GitTreeEntryRef&gt;**](GitTreeEntryRef.md) | Blobs and trees under this tree | [optional] [default to []]
**url** | **String** | Url to tree | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


