# azure_devops_sdk.model.TestCaseResult

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**afnStripId** | **int** | Test attachment ID of action recording. | [optional] [default to null]
**area** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**associatedBugs** | [**List&lt;ShallowReference&gt;**](ShallowReference.md) | Reference to bugs linked to test result. | [optional] [default to []]
**automatedTestId** | **String** | ID representing test method in a dll. | [optional] [default to null]
**automatedTestName** | **String** | Fully qualified name of test executed. | [optional] [default to null]
**automatedTestStorage** | **String** | Container to which test belongs. | [optional] [default to null]
**automatedTestType** | **String** | Type of automated test. | [optional] [default to null]
**automatedTestTypeId** | **String** | TypeId of automated test. | [optional] [default to null]
**build** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**buildReference** | [**BuildReference**](BuildReference.md) |  | [optional] [default to null]
**comment** | **String** | Comment in a test result with maxSize&#x3D; 1000 chars. | [optional] [default to null]
**completedDate** | [**DateTime**](DateTime.md) | Time when test execution completed. Completed date should be greater than StartedDate. | [optional] [default to null]
**computerName** | **String** | Machine name where test executed. | [optional] [default to null]
**configuration** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**createdDate** | [**DateTime**](DateTime.md) | Timestamp when test result created. | [optional] [default to null]
**customFields** | [**List&lt;CustomTestField&gt;**](CustomTestField.md) | Additional properties of test result. | [optional] [default to []]
**durationInMs** | **double** | Duration of test execution in milliseconds. If not provided value will be set as CompletedDate - StartedDate | [optional] [default to null]
**errorMessage** | **String** | Error message in test execution. | [optional] [default to null]
**failingSince** | [**FailingSince**](FailingSince.md) |  | [optional] [default to null]
**failureType** | **String** | Failure type of test result. Valid Value&#x3D; (Known Issue, New Issue, Regression, Unknown, None) | [optional] [default to null]
**id** | **int** | ID of a test result. | [optional] [default to null]
**iterationDetails** | [**List&lt;TestIterationDetailsModel&gt;**](TestIterationDetailsModel.md) | Test result details of test iterations used only for Manual Testing. | [optional] [default to []]
**lastUpdatedBy** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**lastUpdatedDate** | [**DateTime**](DateTime.md) | Last updated datetime of test result. | [optional] [default to null]
**outcome** | **String** | Test outcome of test result. Valid values &#x3D; (Unspecified, None, Passed, Failed, Inconclusive, Timeout, Aborted, Blocked, NotExecuted, Warning, Error, NotApplicable, Paused, InProgress, NotImpacted) | [optional] [default to null]
**owner** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**priority** | **int** | Priority of test executed. | [optional] [default to null]
**project** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**release** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**releaseReference** | [**ReleaseReference**](ReleaseReference.md) |  | [optional] [default to null]
**resetCount** | **int** | ResetCount. | [optional] [default to null]
**resolutionState** | **String** | Resolution state of test result. | [optional] [default to null]
**resolutionStateId** | **int** | ID of resolution state. | [optional] [default to null]
**resultGroupType** | **String** | Hierarchy type of the result, default value of None means its leaf node. | [optional] [default to null]
**revision** | **int** | Revision number of test result. | [optional] [default to null]
**runBy** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**stackTrace** | **String** | Stacktrace with maxSize&#x3D; 1000 chars. | [optional] [default to null]
**startedDate** | [**DateTime**](DateTime.md) | Time when test execution started. | [optional] [default to null]
**state** | **String** | State of test result. Type TestRunState. | [optional] [default to null]
**subResults** | [**List&lt;TestSubResult&gt;**](TestSubResult.md) | List of sub results inside a test result, if ResultGroupType is not None, it holds corresponding type sub results. | [optional] [default to []]
**testCase** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**testCaseReferenceId** | **int** | Reference ID of test used by test result. Type TestResultMetaData | [optional] [default to null]
**testCaseRevision** | **int** | TestCaseRevision Number. | [optional] [default to null]
**testCaseTitle** | **String** | Name of test. | [optional] [default to null]
**testPlan** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**testPoint** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**testRun** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**testSuite** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**url** | **String** | Url of test result. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


