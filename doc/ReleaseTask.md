# azure_devops_sdk.model.ReleaseTask

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agentName** | **String** | Agent name on which task executed. | [optional] [default to null]
**finishTime** | [**DateTime**](DateTime.md) | Finish time of the release task. | [optional] [default to null]
**id** | **int** | ID of the release task. | [optional] [default to null]
**issues** | [**List&lt;Issue&gt;**](Issue.md) | List of issues occurred while execution of task. | [optional] [default to []]
**lineCount** | **int** | Number of lines log release task has. | [optional] [default to null]
**logUrl** | **String** | Log URL of the task. | [optional] [default to null]
**name** | **String** | Name of the task. | [optional] [default to null]
**percentComplete** | **int** | Task execution complete precent. | [optional] [default to null]
**rank** | **int** | Rank of the release task. | [optional] [default to null]
**resultCode** | **String** | Result code of the task. | [optional] [default to null]
**startTime** | [**DateTime**](DateTime.md) | ID of the release task. | [optional] [default to null]
**status** | **String** | Status of release task. | [optional] [default to null]
**task** | [**WorkflowTaskReference**](WorkflowTaskReference.md) |  | [optional] [default to null]
**timelineRecordId** | **String** | Timeline record ID of the release task. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


