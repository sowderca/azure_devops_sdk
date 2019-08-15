# azure_devops_sdk.model.SuiteUpdateModel

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**defaultConfigurations** | [**List&lt;ShallowReference&gt;**](ShallowReference.md) | Shallow reference of default configurations for the suite. | [optional] [default to []]
**defaultTesters** | [**List&lt;ShallowReference&gt;**](ShallowReference.md) | Shallow reference of test suite. | [optional] [default to []]
**inheritDefaultConfigurations** | **bool** | Specifies if the default configurations have to be inherited from the parent test suite in which the test suite is created. | [optional] [default to null]
**name** | **String** | Test suite name | [optional] [default to null]
**parent** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**queryString** | **String** | For query based suites, the new query string. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


