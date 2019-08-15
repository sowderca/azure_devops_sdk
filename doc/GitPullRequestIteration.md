# azure_devops_sdk.model.GitPullRequestIteration

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**ReferenceLinks**](ReferenceLinks.md) |  | [optional] [default to null]
**author** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**changeList** | [**List&lt;GitPullRequestChange&gt;**](GitPullRequestChange.md) | Changes included with the pull request iteration. | [optional] [default to []]
**commits** | [**List&lt;GitCommitRef&gt;**](GitCommitRef.md) | The commits included with the pull request iteration. | [optional] [default to []]
**commonRefCommit** | [**GitCommitRef**](GitCommitRef.md) |  | [optional] [default to null]
**createdDate** | [**DateTime**](DateTime.md) | The creation date of the pull request iteration. | [optional] [default to null]
**description** | **String** | Description of the pull request iteration. | [optional] [default to null]
**hasMoreCommits** | **bool** | Indicates if the Commits property contains a truncated list of commits in this pull request iteration. | [optional] [default to null]
**id** | **int** | ID of the pull request iteration. Iterations are created as a result of creating and pushing updates to a pull request. | [optional] [default to null]
**newTargetRefName** | **String** | If the iteration reason is Retarget, this is the refName of the new target | [optional] [default to null]
**oldTargetRefName** | **String** | If the iteration reason is Retarget, this is the original target refName | [optional] [default to null]
**push** | [**GitPushRef**](GitPushRef.md) |  | [optional] [default to null]
**reason** | **String** | The reason for which the pull request iteration was created. | [optional] [default to null]
**sourceRefCommit** | [**GitCommitRef**](GitCommitRef.md) |  | [optional] [default to null]
**targetRefCommit** | [**GitCommitRef**](GitCommitRef.md) |  | [optional] [default to null]
**updatedDate** | [**DateTime**](DateTime.md) | The updated date of the pull request iteration. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


