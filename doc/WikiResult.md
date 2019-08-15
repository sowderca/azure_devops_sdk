# azure_devops_sdk.model.WikiResult

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**collection** | [**Collection**](Collection.md) |  | [optional] [default to null]
**contentId** | **String** | ContentId of the result file. | [optional] [default to null]
**fileName** | **String** | Name of the result file. | [optional] [default to null]
**hits** | [**List&lt;WikiHit&gt;**](WikiHit.md) | Highlighted snippets of fields that match the search request. The list is sorted by relevance of the snippets. | [optional] [default to []]
**path** | **String** | Path at which result file is present. | [optional] [default to null]
**project** | [**ProjectReference**](ProjectReference.md) |  | [optional] [default to null]
**wiki** | [**Wiki**](Wiki.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


