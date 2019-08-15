# azure_devops_sdk.model.TaskAgentPoolMaintenanceJob

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**definitionId** | **int** | The maintenance definition for the maintenance job | [optional] [default to null]
**errorCount** | **int** | The total error counts during the maintenance job | [optional] [default to null]
**finishTime** | [**DateTime**](DateTime.md) | Time that the maintenance job was completed | [optional] [default to null]
**jobId** | **int** | Id of the maintenance job | [optional] [default to null]
**logsDownloadUrl** | **String** | The log download url for the maintenance job | [optional] [default to null]
**orchestrationId** | **String** | Orchestration/Plan Id for the maintenance job | [optional] [default to null]
**pool** | [**TaskAgentPoolReference**](TaskAgentPoolReference.md) |  | [optional] [default to null]
**queueTime** | [**DateTime**](DateTime.md) | Time that the maintenance job was queued | [optional] [default to null]
**requestedBy** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**result** | **String** | The maintenance job result | [optional] [default to null]
**startTime** | [**DateTime**](DateTime.md) | Time that the maintenance job was started | [optional] [default to null]
**status** | **String** | Status of the maintenance job | [optional] [default to null]
**targetAgents** | [**List&lt;TaskAgentPoolMaintenanceJobTargetAgent&gt;**](TaskAgentPoolMaintenanceJobTargetAgent.md) |  | [optional] [default to []]
**warningCount** | **int** | The total warning counts during the maintenance job | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


