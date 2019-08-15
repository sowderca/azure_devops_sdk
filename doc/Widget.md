# azure_devops_sdk.model.Widget

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**ReferenceLinks**](ReferenceLinks.md) |  | [optional] [default to null]
**allowedSizes** | [**List&lt;WidgetSize&gt;**](WidgetSize.md) | Refers to the allowed sizes for the widget. This gets populated when user wants to configure the widget | [optional] [default to []]
**areSettingsBlockedForUser** | **bool** | Read-Only Property from Dashboard Service. Indicates if settings are blocked for the current user. | [optional] [default to null]
**artifactId** | **String** | Refers to unique identifier of a feature artifact. Used for pinning+unpinning a specific artifact. | [optional] [default to null]
**configurationContributionId** | **String** |  | [optional] [default to null]
**configurationContributionRelativeId** | **String** |  | [optional] [default to null]
**contentUri** | **String** |  | [optional] [default to null]
**contributionId** | **String** | The id of the underlying contribution defining the supplied Widget Configuration. | [optional] [default to null]
**dashboard** | [**Dashboard**](Dashboard.md) |  | [optional] [default to null]
**eTag** | **String** |  | [optional] [default to null]
**id** | **String** |  | [optional] [default to null]
**isEnabled** | **bool** |  | [optional] [default to null]
**isNameConfigurable** | **bool** |  | [optional] [default to null]
**lightboxOptions** | [**LightboxOptions**](LightboxOptions.md) |  | [optional] [default to null]
**loadingImageUrl** | **String** |  | [optional] [default to null]
**name** | **String** |  | [optional] [default to null]
**position** | [**WidgetPosition**](WidgetPosition.md) |  | [optional] [default to null]
**settings** | **String** |  | [optional] [default to null]
**settingsVersion** | [**SemanticVersion**](SemanticVersion.md) |  | [optional] [default to null]
**size** | [**WidgetSize**](WidgetSize.md) |  | [optional] [default to null]
**typeId** | **String** |  | [optional] [default to null]
**url** | **String** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


