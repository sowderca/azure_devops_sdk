# azure_devops_sdk.model.WorkItemQueryResult

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**asOf** | [**DateTime**](DateTime.md) | The date the query was run in the context of. | [optional] [default to null]
**columns** | [**List&lt;WorkItemFieldReference&gt;**](WorkItemFieldReference.md) | The columns of the query. | [optional] [default to []]
**queryResultType** | **String** | The result type | [optional] [default to null]
**queryType** | **String** | The type of the query | [optional] [default to null]
**sortColumns** | [**List&lt;WorkItemQuerySortColumn&gt;**](WorkItemQuerySortColumn.md) | The sort columns of the query. | [optional] [default to []]
**workItemRelations** | [**List&lt;WorkItemLink&gt;**](WorkItemLink.md) | The work item links returned by the query. | [optional] [default to []]
**workItems** | [**List&lt;WorkItemReference&gt;**](WorkItemReference.md) | The work items returned by the query. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


