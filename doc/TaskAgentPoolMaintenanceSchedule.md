# azure_devops_sdk.model.TaskAgentPoolMaintenanceSchedule

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**daysToBuild** | **String** | Days for a build (flags enum for days of the week) | [optional] [default to null]
**scheduleJobId** | **String** | The Job Id of the Scheduled job that will queue the pool maintenance job. | [optional] [default to null]
**startHours** | **int** | Local timezone hour to start | [optional] [default to null]
**startMinutes** | **int** | Local timezone minute to start | [optional] [default to null]
**timeZoneId** | **String** | Time zone of the build schedule (string representation of the time zone id) | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


