# azure_devops_sdk.model.ReorderOperation

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ids** | **List&lt;int&gt;** | IDs of the work items to be reordered.  Must be valid WorkItem Ids. | [optional] [default to []]
**iterationPath** | **String** | IterationPath for reorder operation. This is only used when we reorder from the Iteration Backlog | [optional] [default to null]
**nextId** | **int** | ID of the work item that should be after the reordered items. Can use 0 to specify the end of the list. | [optional] [default to null]
**parentId** | **int** | Parent ID for all of the work items involved in this operation. Can use 0 to indicate the items don&#39;t have a parent. | [optional] [default to null]
**previousId** | **int** | ID of the work item that should be before the reordered items. Can use 0 to specify the beginning of the list. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


