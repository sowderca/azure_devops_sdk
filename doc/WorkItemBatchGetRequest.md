# azure_devops_sdk.model.WorkItemBatchGetRequest

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**$expand** | **String** | The expand parameters for work item attributes. Possible options are { None, Relations, Fields, Links, All } | [optional] [default to null]
**asOf** | [**DateTime**](DateTime.md) | AsOf UTC date time string | [optional] [default to null]
**errorPolicy** | **String** | The flag to control error policy in a bulk get work items request. Possible options are {Fail, Omit}. | [optional] [default to null]
**fields** | **List&lt;String&gt;** | The requested fields | [optional] [default to []]
**ids** | **List&lt;int&gt;** | The requested work item ids | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


