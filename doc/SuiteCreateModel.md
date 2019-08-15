# azure_devops_sdk.model.SuiteCreateModel

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of test suite. | [optional] [default to null]
**queryString** | **String** | For query based suites, query string that defines the suite. | [optional] [default to null]
**requirementIds** | **List&lt;int&gt;** | For requirements test suites, the IDs of the requirements. | [optional] [default to []]
**suiteType** | **String** | Type of test suite to create. It can have value from DynamicTestSuite, StaticTestSuite and RequirementTestSuite. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


