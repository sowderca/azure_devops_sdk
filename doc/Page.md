# azure_devops_sdk.model.Page

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contribution** | [**WitContribution**](WitContribution.md) |  | [optional] [default to null]
**id** | **String** | The id for the layout node. | [optional] [default to null]
**inherited** | **bool** | A value indicating whether this layout node has been inherited from a parent layout.  This is expected to only be only set by the combiner. | [optional] [default to null]
**isContribution** | **bool** | A value indicating if the layout node is contribution are not. | [optional] [default to null]
**label** | **String** | The label for the page. | [optional] [default to null]
**locked** | **bool** | A value indicating whether any user operations are permitted on this page and the contents of this page | [optional] [default to null]
**order** | **int** | Order in which the page should appear in the layout. | [optional] [default to null]
**overridden** | **bool** | A value indicating whether this layout node has been overridden by a child layout. | [optional] [default to null]
**pageType** | **String** | The icon for the page. | [optional] [default to null]
**sections** | [**List&lt;Section&gt;**](Section.md) | The sections of the page. | [optional] [default to []]
**visible** | **bool** | A value indicating if the page should be hidden or not. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


