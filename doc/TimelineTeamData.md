# azure_devops_sdk.model.TimelineTeamData

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**backlog** | [**BacklogLevel**](BacklogLevel.md) |  | [optional] [default to null]
**fieldReferenceNames** | **List&lt;String&gt;** | The field reference names of the work item data | [optional] [default to []]
**id** | **String** | The id of the team | [optional] [default to null]
**isExpanded** | **bool** | Was iteration and work item data retrieved for this team. &lt;remarks&gt; Teams with IsExpanded false have not had their iteration, work item, and field related data queried and will never contain this data. If true then these items are queried and, if there are items in the queried range, there will be data. &lt;/remarks&gt; | [optional] [default to null]
**iterations** | [**List&lt;TimelineTeamIteration&gt;**](TimelineTeamIteration.md) | The iteration data, including the work items, in the queried date range. | [optional] [default to []]
**name** | **String** | The name of the team | [optional] [default to null]
**orderByField** | **String** | The order by field name of this team | [optional] [default to null]
**partiallyPagedFieldReferenceNames** | **List&lt;String&gt;** | The field reference names of the partially paged work items, such as ID, WorkItemType | [optional] [default to []]
**projectId** | **String** | The project id the team belongs team | [optional] [default to null]
**status** | [**TimelineTeamStatus**](TimelineTeamStatus.md) |  | [optional] [default to null]
**teamFieldDefaultValue** | **String** | The team field default value | [optional] [default to null]
**teamFieldName** | **String** | The team field name of this team | [optional] [default to null]
**teamFieldValues** | [**List&lt;TeamFieldValue&gt;**](TeamFieldValue.md) | The team field values | [optional] [default to []]
**workItemTypeColors** | [**List&lt;WorkItemColor&gt;**](WorkItemColor.md) | Colors for the work item types. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


