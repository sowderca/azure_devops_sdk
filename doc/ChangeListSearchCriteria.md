# azure_devops_sdk.model.ChangeListSearchCriteria

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**compareVersion** | **String** | If provided, a version descriptor to compare against base | [optional] [default to null]
**excludeDeletes** | **bool** | If true, don&#39;t include delete history entries | [optional] [default to null]
**followRenames** | **bool** | Whether or not to follow renames for the given item being queried | [optional] [default to null]
**fromDate** | **String** | If provided, only include history entries created after this date (string) | [optional] [default to null]
**fromVersion** | **String** | If provided, a version descriptor for the earliest change list to include | [optional] [default to null]
**itemPath** | **String** | Path of item to search under. If the itemPaths memebr is used then it will take precedence over this. | [optional] [default to null]
**itemPaths** | **List&lt;String&gt;** | List of item paths to search under. If this member is used then itemPath will be ignored. | [optional] [default to []]
**itemVersion** | **String** | Version of the items to search | [optional] [default to null]
**skip** | **int** | Number of results to skip (used when clicking more...) | [optional] [default to null]
**toDate** | **String** | If provided, only include history entries created before this date (string) | [optional] [default to null]
**top** | **int** | If provided, the maximum number of history entries to return | [optional] [default to null]
**toVersion** | **String** | If provided, a version descriptor for the latest change list to include | [optional] [default to null]
**user** | **String** | Alias or display name of user who made the changes | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


