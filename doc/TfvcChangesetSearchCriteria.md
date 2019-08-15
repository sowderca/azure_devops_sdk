# azure_devops_sdk.model.TfvcChangesetSearchCriteria

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**author** | **String** | Alias or display name of user who made the changes | [optional] [default to null]
**followRenames** | **bool** | Whether or not to follow renames for the given item being queried | [optional] [default to null]
**fromDate** | **String** | If provided, only include changesets created after this date (string) Think of a better name for this. | [optional] [default to null]
**fromId** | **int** | If provided, only include changesets after this changesetID | [optional] [default to null]
**includeLinks** | **bool** | Whether to include the _links field on the shallow references | [optional] [default to null]
**itemPath** | **String** | Path of item to search under | [optional] [default to null]
**mappings** | [**List&lt;TfvcMappingFilter&gt;**](TfvcMappingFilter.md) |  | [optional] [default to []]
**toDate** | **String** | If provided, only include changesets created before this date (string) Think of a better name for this. | [optional] [default to null]
**toId** | **int** | If provided, a version descriptor for the latest change list to include | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


