# azure_devops_sdk.model.CommentTrackingCriteria

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**firstComparingIteration** | **int** | The iteration of the file on the left side of the diff that the thread will be tracked to. Threads were tracked if this is greater than 0. | [optional] [default to null]
**origFilePath** | **String** | Original filepath the thread was created on before tracking. This will be different than the current thread filepath if the file in question was renamed in a later iteration. | [optional] [default to null]
**origLeftFileEnd** | [**CommentPosition**](CommentPosition.md) |  | [optional] [default to null]
**origLeftFileStart** | [**CommentPosition**](CommentPosition.md) |  | [optional] [default to null]
**origRightFileEnd** | [**CommentPosition**](CommentPosition.md) |  | [optional] [default to null]
**origRightFileStart** | [**CommentPosition**](CommentPosition.md) |  | [optional] [default to null]
**secondComparingIteration** | **int** | The iteration of the file on the right side of the diff that the thread will be tracked to. Threads were tracked if this is greater than 0. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


