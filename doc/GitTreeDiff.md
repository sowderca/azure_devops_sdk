# azure_devops_sdk.model.GitTreeDiff

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**baseTreeId** | **String** | ObjectId of the base tree of this diff. | [optional] [default to null]
**diffEntries** | [**List&lt;GitTreeDiffEntry&gt;**](GitTreeDiffEntry.md) | List of tree entries that differ between the base and target tree.  Renames and object type changes are returned as a delete for the old object and add for the new object.  If a continuation token is returned in the response header, some tree entries are yet to be processed and may yeild more diff entries. If the continuation token is not returned all the diff entries have been included in this response. | [optional] [default to []]
**targetTreeId** | **String** | ObjectId of the target tree of this diff. | [optional] [default to null]
**url** | **String** | REST Url to this resource. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


