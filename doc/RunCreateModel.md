# azure_devops_sdk.model.RunCreateModel

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**automated** | **bool** | true if test run is automated, false otherwise. By default it will be false. | [optional] [default to null]
**build** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**buildDropLocation** | **String** | Drop location of the build used for test run. | [optional] [default to null]
**buildFlavor** | **String** | Flavor of the build used for test run. (E.g: Release, Debug) | [optional] [default to null]
**buildPlatform** | **String** | Platform of the build used for test run. (E.g.: x86, amd64) | [optional] [default to null]
**buildReference** | [**BuildConfiguration**](BuildConfiguration.md) |  | [optional] [default to null]
**comment** | **String** | Comments entered by those analyzing the run. | [optional] [default to null]
**completeDate** | **String** | Completed date time of the run. | [optional] [default to null]
**configurationIds** | **List&lt;int&gt;** | IDs of the test configurations associated with the run. | [optional] [default to []]
**controller** | **String** | Name of the test controller used for automated run. | [optional] [default to null]
**customTestFields** | [**List&lt;CustomTestField&gt;**](CustomTestField.md) | Additional properties of test Run. | [optional] [default to []]
**dtlAutEnvironment** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**dtlTestEnvironment** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**dueDate** | **String** | Due date and time for test run. | [optional] [default to null]
**environmentDetails** | [**DtlEnvironmentDetails**](DtlEnvironmentDetails.md) |  | [optional] [default to null]
**errorMessage** | **String** | Error message associated with the run. | [optional] [default to null]
**filter** | [**RunFilter**](RunFilter.md) |  | [optional] [default to null]
**iteration** | **String** | The iteration in which to create the run. Root iteration of the team project will be default | [optional] [default to null]
**name** | **String** | Name of the test run. | [optional] [default to null]
**owner** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**pipelineReference** | [**PipelineReference**](PipelineReference.md) |  | [optional] [default to null]
**plan** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**pointIds** | **List&lt;int&gt;** | IDs of the test points to use in the run. | [optional] [default to []]
**releaseEnvironmentUri** | **String** | URI of release environment associated with the run. | [optional] [default to null]
**releaseReference** | [**ReleaseReference**](ReleaseReference.md) |  | [optional] [default to null]
**releaseUri** | **String** | URI of release associated with the run. | [optional] [default to null]
**runSummary** | [**List&lt;RunSummaryModel&gt;**](RunSummaryModel.md) | Run summary for run Type &#x3D; NoConfigRun. | [optional] [default to []]
**runTimeout** | **String** | Timespan till the run times out. | [optional] [default to null]
**sourceWorkflow** | **String** | SourceWorkFlow(CI/CD) of the test run. | [optional] [default to null]
**startDate** | **String** | Start date time of the run. | [optional] [default to null]
**state** | **String** | The state of the run. Type TestRunState Valid states - Unspecified ,NotStarted, InProgress, Completed, Waiting, Aborted, NeedsInvestigation | [optional] [default to null]
**tags** | [**List&lt;TestTag&gt;**](TestTag.md) | Tags to attach with the test run, maximum of 5 tags can be added to run. | [optional] [default to []]
**testConfigurationsMapping** | **String** | TestConfigurationMapping of the test run. | [optional] [default to null]
**testEnvironmentId** | **String** | ID of the test environment associated with the run. | [optional] [default to null]
**testSettings** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**type** | **String** | Type of the run(RunType) Valid Values : (Unspecified, Normal, Blocking, Web, MtrRunInitiatedFromWeb, RunWithDtlEnv, NoConfigRun) | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


