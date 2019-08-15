# azure_devops_sdk.model.ReleaseDefinitionEnvironment

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**badgeUrl** | **String** | Gets or sets the BadgeUrl. BadgeUrl will be used when Badge will be enabled in Release Definition Environment. | [optional] [default to null]
**conditions** | [**List&lt;Condition&gt;**](Condition.md) | Gets or sets the environment conditions. | [optional] [default to []]
**currentRelease** | [**ReleaseShallowReference**](ReleaseShallowReference.md) |  | [optional] [default to null]
**demands** | [**List&lt;Demand&gt;**](Demand.md) | Gets or sets the demands. | [optional] [default to []]
**deployPhases** | [**List&lt;DeployPhase&gt;**](DeployPhase.md) | Gets or sets the deploy phases of environment. | [optional] [default to []]
**deployStep** | [**ReleaseDefinitionDeployStep**](ReleaseDefinitionDeployStep.md) |  | [optional] [default to null]
**environmentOptions** | [**EnvironmentOptions**](EnvironmentOptions.md) |  | [optional] [default to null]
**environmentTriggers** | [**List&lt;EnvironmentTrigger&gt;**](EnvironmentTrigger.md) | Gets or sets the triggers on environment. | [optional] [default to []]
**executionPolicy** | [**EnvironmentExecutionPolicy**](EnvironmentExecutionPolicy.md) |  | [optional] [default to null]
**id** | **int** | Gets and sets the ID of the ReleaseDefinitionEnvironment. | [optional] [default to null]
**name** | **String** | Gets and sets the name of the ReleaseDefinitionEnvironment. | [optional] [default to null]
**owner** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**postDeployApprovals** | [**ReleaseDefinitionApprovals**](ReleaseDefinitionApprovals.md) |  | [optional] [default to null]
**postDeploymentGates** | [**ReleaseDefinitionGatesStep**](ReleaseDefinitionGatesStep.md) |  | [optional] [default to null]
**preDeployApprovals** | [**ReleaseDefinitionApprovals**](ReleaseDefinitionApprovals.md) |  | [optional] [default to null]
**preDeploymentGates** | [**ReleaseDefinitionGatesStep**](ReleaseDefinitionGatesStep.md) |  | [optional] [default to null]
**processParameters** | [**ProcessParameters**](ProcessParameters.md) |  | [optional] [default to null]
**properties** | [**PropertiesCollection**](PropertiesCollection.md) |  | [optional] [default to null]
**queueId** | **int** | Gets or sets the queue ID. | [optional] [default to null]
**rank** | **int** | Gets and sets the rank of the ReleaseDefinitionEnvironment. | [optional] [default to null]
**retentionPolicy** | [**EnvironmentRetentionPolicy**](EnvironmentRetentionPolicy.md) |  | [optional] [default to null]
**schedules** | [**List&lt;ReleaseSchedule&gt;**](ReleaseSchedule.md) | Gets or sets the schedules | [optional] [default to []]
**variableGroups** | **List&lt;int&gt;** | Gets or sets the variable groups. | [optional] [default to []]
**variables** | [**Map&lt;String, ConfigurationVariableValue&gt;**](ConfigurationVariableValue.md) | Gets and sets the variables. | [optional] [default to {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


