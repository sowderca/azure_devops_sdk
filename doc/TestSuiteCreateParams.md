# azure_devops_sdk.model.TestSuiteCreateParams

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**defaultConfigurations** | [**List&lt;TestConfigurationReference&gt;**](TestConfigurationReference.md) | Test suite default configurations. | [optional] [default to []]
**defaultTesters** | [**List&lt;IdentityRef&gt;**](IdentityRef.md) | Test suite default testers. | [optional] [default to []]
**inheritDefaultConfigurations** | **bool** | Default configuration was inherited or not. | [optional] [default to null]
**name** | **String** | Name of test suite. | [optional] [default to null]
**parentSuite** | [**TestSuiteReference**](TestSuiteReference.md) |  | [optional] [default to null]
**queryString** | **String** | Test suite query string, for dynamic suites. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


