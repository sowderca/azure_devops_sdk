# azure_devops_sdk.model.TestSuite

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**areaUri** | **String** | Area uri of the test suite. | [optional] [default to null]
**children** | [**List&lt;TestSuite&gt;**](TestSuite.md) | Child test suites of current test suite. | [optional] [default to []]
**defaultConfigurations** | [**List&lt;ShallowReference&gt;**](ShallowReference.md) | Test suite default configuration. | [optional] [default to []]
**defaultTesters** | [**List&lt;ShallowReference&gt;**](ShallowReference.md) | Test suite default testers. | [optional] [default to []]
**id** | **int** | Id of test suite. | [optional] [default to null]
**inheritDefaultConfigurations** | **bool** | Default configuration was inherited or not. | [optional] [default to null]
**lastError** | **String** | Last error for test suite. | [optional] [default to null]
**lastPopulatedDate** | [**DateTime**](DateTime.md) | Last populated date. | [optional] [default to null]
**lastUpdatedBy** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**lastUpdatedDate** | [**DateTime**](DateTime.md) | Last update date. | [optional] [default to null]
**name** | **String** | Name of test suite. | [optional] [default to null]
**parent** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**plan** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**project** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**queryString** | **String** | Test suite query string, for dynamic suites. | [optional] [default to null]
**requirementId** | **int** | Test suite requirement id. | [optional] [default to null]
**revision** | **int** | Test suite revision. | [optional] [default to null]
**state** | **String** | State of test suite. | [optional] [default to null]
**suites** | [**List&lt;ShallowReference&gt;**](ShallowReference.md) | List of shallow reference of suites. | [optional] [default to []]
**suiteType** | **String** | Test suite type. | [optional] [default to null]
**testCaseCount** | **int** | Test cases count. | [optional] [default to null]
**testCasesUrl** | **String** | Test case url. | [optional] [default to null]
**text** | **String** | Used in tree view. If test suite is root suite then, it is name of plan otherwise title of the suite. | [optional] [default to null]
**url** | **String** | Url of test suite. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


