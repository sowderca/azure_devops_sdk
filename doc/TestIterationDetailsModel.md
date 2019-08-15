# azure_devops_sdk.model.TestIterationDetailsModel

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**actionResults** | [**List&lt;TestActionResultModel&gt;**](TestActionResultModel.md) | Test step results in an iteration. | [optional] [default to []]
**attachments** | [**List&lt;TestCaseResultAttachmentModel&gt;**](TestCaseResultAttachmentModel.md) | Reference to attachments in test iteration result. | [optional] [default to []]
**comment** | **String** | Comment in test iteration result. | [optional] [default to null]
**completedDate** | [**DateTime**](DateTime.md) | Time when execution completed. | [optional] [default to null]
**durationInMs** | **double** | Duration of execution. | [optional] [default to null]
**errorMessage** | **String** | Error message in test iteration result execution. | [optional] [default to null]
**id** | **int** | ID of test iteration result. | [optional] [default to null]
**outcome** | **String** | Test outcome if test iteration result. | [optional] [default to null]
**parameters** | [**List&lt;TestResultParameterModel&gt;**](TestResultParameterModel.md) | Test parameters in an iteration. | [optional] [default to []]
**startedDate** | [**DateTime**](DateTime.md) | Time when execution started. | [optional] [default to null]
**url** | **String** | Url to test iteration result. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


