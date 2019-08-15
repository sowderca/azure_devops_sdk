# azure_devops_sdk.model.WidgetMetadata

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allowedSizes** | [**List&lt;WidgetSize&gt;**](WidgetSize.md) | Sizes supported by the Widget. | [optional] [default to []]
**analyticsServiceRequired** | **bool** | Opt-in boolean that indicates if the widget requires the Analytics Service to function. Widgets requiring the analytics service are hidden from the catalog if the Analytics Service is not available. | [optional] [default to null]
**catalogIconUrl** | **String** | Resource for an icon in the widget catalog. | [optional] [default to null]
**catalogInfoUrl** | **String** | Opt-in URL string pointing at widget information. Defaults to extension marketplace URL if omitted | [optional] [default to null]
**configurationContributionId** | **String** | The id of the underlying contribution defining the supplied Widget custom configuration UI. Null if custom configuration UI is not available. | [optional] [default to null]
**configurationContributionRelativeId** | **String** | The relative id of the underlying contribution defining the supplied Widget custom configuration UI. Null if custom configuration UI is not available. | [optional] [default to null]
**configurationRequired** | **bool** | Indicates if the widget requires configuration before being added to dashboard. | [optional] [default to null]
**contentUri** | **String** | Uri for the widget content to be loaded from . | [optional] [default to null]
**contributionId** | **String** | The id of the underlying contribution defining the supplied Widget. | [optional] [default to null]
**defaultSettings** | **String** | Optional default settings to be copied into widget settings. | [optional] [default to null]
**description** | **String** | Summary information describing the widget. | [optional] [default to null]
**isEnabled** | **bool** | Widgets can be disabled by the app store.  We&#39;ll need to gracefully handle for: - persistence (Allow) - Requests (Tag as disabled, and provide context) | [optional] [default to null]
**isNameConfigurable** | **bool** | Opt-out boolean that indicates if the widget supports widget name/title configuration. Widgets ignoring the name should set it to false in the manifest. | [optional] [default to null]
**isVisibleFromCatalog** | **bool** | Opt-out boolean indicating if the widget is hidden from the catalog. Commonly, this is used to allow developers to disable creation of a deprecated widget. A widget must have a functional default state, or have a configuration experience, in order to be visible from the catalog. | [optional] [default to null]
**lightboxOptions** | [**LightboxOptions**](LightboxOptions.md) |  | [optional] [default to null]
**loadingImageUrl** | **String** | Resource for a loading placeholder image on dashboard | [optional] [default to null]
**name** | **String** | User facing name of the widget type. Each widget must use a unique value here. | [optional] [default to null]
**publisherName** | **String** | Publisher Name of this kind of widget. | [optional] [default to null]
**supportedScopes** | [**List&lt;Object&gt;**](Object.md) | Data contract required for the widget to function and to work in its container. | [optional] [default to []]
**targets** | **List&lt;String&gt;** | Contribution target IDs | [optional] [default to []]
**typeId** | **String** | Deprecated: locally unique developer-facing id of this kind of widget. ContributionId provides a globally unique identifier for widget types. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


