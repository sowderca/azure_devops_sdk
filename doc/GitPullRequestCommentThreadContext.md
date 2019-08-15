# azure_devops_sdk.model.GitPullRequestCommentThreadContext

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**changeTrackingId** | **int** | Used to track a comment across iterations. This value can be found by looking at the iteration&#39;s changes list. Must be set for pull requests with iteration support. Otherwise, it&#39;s not required for &#39;legacy&#39; pull requests. | [optional] [default to null]
**iterationContext** | [**CommentIterationContext**](CommentIterationContext.md) |  | [optional] [default to null]
**trackingCriteria** | [**CommentTrackingCriteria**](CommentTrackingCriteria.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


