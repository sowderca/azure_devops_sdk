# azure_devops_sdk.model.PagedGraphGroups

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**continuationToken** | **List&lt;String&gt;** | This will be non-null if there is another page of data. There will never be more than one continuation token returned by a request. | [optional] [default to []]
**graphGroups** | [**List&lt;GraphGroup&gt;**](GraphGroup.md) | The enumerable list of groups found within a page. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


