# azure_devops_sdk.model.DeploymentAttempt

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attempt** | **int** | Deployment attempt. | [optional] [default to null]
**deploymentId** | **int** | ID of the deployment. | [optional] [default to null]
**hasStarted** | **bool** | Specifies whether deployment has started or not. | [optional] [default to null]
**id** | **int** | ID of deployment. | [optional] [default to null]
**issues** | [**List&lt;Issue&gt;**](Issue.md) | All the issues related to the deployment. | [optional] [default to []]
**lastModifiedBy** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**lastModifiedOn** | [**DateTime**](DateTime.md) | Time when this deployment last modified. | [optional] [default to null]
**operationStatus** | **String** | Deployment operation status. | [optional] [default to null]
**postDeploymentGates** | [**ReleaseGates**](ReleaseGates.md) |  | [optional] [default to null]
**preDeploymentGates** | [**ReleaseGates**](ReleaseGates.md) |  | [optional] [default to null]
**queuedOn** | [**DateTime**](DateTime.md) | When this deployment queued on. | [optional] [default to null]
**reason** | **String** | Reason for the deployment. | [optional] [default to null]
**releaseDeployPhases** | [**List&lt;ReleaseDeployPhase&gt;**](ReleaseDeployPhase.md) | List of release deployphases executed in this deployment. | [optional] [default to []]
**requestedBy** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**requestedFor** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**status** | **String** | status of the deployment. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


