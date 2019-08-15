# azure_devops_sdk.model.BacklogConfiguration

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**backlogFields** | [**BacklogFields**](BacklogFields.md) |  | [optional] [default to null]
**bugsBehavior** | **String** | Bugs behavior | [optional] [default to null]
**hiddenBacklogs** | **List&lt;String&gt;** | Hidden Backlog | [optional] [default to []]
**isBugsBehaviorConfigured** | **bool** | Is BugsBehavior Configured in the process | [optional] [default to null]
**portfolioBacklogs** | [**List&lt;BacklogLevelConfiguration&gt;**](BacklogLevelConfiguration.md) | Portfolio backlog descriptors | [optional] [default to []]
**requirementBacklog** | [**BacklogLevelConfiguration**](BacklogLevelConfiguration.md) |  | [optional] [default to null]
**taskBacklog** | [**BacklogLevelConfiguration**](BacklogLevelConfiguration.md) |  | [optional] [default to null]
**url** | **String** |  | [optional] [default to null]
**workItemTypeMappedStates** | [**List&lt;WorkItemTypeStateInfo&gt;**](WorkItemTypeStateInfo.md) | Mapped states for work item types | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


