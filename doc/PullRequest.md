# azure_devops_sdk.model.PullRequest

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**ReferenceLinks**](ReferenceLinks.md) |  | [optional] [default to null]
**author** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**currentState** | **String** | Current state of the pull request, e.g. open, merged, closed, conflicts, etc. | [optional] [default to null]
**description** | **String** | Description for the pull request. | [optional] [default to null]
**id** | **String** | Unique identifier for the pull request | [optional] [default to null]
**providerName** | **String** | The name of the provider this pull request is associated with. | [optional] [default to null]
**sourceBranchRef** | **String** | Source branch ref of this pull request | [optional] [default to null]
**sourceRepositoryOwner** | **String** | Owner of the source repository of this pull request | [optional] [default to null]
**targetBranchRef** | **String** | Target branch ref of this pull request | [optional] [default to null]
**targetRepositoryOwner** | **String** | Owner of the target repository of this pull request | [optional] [default to null]
**title** | **String** | Title of the pull request. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


