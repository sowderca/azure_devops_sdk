# azure_devops_sdk.model.WorkflowTask

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**alwaysRun** | **bool** | Gets or sets as the task always run or not. | [optional] [default to null]
**condition** | **String** | Gets or sets the task condition. | [optional] [default to null]
**continueOnError** | **bool** | Gets or sets as the task continue run on error or not. | [optional] [default to null]
**definitionType** | **String** | Gets or sets the task definition type. Example:- &#39;Agent&#39;, DeploymentGroup&#39;, &#39;Server&#39; or &#39;ServerGate&#39;. | [optional] [default to null]
**enabled** | **bool** | Gets or sets as the task enabled or not. | [optional] [default to null]
**environment** | **Map&lt;String, String&gt;** | Gets or sets the task environment variables. | [optional] [default to {}]
**inputs** | **Map&lt;String, String&gt;** | Gets or sets the task inputs. | [optional] [default to {}]
**name** | **String** | Gets or sets the name of the task. | [optional] [default to null]
**overrideInputs** | **Map&lt;String, String&gt;** | Gets or sets the task override inputs. | [optional] [default to {}]
**refName** | **String** | Gets or sets the reference name of the task. | [optional] [default to null]
**taskId** | **String** | Gets or sets the ID of the task. | [optional] [default to null]
**timeoutInMinutes** | **int** | Gets or sets the task timeout. | [optional] [default to null]
**version** | **String** | Gets or sets the version of the task. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


