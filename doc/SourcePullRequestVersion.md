# azure_devops_sdk.model.SourcePullRequestVersion

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**iterationId** | **String** | Pull Request Iteration Id for which the release will publish status. | [optional] [default to null]
**pullRequestId** | **String** | Pull Request Id for which the release will publish status. | [optional] [default to null]
**pullRequestMergedAt** | [**DateTime**](DateTime.md) | Date and time of the pull request merge creation. It is required to keep timeline record of Releases created by pull request. | [optional] [default to null]
**sourceBranch** | **String** | Source branch of the Pull Request. | [optional] [default to null]
**sourceBranchCommitId** | **String** | Source branch commit Id of the Pull Request for which the release will publish status. | [optional] [default to null]
**targetBranch** | **String** | Target branch of the Pull Request. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


