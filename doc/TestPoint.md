# azure_devops_sdk.model.TestPoint

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**assignedTo** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**automated** | **bool** | Automated. | [optional] [default to null]
**comment** | **String** | Comment associated with test point. | [optional] [default to null]
**configuration** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**failureType** | **String** | Failure type of test point. | [optional] [default to null]
**id** | **int** | ID of the test point. | [optional] [default to null]
**lastResetToActive** | [**DateTime**](DateTime.md) | Last date when test point was reset to Active. | [optional] [default to null]
**lastResolutionStateId** | **int** | Last resolution state id of test point. | [optional] [default to null]
**lastResult** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**lastResultDetails** | [**LastResultDetails**](LastResultDetails.md) |  | [optional] [default to null]
**lastResultState** | **String** | Last result state of test point. | [optional] [default to null]
**lastRunBuildNumber** | **String** | LastRun build number of test point. | [optional] [default to null]
**lastTestRun** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**lastUpdatedBy** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**lastUpdatedDate** | [**DateTime**](DateTime.md) | Last updated date of test point. | [optional] [default to null]
**outcome** | **String** | Outcome of test point. | [optional] [default to null]
**revision** | **int** | Revision number. | [optional] [default to null]
**state** | **String** | State of test point. | [optional] [default to null]
**suite** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**testCase** | [**WorkItemReference**](WorkItemReference.md) |  | [optional] [default to null]
**testPlan** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**url** | **String** | Test point Url. | [optional] [default to null]
**workItemProperties** | [**List&lt;Object&gt;**](Object.md) | Work item properties of test point. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


