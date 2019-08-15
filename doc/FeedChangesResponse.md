# azure_devops_sdk.model.FeedChangesResponse

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**ReferenceLinks**](ReferenceLinks.md) |  | [optional] [default to null]
**count** | **int** | The number of changes in this set. | [optional] [default to null]
**feedChanges** | [**List&lt;FeedChange&gt;**](FeedChange.md) | A container that encapsulates the state of the feed after a create, update, or delete. | [optional] [default to []]
**nextFeedContinuationToken** | **int** | When iterating through the log of changes this value indicates the value that should be used for the next continuation token. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


