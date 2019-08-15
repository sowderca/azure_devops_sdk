# azure_devops_sdk.model.GitPullRequest

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**ReferenceLinks**](ReferenceLinks.md) |  | [optional] [default to null]
**artifactId** | **String** | A string which uniquely identifies this pull request. To generate an artifact ID for a pull request, use this template: &#x60;&#x60;&#x60;vstfs:///Git/PullRequestId/{projectId}/{repositoryId}/{pullRequestId}&#x60;&#x60;&#x60; | [optional] [default to null]
**autoCompleteSetBy** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**closedBy** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**closedDate** | [**DateTime**](DateTime.md) | The date when the pull request was closed (completed, abandoned, or merged externally). | [optional] [default to null]
**codeReviewId** | **int** | The code review ID of the pull request. Used internally. | [optional] [default to null]
**commits** | [**List&lt;GitCommitRef&gt;**](GitCommitRef.md) | The commits contained in the pull request. | [optional] [default to []]
**completionOptions** | [**GitPullRequestCompletionOptions**](GitPullRequestCompletionOptions.md) |  | [optional] [default to null]
**completionQueueTime** | [**DateTime**](DateTime.md) | The most recent date at which the pull request entered the queue to be completed. Used internally. | [optional] [default to null]
**createdBy** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**creationDate** | [**DateTime**](DateTime.md) | The date when the pull request was created. | [optional] [default to null]
**description** | **String** | The description of the pull request. | [optional] [default to null]
**forkSource** | [**GitForkRef**](GitForkRef.md) |  | [optional] [default to null]
**isDraft** | **bool** | Draft / WIP pull request. | [optional] [default to null]
**labels** | [**List&lt;WebApiTagDefinition&gt;**](WebApiTagDefinition.md) | The labels associated with the pull request. | [optional] [default to []]
**lastMergeCommit** | [**GitCommitRef**](GitCommitRef.md) |  | [optional] [default to null]
**lastMergeSourceCommit** | [**GitCommitRef**](GitCommitRef.md) |  | [optional] [default to null]
**lastMergeTargetCommit** | [**GitCommitRef**](GitCommitRef.md) |  | [optional] [default to null]
**mergeFailureMessage** | **String** | If set, pull request merge failed for this reason. | [optional] [default to null]
**mergeFailureType** | **String** | The type of failure (if any) of the pull request merge. | [optional] [default to null]
**mergeId** | **String** | The ID of the job used to run the pull request merge. Used internally. | [optional] [default to null]
**mergeOptions** | [**GitPullRequestMergeOptions**](GitPullRequestMergeOptions.md) |  | [optional] [default to null]
**mergeStatus** | **String** | The current status of the pull request merge. | [optional] [default to null]
**pullRequestId** | **int** | The ID of the pull request. | [optional] [default to null]
**remoteUrl** | **String** | Used internally. | [optional] [default to null]
**repository** | [**GitRepository**](GitRepository.md) |  | [optional] [default to null]
**reviewers** | [**List&lt;IdentityRefWithVote&gt;**](IdentityRefWithVote.md) | A list of reviewers on the pull request along with the state of their votes. | [optional] [default to []]
**sourceRefName** | **String** | The name of the source branch of the pull request. | [optional] [default to null]
**status** | **String** | The status of the pull request. | [optional] [default to null]
**supportsIterations** | **bool** | If true, this pull request supports multiple iterations. Iteration support means individual pushes to the source branch of the pull request can be reviewed and comments left in one iteration will be tracked across future iterations. | [optional] [default to null]
**targetRefName** | **String** | The name of the target branch of the pull request. | [optional] [default to null]
**title** | **String** | The title of the pull request. | [optional] [default to null]
**url** | **String** | Used internally. | [optional] [default to null]
**workItemRefs** | [**List&lt;ResourceRef&gt;**](ResourceRef.md) | Any work item references associated with this pull request. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


