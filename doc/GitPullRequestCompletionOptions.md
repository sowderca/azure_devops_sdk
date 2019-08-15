# azure_devops_sdk.model.GitPullRequestCompletionOptions

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bypassPolicy** | **bool** | If true, policies will be explicitly bypassed while the pull request is completed. | [optional] [default to null]
**bypassReason** | **String** | If policies are bypassed, this reason is stored as to why bypass was used. | [optional] [default to null]
**deleteSourceBranch** | **bool** | If true, the source branch of the pull request will be deleted after completion. | [optional] [default to null]
**mergeCommitMessage** | **String** | If set, this will be used as the commit message of the merge commit. | [optional] [default to null]
**mergeStrategy** | **String** | Specify the strategy used to merge the pull request during completion. If MergeStrategy is not set to any value, a no-FF merge will be created if SquashMerge &#x3D;&#x3D; false. If MergeStrategy is not set to any value, the pull request commits will be squash if SquashMerge &#x3D;&#x3D; true. The SquashMerge member is deprecated. It is recommended that you explicitly set MergeStrategy in all cases. If an explicit value is provided for MergeStrategy, the SquashMerge member will be ignored. | [optional] [default to null]
**squashMerge** | **bool** | SquashMerge is deprecated. You should explicity set the value of MergeStrategy. If MergeStrategy is set to any value, the SquashMerge value will be ignored. If MergeStrategy is not set, the merge strategy will be no-fast-forward if this flag is false, or squash if true. | [optional] [default to null]
**transitionWorkItems** | **bool** | If true, we will attempt to transition any work items linked to the pull request into the next logical state (i.e. Active -&gt; Resolved) | [optional] [default to null]
**triggeredByAutoComplete** | **bool** | If true, the current completion attempt was triggered via auto-complete. Used internally. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


