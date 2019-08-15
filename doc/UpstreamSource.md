# azure_devops_sdk.model.UpstreamSource

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**deletedDate** | [**DateTime**](DateTime.md) | UTC date that this upstream was deleted. | [optional] [default to null]
**displayLocation** | **String** | Locator for connecting to the upstream source in a user friendly format, that may potentially change over time | [optional] [default to null]
**id** | **String** | Identity of the upstream source. | [optional] [default to null]
**internalUpstreamCollectionId** | **String** | For an internal upstream type, track the Azure DevOps organization that contains it. | [optional] [default to null]
**internalUpstreamFeedId** | **String** | For an internal upstream type, track the feed id being referenced. | [optional] [default to null]
**internalUpstreamViewId** | **String** | For an internal upstream type, track the view of the feed being referenced. | [optional] [default to null]
**location** | **String** | Consistent locator for connecting to the upstream source. | [optional] [default to null]
**name** | **String** | Display name. | [optional] [default to null]
**protocol** | **String** | Package type associated with the upstream source. | [optional] [default to null]
**upstreamSourceType** | **String** | Source type, such as Public or Internal. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


