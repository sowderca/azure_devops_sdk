# azure_devops_sdk.model.WorkItemResult

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fields** | **Map&lt;String, String&gt;** | A standard set of work item fields and their values. | [optional] [default to {}]
**hits** | [**List&lt;WorkItemHit&gt;**](WorkItemHit.md) | Highlighted snippets of fields that match the search request. The list is sorted by relevance of the snippets. | [optional] [default to []]
**project** | [**Project**](Project.md) |  | [optional] [default to null]
**url** | **String** | Reference to the work item. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


