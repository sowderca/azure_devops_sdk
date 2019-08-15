# azure_devops_sdk.model.TestResultParameterModel

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**actionPath** | **String** | Test step path where parameter is referenced. | [optional] [default to null]
**iterationId** | **int** | Iteration ID. | [optional] [default to null]
**parameterName** | **String** | Name of parameter. | [optional] [default to null]
**stepIdentifier** | **String** | This is step Id of test case. For shared step, it is step Id of shared step in test case workitem; step Id in shared step. Example: TestCase workitem has two steps: 1) Normal step with Id &#x3D; 1 2) Shared Step with Id &#x3D; 2. Inside shared step: a) Normal Step with Id &#x3D; 1 Value for StepIdentifier for First step: \&quot;1\&quot; Second step: \&quot;2;1\&quot; | [optional] [default to null]
**url** | **String** | Url of test parameter. | [optional] [default to null]
**value** | **String** | Value of parameter. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


