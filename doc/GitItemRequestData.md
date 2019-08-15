# azure_devops_sdk.model.GitItemRequestData

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**includeContentMetadata** | **bool** | Whether to include metadata for all items | [optional] [default to null]
**includeLinks** | **bool** | Whether to include the _links field on the shallow references | [optional] [default to null]
**itemDescriptors** | [**List&lt;GitItemDescriptor&gt;**](GitItemDescriptor.md) | Collection of items to fetch, including path, version, and recursion level | [optional] [default to []]
**latestProcessedChange** | **bool** | Whether to include shallow ref to commit that last changed each item | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


