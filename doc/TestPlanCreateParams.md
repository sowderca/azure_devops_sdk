# azure_devops_sdk.model.TestPlanCreateParams

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**areaPath** | **String** | Area of the test plan. | [optional] [default to null]
**buildDefinition** | [**BuildDefinitionReference**](BuildDefinitionReference.md) |  | [optional] [default to null]
**buildId** | **int** | Build to be tested. | [optional] [default to null]
**description** | **String** | Description of the test plan. | [optional] [default to null]
**endDate** | [**DateTime**](DateTime.md) | End date for the test plan. | [optional] [default to null]
**iteration** | **String** | Iteration path of the test plan. | [optional] [default to null]
**name** | **String** | Name of the test plan. | [optional] [default to null]
**owner** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**releaseEnvironmentDefinition** | [**ReleaseEnvironmentDefinitionReference**](ReleaseEnvironmentDefinitionReference.md) |  | [optional] [default to null]
**startDate** | [**DateTime**](DateTime.md) | Start date for the test plan. | [optional] [default to null]
**state** | **String** | State of the test plan. | [optional] [default to null]
**testOutcomeSettings** | [**TestOutcomeSettings**](TestOutcomeSettings.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


