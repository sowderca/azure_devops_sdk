# azure_devops_sdk.model.RunUpdateModel

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**build** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**buildDropLocation** | **String** | Drop location of the build used for test run. | [optional] [default to null]
**buildFlavor** | **String** | Flavor of the build used for test run. (E.g: Release, Debug) | [optional] [default to null]
**buildPlatform** | **String** | Platform of the build used for test run. (E.g.: x86, amd64) | [optional] [default to null]
**comment** | **String** | Comments entered by those analyzing the run. | [optional] [default to null]
**completedDate** | **String** | Completed date time of the run. | [optional] [default to null]
**controller** | **String** | Name of the test controller used for automated run. | [optional] [default to null]
**deleteInProgressResults** | **bool** | true to delete inProgess Results , false otherwise. | [optional] [default to null]
**dtlAutEnvironment** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**dtlEnvironment** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**dtlEnvironmentDetails** | [**DtlEnvironmentDetails**](DtlEnvironmentDetails.md) |  | [optional] [default to null]
**dueDate** | **String** | Due date and time for test run. | [optional] [default to null]
**errorMessage** | **String** | Error message associated with the run. | [optional] [default to null]
**iteration** | **String** | The iteration in which to create the run. | [optional] [default to null]
**logEntries** | [**List&lt;TestMessageLogDetails&gt;**](TestMessageLogDetails.md) | Log entries associated with the run. Use a comma-separated list of multiple log entry objects. { logEntry }, { logEntry }, ... | [optional] [default to []]
**name** | **String** | Name of the test run. | [optional] [default to null]
**releaseEnvironmentUri** | **String** | URI of release environment associated with the run. | [optional] [default to null]
**releaseUri** | **String** | URI of release associated with the run. | [optional] [default to null]
**runSummary** | [**List&lt;RunSummaryModel&gt;**](RunSummaryModel.md) | Run summary for run Type &#x3D; NoConfigRun. | [optional] [default to []]
**sourceWorkflow** | **String** | SourceWorkFlow(CI/CD) of the test run. | [optional] [default to null]
**startedDate** | **String** | Start date time of the run. | [optional] [default to null]
**state** | **String** | The state of the test run Below are the valid values - NotStarted, InProgress, Completed, Aborted, Waiting | [optional] [default to null]
**substate** | **String** | The types of sub states for test run. | [optional] [default to null]
**tags** | [**List&lt;TestTag&gt;**](TestTag.md) | Tags to attach with the test run. | [optional] [default to []]
**testEnvironmentId** | **String** | ID of the test environment associated with the run. | [optional] [default to null]
**testSettings** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


