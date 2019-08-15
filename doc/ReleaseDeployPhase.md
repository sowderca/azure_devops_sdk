# azure_devops_sdk.model.ReleaseDeployPhase

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**deploymentJobs** | [**List&lt;DeploymentJob&gt;**](DeploymentJob.md) | Deployment jobs of the phase. | [optional] [default to []]
**errorLog** | **String** | Phase execution error logs. | [optional] [default to null]
**manualInterventions** | [**List&lt;ManualIntervention&gt;**](ManualIntervention.md) | List of manual intervention tasks execution information in phase. | [optional] [default to []]
**name** | **String** | Name of the phase. | [optional] [default to null]
**phaseId** | **String** | ID of the phase. | [optional] [default to null]
**phaseType** | **String** | Type of the phase. | [optional] [default to null]
**rank** | **int** | Rank of the phase. | [optional] [default to null]
**runPlanId** | **String** | Run Plan ID of the phase. | [optional] [default to null]
**startedOn** | [**DateTime**](DateTime.md) | Phase start time. | [optional] [default to null]
**status** | **String** | Status of the phase. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


