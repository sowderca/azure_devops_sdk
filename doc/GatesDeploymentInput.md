# azure_devops_sdk.model.GatesDeploymentInput

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**condition** | **String** | Gets or sets the job condition. | [optional] [default to null]
**jobCancelTimeoutInMinutes** | **int** | Gets or sets the job cancel timeout in minutes for deployment which are cancelled by user for this release environment. | [optional] [default to null]
**overrideInputs** | **Map&lt;String, String&gt;** | Gets or sets the override inputs. | [optional] [default to {}]
**timeoutInMinutes** | **int** | Gets or sets the job execution timeout in minutes for deployment which are queued against this release environment. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


