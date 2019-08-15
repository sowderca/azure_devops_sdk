# azure_devops_sdk.model.ReleaseSchedule

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**daysToRelease** | **String** | Days of the week to release. | [optional] [default to null]
**jobId** | **String** | Team Foundation Job Definition Job Id. | [optional] [default to null]
**scheduleOnlyWithChanges** | **bool** | Flag to determine if this schedule should only release if the associated artifact has been changed or release definition changed. | [optional] [default to null]
**startHours** | **int** | Local time zone hour to start. | [optional] [default to null]
**startMinutes** | **int** | Local time zone minute to start. | [optional] [default to null]
**timeZoneId** | **String** | Time zone Id of release schedule, such as &#39;UTC&#39;. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


