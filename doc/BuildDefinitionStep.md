# azure_devops_sdk.model.BuildDefinitionStep

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**alwaysRun** | **bool** | Indicates whether this step should run even if a previous step fails. | [optional] [default to null]
**condition** | **String** | A condition that determines whether this step should run. | [optional] [default to null]
**continueOnError** | **bool** | Indicates whether the phase should continue even if this step fails. | [optional] [default to null]
**displayName** | **String** | The display name for this step. | [optional] [default to null]
**enabled** | **bool** | Indicates whether the step is enabled. | [optional] [default to null]
**environment** | **Map&lt;String, String&gt;** |  | [optional] [default to {}]
**inputs** | **Map&lt;String, String&gt;** |  | [optional] [default to {}]
**refName** | **String** | The reference name for this step. | [optional] [default to null]
**task** | [**TaskDefinitionReference**](TaskDefinitionReference.md) |  | [optional] [default to null]
**timeoutInMinutes** | **int** | The time, in minutes, that this step is allowed to run. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


