# azure_devops_sdk.model.StreamedBatch

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**continuationToken** | **String** | ContinuationToken acts as a waterMark. Used while querying large results. | [optional] [default to null]
**isLastBatch** | **bool** | Returns &#39;true&#39; if it&#39;s last batch, &#39;false&#39; otherwise. | [optional] [default to null]
**nextLink** | **String** | The next link for the work item. | [optional] [default to null]
**values** | **List&lt;String&gt;** | Values such as rel, sourceId, TargetId, ChangedDate, isActive. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


