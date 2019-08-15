# azure_devops_sdk.model.TestResultMetaData

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**automatedTestName** | **String** | AutomatedTestName of test result. | [optional] [default to null]
**automatedTestStorage** | **String** | AutomatedTestStorage of test result. | [optional] [default to null]
**flakyIdentifiers** | [**List&lt;TestFlakyIdentifier&gt;**](TestFlakyIdentifier.md) | List of Flaky Identifier for TestCaseReferenceId | [optional] [default to []]
**owner** | **String** | Owner of test result. | [optional] [default to null]
**priority** | **int** | Priority of test result. | [optional] [default to null]
**testCaseReferenceId** | **int** | ID of TestCaseReference. | [optional] [default to null]
**testCaseTitle** | **String** | TestCaseTitle of test result. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


