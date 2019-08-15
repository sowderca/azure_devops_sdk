# azure_devops_sdk.model.TaskGroupCreateParameter

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**author** | **String** | Sets author name of the task group. | [optional] [default to null]
**category** | **String** | Sets category of the task group. | [optional] [default to null]
**description** | **String** | Sets description of the task group. | [optional] [default to null]
**friendlyName** | **String** | Sets friendly name of the task group. | [optional] [default to null]
**iconUrl** | **String** | Sets url icon of the task group. | [optional] [default to null]
**inputs** | [**List&lt;TaskInputDefinition&gt;**](TaskInputDefinition.md) | Sets input for the task group. | [optional] [default to []]
**instanceNameFormat** | **String** | Sets display name of the task group. | [optional] [default to null]
**name** | **String** | Sets name of the task group. | [optional] [default to null]
**parentDefinitionId** | **String** | Sets parent task group Id. This is used while creating a draft task group. | [optional] [default to null]
**runsOn** | **List&lt;String&gt;** | Sets RunsOn of the task group. Value can be &#39;Agent&#39;, &#39;Server&#39; or &#39;DeploymentGroup&#39;. | [optional] [default to []]
**tasks** | [**List&lt;TaskGroupStep&gt;**](TaskGroupStep.md) | Sets tasks for the task group. | [optional] [default to []]
**version** | [**TaskVersion**](TaskVersion.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


