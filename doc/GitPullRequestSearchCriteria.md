# azure_devops_sdk.model.GitPullRequestSearchCriteria

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**creatorId** | **String** | If set, search for pull requests that were created by this identity. | [optional] [default to null]
**includeLinks** | **bool** | Whether to include the _links field on the shallow references | [optional] [default to null]
**repositoryId** | **String** | If set, search for pull requests whose target branch is in this repository. | [optional] [default to null]
**reviewerId** | **String** | If set, search for pull requests that have this identity as a reviewer. | [optional] [default to null]
**sourceRefName** | **String** | If set, search for pull requests from this branch. | [optional] [default to null]
**sourceRepositoryId** | **String** | If set, search for pull requests whose source branch is in this repository. | [optional] [default to null]
**status** | **String** | If set, search for pull requests that are in this state. Defaults to Active if unset. | [optional] [default to null]
**targetRefName** | **String** | If set, search for pull requests into this branch. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


