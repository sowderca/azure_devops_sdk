# azure_devops_sdk.model.Build

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**ReferenceLinks**](ReferenceLinks.md) |  | [optional] [default to null]
**agentSpecification** | [**AgentSpecification**](AgentSpecification.md) |  | [optional] [default to null]
**buildNumber** | **String** | The build number/name of the build. | [optional] [default to null]
**buildNumberRevision** | **int** | The build number revision. | [optional] [default to null]
**controller** | [**BuildController**](BuildController.md) |  | [optional] [default to null]
**definition** | [**DefinitionReference**](DefinitionReference.md) |  | [optional] [default to null]
**deleted** | **bool** | Indicates whether the build has been deleted. | [optional] [default to null]
**deletedBy** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**deletedDate** | [**DateTime**](DateTime.md) | The date the build was deleted. | [optional] [default to null]
**deletedReason** | **String** | The description of how the build was deleted. | [optional] [default to null]
**demands** | [**List&lt;Demand&gt;**](Demand.md) | A list of demands that represents the agent capabilities required by this build. | [optional] [default to []]
**finishTime** | [**DateTime**](DateTime.md) | The time that the build was completed. | [optional] [default to null]
**id** | **int** | The ID of the build. | [optional] [default to null]
**keepForever** | **bool** | Indicates whether the build should be skipped by retention policies. | [optional] [default to null]
**lastChangedBy** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**lastChangedDate** | [**DateTime**](DateTime.md) | The date the build was last changed. | [optional] [default to null]
**logs** | [**BuildLogReference**](BuildLogReference.md) |  | [optional] [default to null]
**orchestrationPlan** | [**TaskOrchestrationPlanReference**](TaskOrchestrationPlanReference.md) |  | [optional] [default to null]
**parameters** | **String** | The parameters for the build. | [optional] [default to null]
**plans** | [**List&lt;TaskOrchestrationPlanReference&gt;**](TaskOrchestrationPlanReference.md) | Orchestration plans associated with the build (build, cleanup) | [optional] [default to []]
**priority** | **String** | The build&#39;s priority. | [optional] [default to null]
**project** | [**TeamProjectReference**](TeamProjectReference.md) |  | [optional] [default to null]
**properties** | [**PropertiesCollection**](PropertiesCollection.md) |  | [optional] [default to null]
**quality** | **String** | The quality of the xaml build (good, bad, etc.) | [optional] [default to null]
**queue** | [**AgentPoolQueue**](AgentPoolQueue.md) |  | [optional] [default to null]
**queueOptions** | **String** | Additional options for queueing the build. | [optional] [default to null]
**queuePosition** | **int** | The current position of the build in the queue. | [optional] [default to null]
**queueTime** | [**DateTime**](DateTime.md) | The time that the build was queued. | [optional] [default to null]
**reason** | **String** | The reason that the build was created. | [optional] [default to null]
**repository** | [**BuildRepository**](BuildRepository.md) |  | [optional] [default to null]
**requestedBy** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**requestedFor** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**result** | **String** | The build result. | [optional] [default to null]
**retainedByRelease** | **bool** | Indicates whether the build is retained by a release. | [optional] [default to null]
**sourceBranch** | **String** | The source branch. | [optional] [default to null]
**sourceVersion** | **String** | The source version. | [optional] [default to null]
**startTime** | [**DateTime**](DateTime.md) | The time that the build was started. | [optional] [default to null]
**status** | **String** | The status of the build. | [optional] [default to null]
**tags** | **List&lt;String&gt;** |  | [optional] [default to []]
**triggeredByBuild** | [**Build**](Build.md) |  | [optional] [default to null]
**triggerInfo** | **Map&lt;String, String&gt;** | Sourceprovider-specific information about what triggered the build | [optional] [default to {}]
**uri** | **String** | The URI of the build. | [optional] [default to null]
**url** | **String** | The REST URL of the build. | [optional] [default to null]
**validationResults** | [**List&lt;BuildRequestValidationResult&gt;**](BuildRequestValidationResult.md) |  | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


