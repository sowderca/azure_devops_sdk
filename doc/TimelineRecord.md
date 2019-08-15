# azure_devops_sdk.model.TimelineRecord

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**ReferenceLinks**](ReferenceLinks.md) |  | [optional] [default to null]
**attempt** | **int** | Attempt number of record. | [optional] [default to null]
**changeId** | **int** | The change ID. | [optional] [default to null]
**currentOperation** | **String** | A string that indicates the current operation. | [optional] [default to null]
**details** | [**TimelineReference**](TimelineReference.md) |  | [optional] [default to null]
**errorCount** | **int** | The number of errors produced by this operation. | [optional] [default to null]
**finishTime** | [**DateTime**](DateTime.md) | The finish time. | [optional] [default to null]
**id** | **String** | The ID of the record. | [optional] [default to null]
**identifier** | **String** | String identifier that is consistent across attempts. | [optional] [default to null]
**issues** | [**List&lt;Issue&gt;**](Issue.md) |  | [optional] [default to []]
**lastModified** | [**DateTime**](DateTime.md) | The time the record was last modified. | [optional] [default to null]
**log** | [**BuildLogReference**](BuildLogReference.md) |  | [optional] [default to null]
**name** | **String** | The name. | [optional] [default to null]
**order** | **int** | An ordinal value relative to other records. | [optional] [default to null]
**parentId** | **String** | The ID of the record&#39;s parent. | [optional] [default to null]
**percentComplete** | **int** | The current completion percentage. | [optional] [default to null]
**previousAttempts** | [**List&lt;TimelineAttempt&gt;**](TimelineAttempt.md) |  | [optional] [default to []]
**result** | **String** | The result. | [optional] [default to null]
**resultCode** | **String** | The result code. | [optional] [default to null]
**startTime** | [**DateTime**](DateTime.md) | The start time. | [optional] [default to null]
**state** | **String** | The state of the record. | [optional] [default to null]
**task** | [**TaskReference**](TaskReference.md) |  | [optional] [default to null]
**type** | **String** | The type of the record. | [optional] [default to null]
**url** | **String** | The REST URL of the timeline record. | [optional] [default to null]
**warningCount** | **int** | The number of warnings produced by this operation. | [optional] [default to null]
**workerName** | **String** | The name of the agent running the operation. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


