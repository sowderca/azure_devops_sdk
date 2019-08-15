# azure_devops_sdk.model.ReleaseGates

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**deploymentJobs** | [**List&lt;DeploymentJob&gt;**](DeploymentJob.md) | Contains the gates job details of each evaluation. | [optional] [default to []]
**id** | **int** | ID of release gates. | [optional] [default to null]
**ignoredGates** | [**List&lt;IgnoredGate&gt;**](IgnoredGate.md) | List of ignored gates. | [optional] [default to []]
**lastModifiedOn** | [**DateTime**](DateTime.md) | Gates last modified time. | [optional] [default to null]
**runPlanId** | **String** | Run plan ID of the gates. | [optional] [default to null]
**stabilizationCompletedOn** | [**DateTime**](DateTime.md) | Gates stabilization completed date and time. | [optional] [default to null]
**startedOn** | [**DateTime**](DateTime.md) | Gates evaluation started time. | [optional] [default to null]
**status** | **String** | Status of release gates. | [optional] [default to null]
**succeedingSince** | [**DateTime**](DateTime.md) | Date and time at which all gates executed successfully. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


