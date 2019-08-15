# azure_devops_sdk.model.QueryBatchGetRequest

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**$expand** | **String** | The expand parameters for queries. Possible options are { None, Wiql, Clauses, All, Minimal } | [optional] [default to null]
**errorPolicy** | **String** | The flag to control error policy in a query batch request. Possible options are { Fail, Omit }. | [optional] [default to null]
**ids** | **List&lt;String&gt;** | The requested query ids | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


