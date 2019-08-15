# azure_devops_sdk.model.TestSubResult

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**comment** | **String** | Comment in sub result. | [optional] [default to null]
**completedDate** | [**DateTime**](DateTime.md) | Time when test execution completed. | [optional] [default to null]
**computerName** | **String** | Machine where test executed. | [optional] [default to null]
**configuration** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**customFields** | [**List&lt;CustomTestField&gt;**](CustomTestField.md) | Additional properties of sub result. | [optional] [default to []]
**displayName** | **String** | Name of sub result. | [optional] [default to null]
**durationInMs** | **int** | Duration of test execution. | [optional] [default to null]
**errorMessage** | **String** | Error message in sub result. | [optional] [default to null]
**id** | **int** | ID of sub result. | [optional] [default to null]
**lastUpdatedDate** | [**DateTime**](DateTime.md) | Time when result last updated. | [optional] [default to null]
**outcome** | **String** | Outcome of sub result. | [optional] [default to null]
**parentId** | **int** | Immediate parent ID of sub result. | [optional] [default to null]
**resultGroupType** | **String** | Hierarchy type of the result, default value of None means its leaf node. | [optional] [default to null]
**sequenceId** | **int** | Index number of sub result. | [optional] [default to null]
**stackTrace** | **String** | Stacktrace. | [optional] [default to null]
**startedDate** | [**DateTime**](DateTime.md) | Time when test execution started. | [optional] [default to null]
**subResults** | [**List&lt;TestSubResult&gt;**](TestSubResult.md) | List of sub results inside a sub result, if ResultGroupType is not None, it holds corresponding type sub results. | [optional] [default to []]
**testResult** | [**TestCaseResultIdentifier**](TestCaseResultIdentifier.md) |  | [optional] [default to null]
**url** | **String** | Url of sub result. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


