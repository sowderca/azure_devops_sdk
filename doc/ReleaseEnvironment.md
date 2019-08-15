# azure_devops_sdk.model.ReleaseEnvironment

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**conditions** | [**List&lt;ReleaseCondition&gt;**](ReleaseCondition.md) | Gets list of conditions. | [optional] [default to []]
**createdOn** | [**DateTime**](DateTime.md) | Gets date on which it got created. | [optional] [default to null]
**definitionEnvironmentId** | **int** | Gets definition environment id. | [optional] [default to null]
**deployPhasesSnapshot** | [**List&lt;DeployPhase&gt;**](DeployPhase.md) | Gets list of deploy phases snapshot. | [optional] [default to []]
**deploySteps** | [**List&lt;DeploymentAttempt&gt;**](DeploymentAttempt.md) | Gets deploy steps. | [optional] [default to []]
**environmentOptions** | [**EnvironmentOptions**](EnvironmentOptions.md) |  | [optional] [default to null]
**id** | **int** | Gets the unique identifier of this field. | [optional] [default to null]
**modifiedOn** | [**DateTime**](DateTime.md) | Gets date on which it got modified. | [optional] [default to null]
**name** | **String** | Gets name. | [optional] [default to null]
**nextScheduledUtcTime** | [**DateTime**](DateTime.md) | Gets next scheduled UTC time. | [optional] [default to null]
**owner** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**postApprovalsSnapshot** | [**ReleaseDefinitionApprovals**](ReleaseDefinitionApprovals.md) |  | [optional] [default to null]
**postDeployApprovals** | [**List&lt;ReleaseApproval&gt;**](ReleaseApproval.md) | Gets list of post deploy approvals. | [optional] [default to []]
**postDeploymentGatesSnapshot** | [**ReleaseDefinitionGatesStep**](ReleaseDefinitionGatesStep.md) |  | [optional] [default to null]
**preApprovalsSnapshot** | [**ReleaseDefinitionApprovals**](ReleaseDefinitionApprovals.md) |  | [optional] [default to null]
**preDeployApprovals** | [**List&lt;ReleaseApproval&gt;**](ReleaseApproval.md) | Gets list of pre deploy approvals. | [optional] [default to []]
**preDeploymentGatesSnapshot** | [**ReleaseDefinitionGatesStep**](ReleaseDefinitionGatesStep.md) |  | [optional] [default to null]
**processParameters** | [**ProcessParameters**](ProcessParameters.md) |  | [optional] [default to null]
**rank** | **int** | Gets rank. | [optional] [default to null]
**release** | [**ReleaseShallowReference**](ReleaseShallowReference.md) |  | [optional] [default to null]
**releaseCreatedBy** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**releaseDefinition** | [**ReleaseDefinitionShallowReference**](ReleaseDefinitionShallowReference.md) |  | [optional] [default to null]
**releaseId** | **int** | Gets release id. | [optional] [default to null]
**scheduledDeploymentTime** | [**DateTime**](DateTime.md) | Gets schedule deployment time of release environment. | [optional] [default to null]
**schedules** | [**List&lt;ReleaseSchedule&gt;**](ReleaseSchedule.md) | Gets list of schedules. | [optional] [default to []]
**status** | **String** | Gets environment status. | [optional] [default to null]
**timeToDeploy** | **double** | Gets time to deploy. | [optional] [default to null]
**triggerReason** | **String** | Gets trigger reason. | [optional] [default to null]
**variableGroups** | [**List&lt;VariableGroup&gt;**](VariableGroup.md) | Gets the list of variable groups. | [optional] [default to []]
**variables** | [**Map&lt;String, ConfigurationVariableValue&gt;**](ConfigurationVariableValue.md) | Gets the dictionary of variables. | [optional] [default to {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


