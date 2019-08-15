# azure_devops_sdk.model.TaskGroupStep

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**alwaysRun** | **bool** | Gets or sets as &#39;true&#39; to run the task always, &#39;false&#39; otherwise. | [optional] [default to null]
**condition** | **String** | Gets or sets condition for the task. | [optional] [default to null]
**continueOnError** | **bool** | Gets or sets as &#39;true&#39; to continue on error, &#39;false&#39; otherwise. | [optional] [default to null]
**displayName** | **String** | Gets or sets the display name. | [optional] [default to null]
**enabled** | **bool** | Gets or sets as task is enabled or not. | [optional] [default to null]
**environment** | **Map&lt;String, String&gt;** | Gets dictionary of environment variables. | [optional] [default to {}]
**inputs** | **Map&lt;String, String&gt;** | Gets or sets dictionary of inputs. | [optional] [default to {}]
**task** | [**TaskDefinitionReference**](TaskDefinitionReference.md) |  | [optional] [default to null]
**timeoutInMinutes** | **int** | Gets or sets the maximum time, in minutes, that a task is allowed to execute on agent before being cancelled by server. A zero value indicates an infinite timeout. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


