# azure_devops_sdk.model.AuditLogQueryResult

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**continuationToken** | **String** | The continuation token to pass to get the next set of results | [optional] [default to null]
**decoratedAuditLogEntries** | [**List&lt;DecoratedAuditLogEntry&gt;**](DecoratedAuditLogEntry.md) | The list of audit log entries | [optional] [default to []]
**hasMore** | **bool** | True when there are more matching results to be fetched, false otherwise. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


