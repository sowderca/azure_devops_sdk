# azure_devops_sdk.model.Schedule

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branchFilters** | **List&lt;String&gt;** |  | [optional] [default to []]
**daysToBuild** | **String** | Days for a build (flags enum for days of the week) | [optional] [default to null]
**scheduleJobId** | **String** | The Job Id of the Scheduled job that will queue the scheduled build. Since a single trigger can have multiple schedules and we want a single job to process a single schedule (since each schedule has a list of branches to build), the schedule itself needs to define the Job Id. This value will be filled in when a definition is added or updated.  The UI does not provide it or use it. | [optional] [default to null]
**scheduleOnlyWithChanges** | **bool** | Flag to determine if this schedule should only build if the associated source has been changed. | [optional] [default to null]
**startHours** | **int** | Local timezone hour to start | [optional] [default to null]
**startMinutes** | **int** | Local timezone minute to start | [optional] [default to null]
**timeZoneId** | **String** | Time zone of the build schedule (String representation of the time zone ID) | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


