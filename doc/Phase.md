# azure_devops_sdk.model.Phase

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**condition** | **String** | The condition that must be true for this phase to execute. | [optional] [default to null]
**dependencies** | [**List&lt;Dependency&gt;**](Dependency.md) |  | [optional] [default to []]
**jobAuthorizationScope** | **String** | The job authorization scope for builds queued against this definition. | [optional] [default to null]
**jobCancelTimeoutInMinutes** | **int** | The cancellation timeout, in minutes, for builds queued against this definition. | [optional] [default to null]
**jobTimeoutInMinutes** | **int** | The job execution timeout, in minutes, for builds queued against this definition. | [optional] [default to null]
**name** | **String** | The name of the phase. | [optional] [default to null]
**refName** | **String** | The unique ref name of the phase. | [optional] [default to null]
**steps** | [**List&lt;BuildDefinitionStep&gt;**](BuildDefinitionStep.md) |  | [optional] [default to []]
**target** | [**PhaseTarget**](PhaseTarget.md) |  | [optional] [default to null]
**variables** | [**Map&lt;String, BuildDefinitionVariable&gt;**](BuildDefinitionVariable.md) |  | [optional] [default to {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


