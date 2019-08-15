# azure_devops_sdk.model.PlanUpdateModel

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**area** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**build** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**buildDefinition** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**configurationIds** | **List&lt;int&gt;** | IDs of configurations to be applied when new test suites and test cases are added to the test plan. | [optional] [default to []]
**description** | **String** | Description of the test plan. | [optional] [default to null]
**endDate** | **String** | End date for the test plan. | [optional] [default to null]
**iteration** | **String** | Iteration path assigned to the test plan. This indicates when the target iteration by which the testing in this plan is supposed to be complete and the product is ready to be released. | [optional] [default to null]
**name** | **String** | Name of the test plan. | [optional] [default to null]
**owner** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**releaseEnvironmentDefinition** | [**ReleaseEnvironmentDefinitionReference**](ReleaseEnvironmentDefinitionReference.md) |  | [optional] [default to null]
**startDate** | **String** | Start date for the test plan. | [optional] [default to null]
**state** | **String** | State of the test plan. | [optional] [default to null]
**testOutcomeSettings** | [**TestOutcomeSettings**](TestOutcomeSettings.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


