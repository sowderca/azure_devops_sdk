# azure_devops_sdk.model.BacklogLevelConfiguration

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**addPanelFields** | [**List&lt;WorkItemFieldReference&gt;**](WorkItemFieldReference.md) | List of fields to include in Add Panel | [optional] [default to []]
**color** | **String** | Color for the backlog level | [optional] [default to null]
**columnFields** | [**List&lt;BacklogColumn&gt;**](BacklogColumn.md) | Default list of columns for the backlog | [optional] [default to []]
**defaultWorkItemType** | [**WorkItemTypeReference**](WorkItemTypeReference.md) |  | [optional] [default to null]
**id** | **String** | Backlog Id (for Legacy Backlog Level from process config it can be categoryref name) | [optional] [default to null]
**isHidden** | **bool** | Indicates whether the backlog level is hidden | [optional] [default to null]
**name** | **String** | Backlog Name | [optional] [default to null]
**rank** | **int** | Backlog Rank (Taskbacklog is 0) | [optional] [default to null]
**type** | **String** | The type of this backlog level | [optional] [default to null]
**workItemCountLimit** | **int** | Max number of work items to show in the given backlog | [optional] [default to null]
**workItemTypes** | [**List&lt;WorkItemTypeReference&gt;**](WorkItemTypeReference.md) | Work Item types participating in this backlog as known by the project/Process, can be overridden by team settings for bugs | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


