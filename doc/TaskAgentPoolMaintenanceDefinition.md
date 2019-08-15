# azure_devops_sdk.model.TaskAgentPoolMaintenanceDefinition

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** | Enable maintenance | [optional] [default to null]
**id** | **int** | Id | [optional] [default to null]
**jobTimeoutInMinutes** | **int** | Maintenance job timeout per agent | [optional] [default to null]
**maxConcurrentAgentsPercentage** | **int** | Max percentage of agents within a pool running maintenance job at given time | [optional] [default to null]
**options** | [**TaskAgentPoolMaintenanceOptions**](TaskAgentPoolMaintenanceOptions.md) |  | [optional] [default to null]
**pool** | [**TaskAgentPoolReference**](TaskAgentPoolReference.md) |  | [optional] [default to null]
**retentionPolicy** | [**TaskAgentPoolMaintenanceRetentionPolicy**](TaskAgentPoolMaintenanceRetentionPolicy.md) |  | [optional] [default to null]
**scheduleSetting** | [**TaskAgentPoolMaintenanceSchedule**](TaskAgentPoolMaintenanceSchedule.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


