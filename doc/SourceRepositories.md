# azure_devops_sdk.model.SourceRepositories

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**continuationToken** | **String** | A token used to continue this paged request; &#39;null&#39; if the request is complete | [optional] [default to null]
**pageLength** | **int** | The number of repositories requested for each page | [optional] [default to null]
**repositories** | [**List&lt;SourceRepository&gt;**](SourceRepository.md) | A list of repositories | [optional] [default to []]
**totalPageCount** | **int** | The total number of pages, or &#39;-1&#39; if unknown | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


