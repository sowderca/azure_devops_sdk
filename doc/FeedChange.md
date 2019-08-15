# azure_devops_sdk.model.FeedChange

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**changeType** | **String** | The type of operation. | [optional] [default to null]
**feed** | [**Feed**](Feed.md) |  | [optional] [default to null]
**feedContinuationToken** | **int** | A token that identifies the next change in the log of changes. | [optional] [default to null]
**latestPackageContinuationToken** | **int** | A token that identifies the latest package change for this feed.  This can be used to quickly determine if there have been any changes to packages in a specific feed. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


