# azure_devops_sdk.model.GitQueryCommitsCriteria

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**$skip** | **int** | Number of entries to skip | [optional] [default to null]
**$top** | **int** | Maximum number of entries to retrieve | [optional] [default to null]
**author** | **String** | Alias or display name of the author | [optional] [default to null]
**compareVersion** | [**GitVersionDescriptor**](GitVersionDescriptor.md) |  | [optional] [default to null]
**excludeDeletes** | **bool** | Only applies when an itemPath is specified. This determines whether to exclude delete entries of the specified path. | [optional] [default to null]
**fromCommitId** | **String** | If provided, a lower bound for filtering commits alphabetically | [optional] [default to null]
**fromDate** | **String** | If provided, only include history entries created after this date (string) | [optional] [default to null]
**historyMode** | **String** | What Git history mode should be used. This only applies to the search criteria when Ids &#x3D; null and an itemPath is specified. | [optional] [default to null]
**ids** | **List&lt;String&gt;** | If provided, specifies the exact commit ids of the commits to fetch. May not be combined with other parameters. | [optional] [default to []]
**includeLinks** | **bool** | Whether to include the _links field on the shallow references | [optional] [default to null]
**includePushData** | **bool** | Whether to include the push information | [optional] [default to null]
**includeUserImageUrl** | **bool** | Whether to include the image Url for committers and authors | [optional] [default to null]
**includeWorkItems** | **bool** | Whether to include linked work items | [optional] [default to null]
**itemPath** | **String** | Path of item to search under | [optional] [default to null]
**itemVersion** | [**GitVersionDescriptor**](GitVersionDescriptor.md) |  | [optional] [default to null]
**toCommitId** | **String** | If provided, an upper bound for filtering commits alphabetically | [optional] [default to null]
**toDate** | **String** | If provided, only include history entries created before this date (string) | [optional] [default to null]
**user** | **String** | Alias or display name of the committer | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


