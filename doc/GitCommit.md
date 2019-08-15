# azure_devops_sdk.model.GitCommit

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**ReferenceLinks**](ReferenceLinks.md) |  | [optional] [default to null]
**author** | [**GitUserDate**](GitUserDate.md) |  | [optional] [default to null]
**changeCounts** | [**ChangeCountDictionary**](ChangeCountDictionary.md) |  | [optional] [default to null]
**changes** | [**List&lt;GitChange&gt;**](GitChange.md) | An enumeration of the changes included with the commit. | [optional] [default to []]
**comment** | **String** | Comment or message of the commit. | [optional] [default to null]
**commentTruncated** | **bool** | Indicates if the comment is truncated from the full Git commit comment message. | [optional] [default to null]
**commitId** | **String** | ID (SHA-1) of the commit. | [optional] [default to null]
**committer** | [**GitUserDate**](GitUserDate.md) |  | [optional] [default to null]
**parents** | **List&lt;String&gt;** | An enumeration of the parent commit IDs for this commit. | [optional] [default to []]
**push** | [**GitPushRef**](GitPushRef.md) |  | [optional] [default to null]
**remoteUrl** | **String** | Remote URL path to the commit. | [optional] [default to null]
**statuses** | [**List&lt;GitStatus&gt;**](GitStatus.md) | A list of status metadata from services and extensions that may associate additional information to the commit. | [optional] [default to []]
**url** | **String** | REST URL for this resource. | [optional] [default to null]
**workItems** | [**List&lt;ResourceRef&gt;**](ResourceRef.md) | A list of workitems associated with this commit. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


