# azure_devops_sdk.model.CommentIterationContext

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**firstComparingIteration** | **int** | The iteration of the file on the left side of the diff when the thread was created. If this value is equal to SecondComparingIteration, then this version is the common commit between the source and target branches of the pull request. | [optional] [default to null]
**secondComparingIteration** | **int** | The iteration of the file on the right side of the diff when the thread was created. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


