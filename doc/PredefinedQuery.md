# azure_devops_sdk.model.PredefinedQuery

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hasMore** | **bool** | Whether or not the query returned the complete set of data or if the data was truncated. | [optional] [default to null]
**id** | **String** | Id of the query | [optional] [default to null]
**name** | **String** | Localized name of the query | [optional] [default to null]
**results** | [**List&lt;WorkItem&gt;**](WorkItem.md) | The results of the query.  This will be a set of WorkItem objects with only the &#39;id&#39; set.  The client is responsible for paging in the data as needed. | [optional] [default to []]
**url** | **String** | REST API Url to use to retrieve results for this query | [optional] [default to null]
**webUrl** | **String** | Url to use to display a page in the browser with the results of this query | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


