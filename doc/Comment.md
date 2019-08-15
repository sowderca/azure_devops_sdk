# azure_devops_sdk.model.Comment

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**ReferenceLinks**](ReferenceLinks.md) |  | [optional] [default to null]
**author** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**commentType** | **String** | The comment type at the time of creation. | [optional] [default to null]
**content** | **String** | The comment content. | [optional] [default to null]
**id** | **int** | The comment ID. IDs start at 1 and are unique to a pull request. | [optional] [default to null]
**isDeleted** | **bool** | Whether or not this comment was soft-deleted. | [optional] [default to null]
**lastContentUpdatedDate** | [**DateTime**](DateTime.md) | The date the comment&#39;s content was last updated. | [optional] [default to null]
**lastUpdatedDate** | [**DateTime**](DateTime.md) | The date the comment was last updated. | [optional] [default to null]
**parentCommentId** | **int** | The ID of the parent comment. This is used for replies. | [optional] [default to null]
**publishedDate** | [**DateTime**](DateTime.md) | The date the comment was first published. | [optional] [default to null]
**usersLiked** | [**List&lt;IdentityRef&gt;**](IdentityRef.md) | A list of the users who have liked this comment. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


