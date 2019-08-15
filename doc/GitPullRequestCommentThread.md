# azure_devops_sdk.model.GitPullRequestCommentThread

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**ReferenceLinks**](ReferenceLinks.md) |  | [optional] [default to null]
**comments** | [**List&lt;Comment&gt;**](Comment.md) | A list of the comments. | [optional] [default to []]
**id** | **int** | The comment thread id. | [optional] [default to null]
**identities** | [**Map&lt;String, IdentityRef&gt;**](IdentityRef.md) | Set of identities related to this thread | [optional] [default to {}]
**isDeleted** | **bool** | Specify if the thread is deleted which happens when all comments are deleted. | [optional] [default to null]
**lastUpdatedDate** | [**DateTime**](DateTime.md) | The time this thread was last updated. | [optional] [default to null]
**properties** | [**PropertiesCollection**](PropertiesCollection.md) |  | [optional] [default to null]
**publishedDate** | [**DateTime**](DateTime.md) | The time this thread was published. | [optional] [default to null]
**status** | **String** | The status of the comment thread. | [optional] [default to null]
**threadContext** | [**CommentThreadContext**](CommentThreadContext.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


